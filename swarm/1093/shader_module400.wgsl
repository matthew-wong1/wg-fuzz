struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21>;

var<private> global1: u32 = 4294967295u;

var<private> global2: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_1) -> vec2<i32> {
    global0 = array<vec3<bool>, 21>();
    let var_0 = Struct_2(firstTrailingBit(arg_3.c), Struct_1(vec2<i32>((49659i << (arg_0 % 32u)) >> (arg_3.c.x % 32u), u_input.a), true, select(_wgslsmith_sub_vec4_u32(arg_3.c >> (arg_3.c % vec4<u32>(32u)), arg_3.c), arg_3.c, select(select(vec4<bool>(true, true, arg_3.b, arg_3.d.x), vec4<bool>(false, arg_3.b, arg_3.d.x, false), true), vec4<bool>(arg_3.d.x, arg_3.d.x, arg_3.b, false), true)), !select(!vec2<bool>(arg_3.b, arg_3.b), select(arg_3.d, vec2<bool>(false, true), vec2<bool>(arg_3.b, arg_3.b)), arg_2 <= arg_2)), any(global0[_wgslsmith_index_u32(select(arg_0 >> (~arg_0 % 32u), (arg_0 ^ arg_3.c.x) & 22010u, true), 21u)]), ~(-arg_3.a >> (min(countOneBits(arg_1.zy), vec2<u32>(4294967295u, arg_0)) % vec2<u32>(32u))), select(abs(select(arg_1.x, abs(4294967295u), select(false, arg_3.d.x, false))), arg_0, arg_3.d.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-962f, 178f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) + vec2<f32>(arg_2, -1511f)), _wgslsmith_div_vec2_f32(vec2<f32>(-328f, arg_2), vec2<f32>(arg_2, -988f))))));
    var var_2 = var_0.b;
    var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1179f + arg_2), -926f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(454f, 700f))))))));
    return vec2<i32>(58190i, i32(-1i) * -1i) << (~(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.e, var_0.b.c.x), vec2<u32>(arg_1.x, var_0.b.c.x)) << (firstTrailingBit(arg_1.yx) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_1(-func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(20384u, 29655u, 25860u), vec3<u32>(77504u, 0u, 0u)) >> (~72755u % 32u), vec3<u32>(1u, 1u, 1u), -580f, Struct_1(firstLeadingBit(vec2<i32>(19013i, 18564i)), true, vec4<u32>(61348u, 16222u, 4294967295u, 28512u), vec2<bool>(false, true))), any(vec2<bool>(true, true)) & !any(vec4<bool>(true, true, false, true)), ~(~vec4<u32>(1u, 1u, 1u, 1u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 11658u, 0u), vec4<u32>(49668u, 10081u, 1u, 0u), ~vec4<u32>(1u, 0u, 48813u, 39842u)) % vec4<u32>(32u))), !vec2<bool>(!all(vec4<bool>(true, false, false, true)), true));
    let var_1 = Struct_1(var_0.a, true, _wgslsmith_add_vec4_u32((var_0.c & (vec4<u32>(15840u, var_0.c.x, 0u, var_0.c.x) & vec4<u32>(var_0.c.x, var_0.c.x, 30266u, var_0.c.x))) >> (_wgslsmith_sub_vec4_u32(var_0.c, _wgslsmith_mod_vec4_u32(var_0.c, var_0.c)) % vec4<u32>(32u)), reverseBits(~vec4<u32>(5375u, 52480u, 12963u, 0u))), var_0.d);
    var_0 = Struct_1(_wgslsmith_sub_vec2_i32(func_3(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_0.c.xzw, var_1.c.yyz), _wgslsmith_mod_vec3_u32(var_1.c.zxw, var_0.c.wyy)), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.c.zyz, var_1.c.wzx), vec3<u32>(var_1.c.x, var_1.c.x, 33298u)), _wgslsmith_div_f32(-408f, _wgslsmith_f_op_f32(270f + -859f)), var_1), vec2<i32>(_wgslsmith_div_i32(2385i, ~(-38680i)), _wgslsmith_mod_i32(var_0.a.x, var_0.a.x) << (abs(24207u) % 32u))), var_1.d.x, ~(~var_1.c), select(vec2<bool>(var_1.d.x, any(!vec2<bool>(var_1.b, true))), !select(select(vec2<bool>(true, var_0.b), vec2<bool>(var_1.d.x, true), var_0.d), !vec2<bool>(true, var_0.b), false), !all(!vec4<bool>(false, false, var_1.b, false))));
    global0 = array<vec3<bool>, 21>();
    var var_2 = vec4<u32>(0u, ~reverseBits(_wgslsmith_div_u32(~7811u, 4294967295u)), _wgslsmith_add_u32(_wgslsmith_div_u32(var_0.c.x, var_0.c.x), firstLeadingBit(~39493u ^ var_1.c.x)), 2706u);
    return Struct_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~var_0.c.x, ~var_2.x, _wgslsmith_dot_vec3_u32(var_0.c.yzy, vec3<u32>(var_1.c.x, var_2.x, var_2.x)), 27594u), (var_0.c << (vec4<u32>(var_2.x, var_0.c.x, var_1.c.x, var_0.c.x) % vec4<u32>(32u))) << (var_1.c % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(abs(var_1.c >> (var_1.c % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(min(var_1.c, var_1.c), _wgslsmith_add_vec4_u32(var_1.c, var_0.c))), vec4<u32>(~(var_1.c.x >> (49795u % 32u)), ~(var_0.c.x >> (var_0.c.x % 32u)), 23585u, 1u)), var_1, select(var_0.b, true, all(!vec4<bool>(var_0.d.x, false, false, var_0.d.x)) && var_0.b), var_1.a, 1u);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>) -> vec2<i32> {
    var var_0 = Struct_1(arg_1.d, !func_2(_wgslsmith_add_i32(u_input.a, _wgslsmith_sub_i32(arg_0, u_input.a))).c, arg_1.a, !vec2<bool>(any(select(arg_1.b.d, vec2<bool>(true, false), arg_1.c)), !(arg_1.e >= 1u)));
    let var_1 = arg_1.b.c.x;
    let var_2 = _wgslsmith_mod_u32(40709u, abs(var_1 >> (~var_1 % 32u)) ^ ~(~0u));
    var var_3 = arg_1.b;
    return _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.d.x, 0i), abs(~vec2<i32>(20594i, firstTrailingBit(u_input.a))));
}

fn func_5(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2070f))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -111f))), -107f))), 1f);
    var var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f) + _wgslsmith_f_op_f32(var_0.x - var_0.x)) - _wgslsmith_f_op_f32(-var_0.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + var_0.x)))));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * var_0.x))), var_0.x)), var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))) * 682f) + var_0.x));
    var var_3 = arg_0.d;
    var var_4 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a.x, -64022i, arg_0.a.x), vec3<i32>(u_input.a, 24738i, 16035i))), ~select(_wgslsmith_mult_vec3_i32(vec3<i32>(-28775i, arg_0.a.x, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), select(vec3<bool>(var_3.x, true, arg_0.d.x), global0[_wgslsmith_index_u32(0u, 21u)], arg_0.b))), abs((~vec3<i32>(0i, arg_0.a.x, arg_0.a.x) | vec3<i32>(1i, arg_0.a.x, u_input.a)) << (vec3<u32>(~arg_0.c.x, arg_0.c.x, 64304u) % vec3<u32>(32u))));
    return ~(~vec3<i32>(-17626i, max(-u_input.a, u_input.a), u_input.a));
}

fn func_1() -> u32 {
    var var_0 = func_5(Struct_1(func_4(-select(u_input.a, 10543i, true), func_2(-2147483647i), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(779f, -799f, 1493f)))), false, ~vec4<u32>(109371u, ~4294967295u, ~0u, ~8720u), !func_2(_wgslsmith_add_i32(-10445i, u_input.a)).b.d));
    global1 = ~1u;
    return ~(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, 64672u, 0u), vec3<u32>(1u, 4294967295u, 0u)), select(~vec3<u32>(0u, 1u, 39769u), vec3<u32>(1906u, 0u, 18843u), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), firstLeadingBit(countOneBits(vec3<u32>(0u, 1u, 1u))) ^ vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(9584u, 29478u, 4294967295u, 2490u), vec4<u32>(1u, 0u, 1u, 4294967295u)), ~72818u, 39953u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(20757u, 61055u, 0u, 1u), vec4<u32>(51650u, 26884u, 0u, 0u))) >> (_wgslsmith_mod_u32(func_1(), ~4294967295u) % 32u));
    let var_0 = !vec3<bool>(!any(vec4<bool>(true, true, false, false)), true, all(vec3<bool>(true, true, true)));
    global2 = 26873u;
    let var_1 = !func_2(u_input.a).b.d;
    global2 = _wgslsmith_add_u32(_wgslsmith_sub_u32(~1u, ~firstLeadingBit(4294967295u) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(14530u, 22799u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u)) % 32u)), 4294967295u);
    let var_2 = abs(~2998u);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-538f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(793f))))))) * -944f);
    let var_4 = _wgslsmith_f_op_f32(ceil(1550f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_2), _wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2197f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4, -494f)), _wgslsmith_f_op_f32(trunc(var_4))), vec3<u32>(1u, _wgslsmith_sub_u32(var_2, 1u), abs(var_2)) ^ select(vec3<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_2), vec3<u32>(1u, var_2, 14706u)), 1u), vec3<u32>(_wgslsmith_add_u32(1u, 21255u), 54360u, var_2), global0[_wgslsmith_index_u32(~var_2, 21u)]), func_2(~(-abs(u_input.a))).e);
}

