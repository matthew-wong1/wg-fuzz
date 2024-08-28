struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: u32) -> i32 {
    let var_0 = 1u;
    global0 = array<f32, 25>();
    let var_1 = u_input.a.yz;
    var var_2 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))));
    var_2 = vec2<bool>(any(!select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, false, var_2.x, true), false)), var_2.x);
    return _wgslsmith_clamp_i32(arg_2.x, -6899i, countOneBits(-12377i));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_clamp_vec2_i32((vec2<i32>(u_input.b, abs(u_input.b)) << (firstTrailingBit(u_input.a.xw) % vec2<u32>(32u))) & ~reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(7758i, -2147483647i), vec2<i32>(-1i, u_input.b))), -vec2<i32>((11819i & u_input.b) & u_input.b, firstTrailingBit(i32(-1i) * -5768i)), vec2<i32>(u_input.b, func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.b), vec3<i32>(-2147483647i, 1i, u_input.b)), vec4<f32>(-179f, -3479f, 171f, 436f), vec4<i32>(28480i, u_input.b, u_input.b, -2147483647i) >> (vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.e) % vec4<u32>(32u)), ~0u) & -2147483647i));
    global0 = array<f32, 25>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(u_input.d, 25u)])))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)], -1000f) - vec3<f32>(880f, global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)])))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(12805u, 25u)] - global0[_wgslsmith_index_u32(u_input.d, 25u)]) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 25u)] * global0[_wgslsmith_index_u32(4294967295u, 25u)]))))), ~vec4<i32>(_wgslsmith_div_i32(var_0.x, u_input.b) >> (1u % 32u), var_0.x, 49522i, -firstLeadingBit(var_0.x)), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(45781u, 25u)], 342f, -1694f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)], 1644f), vec3<f32>(global0[_wgslsmith_index_u32(12870u, 25u)], -1058f, 458f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-778f, global0[_wgslsmith_index_u32(22465u, 25u)], global0[_wgslsmith_index_u32(60625u, 25u)])))))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(440f, 1514f, global0[_wgslsmith_index_u32(u_input.e, 25u)]))) - _wgslsmith_div_vec3_f32(vec3<f32>(-126f, 1000f, 800f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1258f, global0[_wgslsmith_index_u32(37458u, 25u)], -516f) * vec3<f32>(1000f, global0[_wgslsmith_index_u32(u_input.e, 25u)], 530f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 1056f, global0[_wgslsmith_index_u32(u_input.d, 25u)], var_1.e.a.x) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 142f, -242f, var_1.e.a.x)), vec4<f32>(var_1.a.x, -650f, -1405f, -1000f)))))))));
    global0 = array<f32, 25>();
    return -302f;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_4) -> vec2<f32> {
    global0 = array<f32, 25>();
    var var_0 = Struct_4(_wgslsmith_div_u32(17190u, _wgslsmith_add_u32(~arg_2.a, arg_2.a << (44886u % 32u))) >> (~firstLeadingBit(_wgslsmith_clamp_u32(arg_2.a, 36458u, 1u)) % 32u), arg_2.b);
    let var_1 = -1000f;
    var var_2 = arg_2;
    let var_3 = true;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_2.b.b * 274f)))), _wgslsmith_f_op_vec2_f32(arg_0.a.yy + var_0.b.e.a.xz)) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -213f))))), -1417f));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-1359f)), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(3872u, 25u)]))))));
    var_0 = vec2<f32>(global0[_wgslsmith_index_u32(arg_0.x | 7054u, 25u)], 567f);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(-var_0.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 713f) + vec2<f32>(446f, global0[_wgslsmith_index_u32(0u, 25u)])))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -340f) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(1u, 25u)], -1444f), vec2<f32>(1079f, global0[_wgslsmith_index_u32(81391u, 25u)])))))));
    var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 25u)], 255f, -1368f))))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-272f, global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(u_input.a.x, 25u)]))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 25u)] * global0[_wgslsmith_index_u32(0u, 25u)])), var_0.x, 263f, _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(9440u, 25u)], 779f, 445f, 1922f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 409f, 1051f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1313f, var_1.x, 172f, var_0.x))))))), Struct_4(arg_0.x, Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(297f, 764f, var_1.x)))), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_0.x, arg_0.x), 25u)], countOneBits(vec4<i32>(2147483647i, 1i, u_input.b, -9093i)) << (u_input.a % vec4<u32>(32u)), Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-372f, -1308f, var_0.x)))), Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 25u)], -498f, 1945f))))));
    return Struct_1(~_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, arg_1, arg_1), vec3<i32>(8124i, 0i, arg_1)), vec3<i32>(arg_1, -57692i, arg_1)), vec3<i32>(~arg_1, min(u_input.b, -62926i), ~u_input.b)), _wgslsmith_mult_vec4_u32(countOneBits(~max(vec4<u32>(1u, 4773u, u_input.c, 0u), arg_0)), vec4<u32>(62156u, _wgslsmith_dot_vec2_u32(arg_0.wz, arg_0.zy) & ~u_input.e, abs(~0u), ~(arg_0.x | arg_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0[_wgslsmith_index_u32(arg_0.x, 25u)])) * vec2<f32>(-2320f, var_0.x))) * _wgslsmith_f_op_vec2_f32(-var_1)));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    return !(!select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true))));
}

fn func_6(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = select(!(!select(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), vec3<bool>(true, true, arg_0.x), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), select(!(!(!vec3<bool>(arg_0.x, false, true))), !(!vec3<bool>(arg_0.x, true, arg_0.x)), all(vec2<bool>(arg_0.x, true))), vec3<bool>(arg_0.x, ~(~arg_2.x) != (countOneBits(u_input.d) | func_1(arg_1, 56444i, true).b.x), false));
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(arg_2.x, 25u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1335f)) + global0[_wgslsmith_index_u32(u_input.c, 25u)]) + -1115f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1206f, 892f))) * _wgslsmith_f_op_f32(step(-296f, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.x, 0u), 25u)])))), global0[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -1i, 1i, -57216i), vec4<i32>(11526i, -18189i, 1i, u_input.b)), countOneBits(vec4<i32>(18651i, u_input.b, 34523i, u_input.b)), select(vec4<bool>(var_0.x, arg_0.x, false, var_0.x), vec4<bool>(false, false, arg_0.x, var_0.x), vec4<bool>(arg_0.x, var_0.x, arg_0.x, true))), vec4<i32>(-1i) * -vec4<i32>(-30189i, 3709i, 2147483647i, u_input.b)), reverseBits(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b) >> (u_input.a % vec4<u32>(32u)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], 1111f, 667f)), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(25903u, 25u)], -139f, -185f), vec3<f32>(-1076f, -560f, global0[_wgslsmith_index_u32(arg_2.x, 25u)]))))), Struct_2(vec3<f32>(-205f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(36661u, 25u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 25u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.x, 25u)])))));
    var var_2 = Struct_4(33939u, Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.e, 25u)], 1212f)), 1490f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2263f, -666f)))), global0[_wgslsmith_index_u32(arg_1.x, 25u)], firstLeadingBit(firstLeadingBit(vec4<i32>(var_1.c.x, -21116i, u_input.b, -1i))), var_1.e, Struct_2(_wgslsmith_f_op_vec3_f32(exp2(var_1.d.a)))));
    let var_3 = abs(firstLeadingBit(_wgslsmith_sub_vec3_i32(var_1.c.xwx, vec3<i32>(u_input.b, 6922i, var_2.b.c.x)) >> (vec3<u32>(1u, 17512u, 79070u) % vec3<u32>(32u)))) ^ abs(vec3<i32>(-411i, -61983i, var_2.b.c.x));
    var_2 = Struct_4(_wgslsmith_sub_u32(~19274u, u_input.c), var_2.b);
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(select(vec2<bool>(any(vec3<bool>(true, true, true)), -2147483647i == u_input.b), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 25u)] >= -1402f), func_5(_wgslsmith_sub_u32(select(1u, 4294967295u, false), 0u), func_1(~vec4<u32>(u_input.a.x, 18933u, u_input.d, u_input.a.x), -21548i, true))), _wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.c, ~u_input.e, u_input.e ^ u_input.c, u_input.a.x), u_input.a), u_input.a), ~(select(u_input.a.yx, u_input.a.yz, true) | vec2<u32>(~u_input.d, reverseBits(55749u))));
    var var_1 = _wgslsmith_div_u32(u_input.a.x, u_input.a.x);
    var var_2 = Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, 36208i, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -41333i, 11043i), vec3<i32>(12148i, u_input.b, -2147483647i))), vec3<i32>(firstLeadingBit(1i), firstTrailingBit(u_input.b), u_input.b)), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 16060i, -17621i), vec3<i32>(32358i, u_input.b, -11413i) & vec3<i32>(u_input.b, u_input.b, 0i))), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-731f, global0[_wgslsmith_index_u32(u_input.d, 25u)])), var_0.a.yy)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(122f, var_0.a.x) + var_0.a.yx))));
    var var_3 = Struct_1(~(vec3<i32>(u_input.b | -25898i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_2.a.x, u_input.b), vec3<i32>(-2147483647i, u_input.b, var_2.a.x)), var_2.a.x) & vec3<i32>(-u_input.b, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, var_2.a.x), u_input.b | -1i)), u_input.a, var_2.c);
    let var_4 = !all(!vec3<bool>(true, true, all(vec3<bool>(false, false, false))));
    let var_5 = func_1(_wgslsmith_clamp_vec4_u32(var_2.b, firstTrailingBit(vec4<u32>(reverseBits(var_3.b.x), ~0u, var_3.b.x & 1u, ~4294967295u)), var_3.b), var_3.a.x, false);
    global0 = array<f32, 25>();
    var var_6 = ~(~u_input.a.x);
    var_3 = Struct_1(var_2.a, var_2.b, _wgslsmith_f_op_vec2_f32(-var_3.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x, 19895u);
}

