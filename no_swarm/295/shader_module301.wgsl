struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> f32 {
    global0 = array<vec2<bool>, 29>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-423f))))))));
    let var_1 = Struct_3(Struct_1(true, max(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(3647i, arg_0, -1i, arg_0), vec4<i32>(arg_0, 0i, 40865i, arg_0)), vec4<i32>(-51619i, -28047i, arg_0, arg_0) >> (vec4<u32>(60392u, 1u, u_input.a, 1u) % vec4<u32>(32u))), ~(~vec4<i32>(0i, arg_0, arg_0, 17379i))), vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), (arg_0 & 0i) <= arg_0)), Struct_2(Struct_1(false, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, -1i), vec3<i32>(arg_0, arg_0, arg_0)), arg_0, -24582i, arg_0), vec4<bool>(true, true, true, true)), Struct_1(true, _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, -2147483647i, 25223i, arg_0) & vec4<i32>(-37203i, 42573i, arg_0, arg_0), select(vec4<i32>(0i, -1i, arg_0, -1i), vec4<i32>(arg_0, 15042i, arg_0, arg_0), true)), vec4<bool>(arg_0 == arg_0, true, true, true)), Struct_1(true, ~reverseBits(vec4<i32>(arg_0, 0i, arg_0, arg_0)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, true))))), Struct_1(!(!all(global0[_wgslsmith_index_u32(4294967295u, 29u)])), vec4<i32>(_wgslsmith_sub_i32(~(-21090i), -25689i), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0, 0i), countOneBits(vec2<i32>(2147483647i, arg_0))), -21577i, -(~1i)), vec4<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)), u_input.a > (u_input.b.x ^ u_input.b.x), true)), ~(~(vec4<u32>(u_input.a, 66321u, u_input.b.x, 23646u) | vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.a))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 1u, 0u) & abs(vec4<u32>(7876u, 76843u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.b.x, 1u, 36221u)), vec3<f32>(_wgslsmith_f_op_f32(-654f * _wgslsmith_f_op_f32(2119f + -2447f)), 368f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1f)), 1006f))));
    let var_2 = -firstLeadingBit(_wgslsmith_sub_vec3_i32(~(~vec3<i32>(-1i, arg_0, var_1.b.c.b.x)), -(~var_1.b.b.b.zzy)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)) + _wgslsmith_f_op_f32(-1225f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(918f, -105f, var_1.c.c.x))))), _wgslsmith_div_f32(var_1.e.x, 602f));
    return _wgslsmith_f_op_f32(var_1.e.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(956f * _wgslsmith_f_op_f32(floor(1526f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.e.x)))));
}

fn func_4(arg_0: vec2<f32>) -> f32 {
    let var_0 = abs(~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), _wgslsmith_sub_u32(u_input.a, u_input.a), reverseBits(4294967295u), _wgslsmith_add_u32(u_input.a, u_input.a)) | vec4<u32>(4294967295u, 1u, ~u_input.a, firstLeadingBit(min(7790u, 1u))));
    let var_1 = 334f;
    let var_2 = _wgslsmith_f_op_f32(282f * 1254f);
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(-108f)));
    let var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1489f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(var_1, var_3.b)))))));
    return 1f;
}

fn func_2() -> vec4<i32> {
    let var_0 = _wgslsmith_dot_vec2_u32(max(u_input.b, ~vec2<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, 74852u), ~u_input.a)), ~vec2<u32>(~u_input.a, 44508u) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(51441u, u_input.b.x))) % vec2<u32>(32u)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1110f, -1000f)), _wgslsmith_f_op_f32(func_3(1i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<f32>(463f, 815f)))));
    global0 = array<vec2<bool>, 29>();
    var var_2 = vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -793i, _wgslsmith_add_i32(firstTrailingBit(1i), select(~(-24782i), 1i, true))), _wgslsmith_clamp_i32(1i, -(-2147483647i & select(56614i, -3297i, false)), -(~0i)), ~(-76595i), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-1i, 1626i, 18021i))));
    var var_3 = Struct_1(false, vec4<i32>(var_2.x, -12792i, countOneBits(-(var_2.x & var_2.x)), 21867i ^ var_2.x), vec4<bool>(!(!(var_2.x <= var_2.x)), true, true, !(!any(vec2<bool>(true, true)))));
    return _wgslsmith_clamp_vec4_i32(~(-(var_3.b ^ var_3.b)), vec4<i32>(-var_3.b.x, 0i, ~var_3.b.x, var_3.b.x << (var_0 % 32u)), _wgslsmith_div_vec4_i32(var_3.b, -vec4<i32>(var_3.b.x, var_2.x, 0i, -16463i)) ^ var_3.b) >> (_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(abs(min(vec4<u32>(u_input.b.x, 1u, 5659u, 1486u), vec4<u32>(u_input.b.x, 1u, 0u, 1u))), select(vec4<u32>(0u, 39053u, var_0, var_0), ~vec4<u32>(4294967295u, u_input.b.x, 24785u, 51000u), true)), countOneBits(countOneBits(~vec4<u32>(var_0, var_0, var_0, 12787u)))) % vec4<u32>(32u));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>) -> Struct_4 {
    global0 = array<vec2<bool>, 29>();
    global0 = array<vec2<bool>, 29>();
    var var_0 = Struct_1(arg_0.x >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -621f) + _wgslsmith_f_op_f32(195f + 324f))), _wgslsmith_mod_vec4_i32(func_2(), ~vec4<i32>(_wgslsmith_clamp_i32(1i, 0i, -1i), -1i, 84318i, select(2147483647i, 4137i, arg_1.x))), arg_1);
    let var_1 = vec2<u32>(0u, 4294967295u);
    let var_2 = vec3<bool>(false, var_0.c.x, arg_1.x);
    return Struct_4(arg_0.x, arg_0.x);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_4(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(func_1(vec4<f32>(arg_0.a, 285f, -800f, arg_3), arg_1.b.c).b, 436f, true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + -840f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(342f, arg_2.x))) * _wgslsmith_f_op_f32(-546f - _wgslsmith_f_op_f32(exp2(arg_0.a))))));
    global0 = array<vec2<bool>, 29>();
    var_0 = func_1(vec4<f32>(arg_3, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - 1704f) - _wgslsmith_f_op_f32(1625f + 1140f)))), 1102f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b, 618f))))), select(arg_1.b.c, arg_1.c.c, arg_1.b.c.x));
    var_0 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1461f, -727f, arg_3, _wgslsmith_f_op_f32(f32(-1f) * -206f))), vec4<bool>(true, (u_input.a == ~0u) | false, false, !all(select(arg_1.c.c.zz, global0[_wgslsmith_index_u32(0u, 29u)], vec2<bool>(true, arg_1.a.c.x)))));
    let var_1 = arg_2.xz;
    return arg_1.b;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<vec2<bool>, 29>();
    var var_0 = 0i;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -345f))) * 505f), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-317f, -1048f))), vec2<f32>(-370f, 1151f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(284f, -1000f) - _wgslsmith_div_vec2_f32(vec2<f32>(-760f, 1030f), vec2<f32>(191f, 193f)))))));
    var_1 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.a))))))));
    let var_2 = Struct_3(arg_0, Struct_2(arg_0, arg_0, arg_0), Struct_1(!((-4794i <= arg_0.b.x) & true), vec4<i32>(-min(-5890i, arg_0.b.x), 1514i, _wgslsmith_dot_vec4_i32(arg_0.b, _wgslsmith_add_vec4_i32(vec4<i32>(4470i, 21382i, arg_0.b.x, 2147483647i), vec4<i32>(arg_0.b.x, 3830i, -35166i, 0i))), _wgslsmith_mult_i32(abs(38884i), -arg_0.b.x)), arg_0.c), _wgslsmith_div_vec4_u32(~min(arg_2, _wgslsmith_mult_vec4_u32(arg_2, vec4<u32>(4294967295u, 58229u, 4294967295u, 44812u))), ~abs(arg_2)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(202f, _wgslsmith_f_op_f32(1040f - 900f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2394f - -283f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-406f, var_1.a))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-1159f, var_1.a)), _wgslsmith_div_f32(var_1.a, var_1.a), _wgslsmith_f_op_f32(var_1.b + 229f)))));
    return func_5(Struct_4(-246f, 1f), var_2.b, var_2.e, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1273f, -693f, -176f, 496f))), vec4<bool>(true, true, any(vec3<bool>(false, false, false)), true)), Struct_2(Struct_1(true, vec4<i32>(-27720i, -1i, -2147483647i, 1i), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false)), Struct_1(true, vec4<i32>(0i, 0i, -1i, 2147483647i), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true)), Struct_1(select(true, false, false), countOneBits(vec4<i32>(2147483647i, 1i, -80359i, 1i)), vec4<bool>(false, false, false, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1249f, -281f, -1619f), vec3<f32>(-1000f, 652f, 498f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-436f, -475f, 676f)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)))), _wgslsmith_f_op_f32(f32(-1f) * -463f)), reverseBits(u_input.b.x << (4294967295u % 32u)), abs(~(~select(vec4<u32>(30347u, 38363u, 4294967295u, 13300u), vec4<u32>(u_input.a, 44738u, 4294967295u, 32858u), true))));
    global0 = array<vec2<bool>, 29>();
    let var_1 = Struct_3(func_6(Struct_1(func_5(func_1(vec4<f32>(-1031f, 235f, -133f, 453f), var_0.c), Struct_2(var_0, var_0, var_0), vec3<f32>(1293f, 1000f, -449f), _wgslsmith_f_op_f32(f32(-1f) * -2107f)).c.x, -vec4<i32>(var_0.b.x, var_0.b.x, 0i, var_0.b.x), var_0.c), 92701u, vec4<u32>(27866u, u_input.a, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.a, u_input.a), vec4<u32>(0u, 29754u, u_input.b.x, u_input.b.x)))), Struct_2(func_5(Struct_4(_wgslsmith_f_op_f32(min(772f, -352f)), func_1(vec4<f32>(-688f, 1791f, -1092f, 403f), vec4<bool>(var_0.c.x, false, false, var_0.c.x)).b), Struct_2(var_0, func_6(var_0, 28823u, vec4<u32>(32640u, 27437u, 0u, 1337u)), Struct_1(true, var_0.b, vec4<bool>(var_0.c.x, var_0.a, var_0.a, true))), _wgslsmith_div_vec3_f32(vec3<f32>(-426f, 1000f, 2009f), _wgslsmith_div_vec3_f32(vec3<f32>(683f, 881f, 1706f), vec3<f32>(835f, -271f, 682f))), -989f), Struct_1(true, vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.b.xz, var_0.b.xz), 2147483647i, -1i, 0i & var_0.b.x), !select(var_0.c, var_0.c, false)), var_0), func_6(Struct_1(var_0.c.x, select(countOneBits(var_0.b), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_0.b.x, 2147483647i, 4275i), vec4<i32>(2147483647i, -2147483647i, var_0.b.x, var_0.b.x)), !vec4<bool>(var_0.c.x, var_0.a, var_0.c.x, var_0.a)), func_5(func_1(vec4<f32>(1013f, -187f, -1000f, 755f), var_0.c), Struct_2(var_0, Struct_1(true, var_0.b, vec4<bool>(var_0.c.x, false, var_0.c.x, true)), Struct_1(true, vec4<i32>(var_0.b.x, -11467i, -22631i, -2147483647i), var_0.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-521f, -714f, 189f)), -1000f).c), 0u, abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 12780u, u_input.a, 148674u), vec4<u32>(u_input.a, 4294967295u, 0u, 0u), vec4<u32>(9759u, 21525u, u_input.a, u_input.a))) | vec4<u32>(~u_input.b.x, u_input.a, _wgslsmith_sub_u32(u_input.b.x, u_input.a), 73231u)), ~(~(~vec4<u32>(u_input.b.x, u_input.a, u_input.a, 4294967295u)) | ~vec4<u32>(0u, u_input.b.x, 4294967295u, 1u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1626f), 215f, _wgslsmith_f_op_f32(abs(-1171f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -556f), _wgslsmith_f_op_f32(-923f + -1423f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1291f, -668f) - _wgslsmith_div_f32(-649f, -806f)), _wgslsmith_f_op_f32(f32(-1f) * -932f)), true)));
    var var_2 = vec4<bool>(select(true & select(true, false, true), _wgslsmith_f_op_f32(sign(1527f)) < func_1(vec4<f32>(979f, var_1.e.x, -337f, -472f), vec4<bool>(var_1.a.a, true, false, true)).a, all(var_0.c.wyy)) && !(var_1.b.a.a || true), true, false, all(var_0.c.xx));
    global0 = array<vec2<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.e.x, var_1.e.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.e.x + 253f), -522f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.x, var_1.e.x) * vec2<f32>(var_1.e.x, var_1.e.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.e.xz, var_1.e.yx)) - var_1.e.xy), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(var_1.b.c.a, var_0.a))))), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(0u), var_1.d.x, ~u_input.b.x, var_1.d.x), _wgslsmith_add_vec4_u32(var_1.d, vec4<u32>(u_input.b.x, var_1.d.x, 9986u, 0u))), u_input.b.x), ~vec3<u32>(_wgslsmith_div_u32(0u, 1u), ~(~var_1.d.x), ~_wgslsmith_mod_u32(u_input.a, 23876u)));
}

