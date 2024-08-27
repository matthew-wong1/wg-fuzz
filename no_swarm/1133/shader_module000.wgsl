struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: vec3<i32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, ~u_input.a.x), 6u)]));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0))), min(select(vec4<u32>(1u, 65463u, 9425u, 2746u), firstTrailingBit(vec4<u32>(1u, u_input.a.x, 83953u, u_input.a.x)), vec4<bool>(arg_0.x, true, arg_0.x, true)), vec4<u32>(0u, firstLeadingBit(u_input.a.x), u_input.a.x, 4294967295u)), vec2<bool>(true, !arg_0.x), Struct_1(arg_0.x, vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(min(-1000f, var_0)), -237f, arg_2), arg_3.x << (u_input.a.x % 32u), 17375i, 2147483647i)));
    var var_2 = ~u_input.a.x;
    global0 = array<f32, 6>();
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.a.d.b), var_1.a.d.b, false | arg_0.x))), _wgslsmith_f_op_vec4_f32(round(var_1.a.d.b)), vec4<bool>(false || var_1.a.d.a, false, var_1.a.d.a, !arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-678f * 443f)), var_1.a.d.b.x))));
    return select(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x ^ u_input.a.x, 37344u), ~select(u_input.a, var_1.a.b.zy, true)), 46219u), _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(~4294967295u, _wgslsmith_mod_u32(var_1.a.b.x, _wgslsmith_add_u32(var_1.a.b.x, var_1.a.b.x))), u_input.a), !(!vec2<bool>(!var_1.a.c.x, any(vec4<bool>(true, var_1.a.c.x, arg_0.x, arg_0.x)))));
}

fn func_4(arg_0: vec2<u32>) -> vec4<u32> {
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    return _wgslsmith_div_vec4_u32(~(~(~(~vec4<u32>(18121u, arg_0.x, 0u, 4294967295u)))), _wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(u_input.a.x, u_input.a.x, 32540u, 862u)), ~(~vec4<u32>(u_input.a.x, 70036u, 45300u, u_input.a.x)) & vec4<u32>(33084u >> (1u % 32u), 7109u, u_input.a.x ^ arg_0.x, firstLeadingBit(u_input.a.x))));
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1548f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(17321u, 6u)])) + 953f))) - global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(u_input.a.x, firstLeadingBit(u_input.a.x), all(vec2<bool>(true, true))), u_input.a.x), 6u)]), global0[_wgslsmith_index_u32(~1u, 6u)]));
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_1 = firstTrailingBit(abs(max(abs(reverseBits(vec3<i32>(0i, -2147483647i, 32312i))), ~(-vec3<i32>(-2147483647i, -2147483647i, 233i)))));
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a.x), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, 27680u), vec2<u32>(4294967295u, u_input.a.x), u_input.a));
    return func_4(func_3(vec2<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true))), -(~(var_1.x & var_1.x)), _wgslsmith_f_op_f32(-300f * _wgslsmith_f_op_f32(var_0 + global0[_wgslsmith_index_u32(~49246u, 6u)])), _wgslsmith_mult_vec3_i32(~vec3<i32>(var_1.x, -20160i, 0i), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, 6458i, var_1.x), var_1)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global0 = array<f32, 6>();
    let var_0 = ~_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-17722i, 2147483647i, arg_2.d), vec3<i32>(arg_2.d, -2147483647i, -29902i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -15994i, -34464i), vec3<i32>(-25548i, arg_2.e, arg_2.d), vec3<i32>(4883i, -1077i, arg_2.e))), vec3<i32>(arg_2.c ^ arg_2.d, ~arg_2.d, -arg_2.e)) >> (~arg_0.wyw % vec3<u32>(32u));
    global0 = array<f32, 6>();
    var var_1 = select(!vec2<bool>(true, arg_2.a), !(!select(select(vec2<bool>(true, false), vec2<bool>(arg_2.a, false), vec2<bool>(arg_2.a, arg_2.a)), !vec2<bool>(true, arg_2.a), vec2<bool>(arg_2.a, arg_2.a))), !vec2<bool>(true, 0i >= _wgslsmith_sub_i32(0i, arg_2.c)));
    let var_2 = Struct_1(false, vec4<f32>(arg_1.x, arg_2.b.x, _wgslsmith_f_op_f32(arg_2.b.x - -1000f), _wgslsmith_div_f32(arg_1.x, -1328f)), _wgslsmith_clamp_i32(39874i, arg_2.c, var_0.x), ~(~(-_wgslsmith_clamp_i32(arg_2.c, -2147483647i, -1i))), _wgslsmith_add_i32(-arg_2.c, _wgslsmith_clamp_i32(arg_2.c, 0i, arg_2.d) << (u_input.a.x % 32u)) & _wgslsmith_mult_i32(var_0.x, (arg_2.d << (u_input.a.x % 32u)) & (arg_2.e | -2147483647i)));
    return Struct_1(true, vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -122f))), _wgslsmith_f_op_f32(-1349f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(696f, global0[_wgslsmith_index_u32(u_input.a.x, 6u)]) * _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(max(arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x)))))), max(var_2.c, ~(-arg_2.e)), var_0.x, 1i);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(140f - global0[_wgslsmith_index_u32(u_input.a.x, 6u)])) + -913f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(61775u, 6u)])) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1700f, arg_0.b.x, arg_0.a)), -2610f))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(25707u >> (_wgslsmith_mult_u32(u_input.a.x, 26457u) % 32u)), 6u)]), _wgslsmith_f_op_f32(-453f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-255f))))));
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    return func_5(func_2(), vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), global0[_wgslsmith_index_u32(u_input.a.x, 6u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 6u)])), Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(739f, var_0.x, -516f, arg_0.b.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1383f, -433f, -578f, 733f), arg_0.b, vec4<bool>(false, false, true, false))))), arg_0.e, 2147483647i, -8060i));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: bool) -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec4_u32(~firstLeadingBit(max(vec4<u32>(63191u, 28930u, 4294967295u, u_input.a.x), vec4<u32>(0u, u_input.a.x, 4294967295u, 69140u)) >> (select(vec4<u32>(1u, u_input.a.x, 43493u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(arg_0.a, arg_1.x, arg_1.x, true)) % vec4<u32>(32u))), vec4<u32>((u_input.a.x & (u_input.a.x | u_input.a.x)) ^ (35060u & u_input.a.x), u_input.a.x, ~abs(countOneBits(3975u)), firstLeadingBit(1u)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -120f);
    let var_2 = arg_0.a;
    let var_3 = ~25969u;
    var var_4 = vec3<i32>(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-18637i, arg_2.x, 1i), -vec3<i32>(arg_2.x, 0i, arg_2.x))), -_wgslsmith_mod_i32(arg_0.c, select(-2147483647i, ~arg_0.e, var_3 > 0u)), ~(~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(arg_2.x, 1i, 0i)), vec3<i32>(arg_0.e, -56709i, arg_0.c))));
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -2056f), vec4<u32>(u_input.a.x, 39117u, firstLeadingBit(var_0.x), u_input.a.x), select(!(!arg_1.yx), !arg_1.yz, arg_1.yz), func_5(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(2426u, 46145u, var_0.x, 17459u), vec4<u32>(23890u, 0u, 54912u, var_3), vec4<u32>(u_input.a.x, var_0.x, var_0.x, 0u)), vec4<u32>(0u, 0u, var_3, var_3) & vec4<u32>(u_input.a.x, var_0.x, var_3, var_3)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-760f, arg_0.b.x, 2340f)))), func_5(vec4<u32>(4294967295u, var_0.x, u_input.a.x, var_3), vec3<f32>(arg_0.b.x, -1000f, -275f), func_5(vec4<u32>(var_3, 23902u, 4294967295u, 0u), vec3<f32>(-666f, 245f, 1000f), arg_0)))));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    global0 = array<f32, 6>();
    let var_0 = arg_1.a;
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(ceil(func_6(func_5(vec4<u32>(212u, 4294967295u, u_input.a.x, 37147u), arg_2.a.d.b.zzz, arg_0.a.d), vec3<bool>(false, arg_0.a.c.x, true), vec2<i32>(-24302i, arg_0.a.d.c), all(vec3<bool>(false, arg_2.a.d.a, arg_0.a.c.x))).a.a)), ~func_6(arg_2.a.d, select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec2<i32>(-3738i, arg_1.e), -2751f != arg_3).a.b, !arg_2.a.c, arg_2.a.d));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1328f + -140f)))));
    var_1 = arg_2;
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + -394f) + -1843f) - arg_0.a.d.b.x) + arg_0.a.a), ~func_4(var_1.a.b.yy | _wgslsmith_mod_vec2_u32(u_input.a, var_1.a.b.zx)), func_6(Struct_1(var_0 != true, vec4<f32>(_wgslsmith_f_op_f32(step(-1059f, arg_3)), -564f, _wgslsmith_f_op_f32(round(arg_1.b.x)), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(24624u, 6u)]))), arg_1.e, -_wgslsmith_sub_i32(-9662i, -4170i), -18798i), !vec3<bool>(func_5(arg_2.a.b, vec3<f32>(arg_3, arg_2.a.d.b.x, arg_2.a.d.b.x), Struct_1(false, var_1.a.d.b, 2147483647i, 1i, var_1.a.d.c)).a, true, all(vec2<bool>(var_0, true))), reverseBits(vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-18967i, arg_1.c, arg_0.a.d.e), vec3<i32>(arg_1.e, -13695i, var_1.a.d.d)))), true).a.c, Struct_1(any(func_6(func_1(var_1.a.d), select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(false, var_0, false), vec3<bool>(true, arg_2.a.d.a, false)), -vec2<i32>(var_1.a.d.d, 55697i), !var_1.a.c.x).a.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -569f), _wgslsmith_f_op_f32(-arg_0.a.a), arg_3, _wgslsmith_f_op_f32(var_1.a.a - arg_3)) - vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 6u)]), arg_1.b.x, 853f, 1237f)), arg_0.a.d.e, 2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_2.a.d.c, arg_1.c, 6496i), vec3<i32>(-1i) * -vec3<i32>(arg_2.a.d.c, -13312i, -13663i))));
}

fn func_8(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<i32>) -> StorageBuffer {
    let var_0 = arg_1.x;
    let var_1 = ~firstTrailingBit(arg_0.b.x);
    global0 = array<f32, 6>();
    let var_2 = Struct_1(!arg_0.d.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(173f - arg_1.x)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.b.x & 2773u, ~25021u), 6u)], var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1641f))))), ~arg_2.x, 21773i, i32(-1i) * -8182i);
    let var_3 = arg_0;
    return StorageBuffer(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a.x ^ _wgslsmith_sub_u32(1u, var_1), 4294967295u), 6u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-10225i, -1i, 0i);
    var var_1 = 4294967295u;
    var var_2 = true;
    let x = u_input.a;
    s_output = func_8(func_7(func_6(func_1(Struct_1(false, vec4<f32>(384f, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], -1535f, -1000f), var_0.x, -2147483647i, -31501i)), vec3<bool>(true, true, true), reverseBits(vec2<i32>(-2147483647i, var_0.x)), func_5(~vec4<u32>(4294967295u, u_input.a.x, 0u, 34129u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 6u)], -705f, -959f)), func_5(vec4<u32>(1811u, u_input.a.x, 15980u, u_input.a.x), vec3<f32>(151f, 619f, 280f), Struct_1(true, vec4<f32>(-386f, global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(75154u, 6u)], -1000f), var_0.x, 0i, 86175i))).a), Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(-803f - global0[_wgslsmith_index_u32(1127u, 6u)]), _wgslsmith_f_op_f32(f32(-1f) * -130f), global0[_wgslsmith_index_u32(u_input.a.x, 6u)], 1278f), ~(-var_0.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.x, var_0.x), ~var_0.x), ~abs(-1i)), Struct_3(Struct_2(-1812f, max(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u)), vec2<bool>(false, false), Struct_1(true, vec4<f32>(global0[_wgslsmith_index_u32(13968u, 6u)], -942f, 1678f, -2007f), var_0.x, -2147483647i, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-821f, 733f))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 6u)] * global0[_wgslsmith_index_u32(u_input.a.x, 6u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(8094u, 6u)])), _wgslsmith_f_op_f32(f32(-1f) * -1602f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 6u)]))), _wgslsmith_div_vec4_f32(vec4<f32>(func_7(Struct_3(Struct_2(global0[_wgslsmith_index_u32(10107u, 6u)], vec4<u32>(1u, 19152u, 1u, u_input.a.x), vec2<bool>(false, true), Struct_1(false, vec4<f32>(104f, global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)], -1529f), var_0.x, var_0.x, var_0.x))), Struct_1(true, vec4<f32>(926f, global0[_wgslsmith_index_u32(46498u, 6u)], -308f, global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), var_0.x, var_0.x, var_0.x), Struct_3(Struct_2(646f, vec4<u32>(80884u, 0u, 81441u, 7545u), vec2<bool>(true, false), Struct_1(true, vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], 177f, 192f), var_0.x, -6797i, 24626i))), global0[_wgslsmith_index_u32(0u, 6u)]).a, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(29451u, 6u)] - global0[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(10922u, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), -765f), vec4<f32>(func_7(Struct_3(Struct_2(1723f, vec4<u32>(u_input.a.x, 0u, 0u, 65989u), vec2<bool>(false, false), Struct_1(false, vec4<f32>(2275f, -1659f, -542f, global0[_wgslsmith_index_u32(1u, 6u)]), -1i, 1i, var_0.x))), Struct_1(true, vec4<f32>(global0[_wgslsmith_index_u32(3670u, 6u)], -1590f, -254f, global0[_wgslsmith_index_u32(1u, 6u)]), -2147483647i, 2147483647i, var_0.x), Struct_3(Struct_2(global0[_wgslsmith_index_u32(0u, 6u)], vec4<u32>(0u, u_input.a.x, 43673u, u_input.a.x), vec2<bool>(true, false), Struct_1(true, vec4<f32>(global0[_wgslsmith_index_u32(12471u, 6u)], 205f, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], -643f), var_0.x, var_0.x, -17889i))), global0[_wgslsmith_index_u32(13951u, 6u)]).d.b.x, func_7(Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec2<bool>(true, true), Struct_1(false, vec4<f32>(925f, -1555f, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)]), 34440i, var_0.x, var_0.x))), Struct_1(false, vec4<f32>(global0[_wgslsmith_index_u32(40967u, 6u)], -219f, global0[_wgslsmith_index_u32(4294967295u, 6u)], -1000f), var_0.x, var_0.x, var_0.x), Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 91290u), vec2<bool>(false, true), Struct_1(false, vec4<f32>(1092f, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], 173f, global0[_wgslsmith_index_u32(65098u, 6u)]), var_0.x, -13921i, var_0.x))), -172f).d.b.x, global0[_wgslsmith_index_u32(~u_input.a.x, 6u)], global0[_wgslsmith_index_u32(u_input.a.x, 6u)])))), _wgslsmith_mult_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(var_0.yy ^ var_0.xx, vec2<i32>(var_0.x, -35411i))), (~var_0.zx | vec2<i32>(18059i, var_0.x)) & var_0.zx));
}

