struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 31>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: i32) -> f32 {
    let var_0 = -1521f;
    var var_1 = Struct_1(vec3<u32>(0u | select(arg_0, arg_0 | 43240u, false), ~(~34020u), ~(~u_input.c.x)), arg_1, 9853i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1679f)))));
    global0 = array<vec4<i32>, 31>();
    var_1 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(31338u, var_1.a.x & 1013u) ^ _wgslsmith_add_u32(_wgslsmith_clamp_u32(9829u, 4294967295u, 4294967295u), abs(28211u)), _wgslsmith_mod_u32(~34317u >> (_wgslsmith_mod_u32(u_input.b, 1u) % 32u), _wgslsmith_dot_vec3_u32(var_1.a, vec3<u32>(29140u, var_1.a.x, arg_0))), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.a.x, var_1.a.x, 4775u) | ~var_1.a, var_1.a)), 0i, i32(-1i) * -arg_1);
    return var_2.x;
}

fn func_2(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: f32) -> bool {
    var var_0 = Struct_5(!arg_0.a, arg_2);
    global0 = array<vec4<i32>, 31>();
    let var_1 = max(vec4<u32>(~(~u_input.b << (0u % 32u)), _wgslsmith_dot_vec2_u32(arg_1.xw, arg_1.wx), countOneBits(_wgslsmith_div_u32(1u, abs(15418u))), 1u), ~arg_1 >> (~(~_wgslsmith_add_vec4_u32(arg_1, vec4<u32>(4294967295u, u_input.c.x, 27851u, 47679u))) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(242f, arg_0.b, false)))), _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + -1681f)), _wgslsmith_f_op_f32(func_3(~(~var_1.x), u_input.a))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-527f)), -328f, 1068f) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), -333f, -527f)));
    var var_3 = abs(~62430i);
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> Struct_5 {
    var var_0 = Struct_2(true, ~(~abs(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, u_input.c.x) ^ vec4<u32>(u_input.b, u_input.c.x, 18196u, 4294967295u))));
    var_0 = Struct_2(!arg_0.x, min(~(~firstTrailingBit(vec4<u32>(var_0.b.x, 31693u, 39234u, u_input.c.x))), var_0.b));
    let var_1 = Struct_4(Struct_2(true, var_0.b), select(max(~vec3<u32>(38904u, u_input.c.x, 1u), _wgslsmith_div_vec3_u32(var_0.b.xxy, ~var_0.b.yzz)), ~vec3<u32>(4294967295u, var_0.b.x, ~1u), max(0u, _wgslsmith_clamp_u32(4469u, var_0.b.x, var_0.b.x)) == abs(var_0.b.x)), Struct_2(!any(select(vec2<bool>(false, arg_1.x), vec2<bool>(arg_0.x, arg_0.x), var_0.a)), _wgslsmith_add_vec4_u32(var_0.b, abs(vec4<u32>(4294967295u, var_0.b.x, 0u, 31112u)))), max(select(~vec4<i32>(-1i, 5514i, u_input.a, -68272i) | global0[_wgslsmith_index_u32(38814u, 31u)], -global0[_wgslsmith_index_u32(4294967295u, 31u)], !vec4<bool>(arg_0.x, true, arg_1.x, arg_0.x)), countOneBits(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -44107i, arg_2.x, -23642i), vec4<i32>(-8567i, 0i, -2147483647i, u_input.a)))), arg_2);
    global0 = array<vec4<i32>, 31>();
    let var_2 = Struct_5(false, _wgslsmith_f_op_f32(round(199f)));
    return var_2;
}

fn func_5(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_5) -> Struct_2 {
    var var_0 = ~_wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.c.x, arg_2.b.x, 54329u) ^ firstLeadingBit(vec3<u32>(u_input.b, arg_2.c.b.x, arg_2.a.b.x))), firstLeadingBit(vec3<u32>(0u, 26297u, arg_2.b.x) >> (~vec3<u32>(1u, 0u, 4294967295u) % vec3<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_sub_vec3_u32(arg_2.a.b.ywy, ~(arg_2.a.b.wxx ^ arg_2.c.b.xwx)) | vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(63789u, u_input.c.x, 33592u), reverseBits(arg_2.a.b.yzw)), select(var_0.x, 55857u, arg_0.a)), i32(-1i) * -(arg_2.d.x & (arg_2.e.x << (4294967295u % 32u))), -34591i);
    global0 = array<vec4<i32>, 31>();
    var var_2 = -24499i;
    var var_3 = -_wgslsmith_mod_vec2_i32(countOneBits(-vec2<i32>(1i, arg_2.d.x)), _wgslsmith_clamp_vec2_i32(arg_2.d.zx, vec2<i32>(arg_2.e.x, u_input.a), vec2<i32>(u_input.a, -33579i)) >> (firstLeadingBit(var_1.a.yy) % vec2<u32>(32u))) | select(vec2<i32>(~(-32965i), var_1.b), firstLeadingBit(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-36073i, arg_2.e.x), vec2<i32>(arg_2.e.x, u_input.a), arg_2.e.xy), -vec2<i32>(-8828i, 2147483647i))), !arg_3.a);
    return arg_2.c;
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_4 {
    return Struct_4(func_5(func_4(vec4<bool>(arg_1.a, !arg_0.x, u_input.c.x <= arg_2.a.x, true), vec4<bool>(arg_0.x, func_4(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(false, arg_1.a, arg_0.x, arg_0.x), vec3<i32>(arg_2.c, arg_2.c, u_input.a)).a, any(arg_0.xz), true), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.b, u_input.a, arg_2.c), vec3<i32>(u_input.a, u_input.a, arg_2.b)))), vec4<bool>(arg_0.x, false, true, true), Struct_4(Struct_2(false, ~vec4<u32>(arg_2.a.x, 0u, 71482u, 59469u)), ~arg_2.a ^ vec3<u32>(arg_1.b.x, arg_2.a.x, 1u), Struct_2(true, ~vec4<u32>(arg_2.a.x, arg_2.a.x, u_input.b, arg_1.b.x)), countOneBits(vec4<i32>(-40470i, u_input.a, 0i, u_input.a)) & select(vec4<i32>(-498i, u_input.a, u_input.a, arg_2.c), vec4<i32>(arg_2.b, u_input.a, arg_2.c, arg_2.b), arg_0.x), max(vec3<i32>(u_input.a, u_input.a, 1i) | vec3<i32>(arg_2.c, arg_2.c, -16307i), ~vec3<i32>(16670i, -1i, -1i))), Struct_5(!arg_0.x, -352f)), arg_2.a, func_5(Struct_5(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1172f)))), select(!select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(true, false, arg_1.a, true), vec4<bool>(false, true, true, true)), !vec4<bool>(false, true, arg_0.x, true), true), Struct_4(arg_1, vec3<u32>(u_input.b, 45278u, arg_2.a.x) ^ arg_1.b.yxw, Struct_2(true, arg_1.b), global0[_wgslsmith_index_u32(~arg_2.a.x, 31u)], vec3<i32>(2147483647i, max(1i, arg_2.c), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c, -1i, arg_2.b, -14558i), global0[_wgslsmith_index_u32(0u, 31u)]))), func_4(select(select(vec4<bool>(false, arg_0.x, true, arg_1.a), vec4<bool>(arg_1.a, true, arg_0.x, true), arg_1.a), vec4<bool>(arg_1.a, false, arg_1.a, arg_0.x), true), select(vec4<bool>(false, arg_1.a, true, arg_1.a), select(vec4<bool>(false, arg_0.x, true, false), vec4<bool>(true, true, arg_0.x, false), true), select(vec4<bool>(false, arg_1.a, true, arg_1.a), vec4<bool>(false, true, false, arg_0.x), vec4<bool>(false, arg_0.x, arg_1.a, arg_0.x))), vec3<i32>(0i << (arg_1.b.x % 32u), _wgslsmith_clamp_i32(-46146i, u_input.a, u_input.a), ~arg_2.c))), global0[_wgslsmith_index_u32(u_input.b, 31u)], _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, arg_2.c ^ 38228i, 1i), -vec3<i32>(max(1i, -61654i), -arg_2.b, u_input.a)));
}

fn func_1() -> vec4<u32> {
    let var_0 = func_6(!select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), func_5(func_4(vec4<bool>(true, false, func_2(Struct_5(false, -916f), vec4<u32>(32131u, u_input.b, 0u, 79209u), -204f), false), vec4<bool>(true, true, true, true), max(-vec3<i32>(0i, -1i, u_input.a), vec3<i32>(u_input.a, 2147483647i, u_input.a))), vec4<bool>(true | any(vec3<bool>(true, false, false)), false, false, true), Struct_4(Struct_2(select(true, false, true), vec4<u32>(1u, 6253u, u_input.c.x, 9884u) | vec4<u32>(1u, 4294967295u, 43009u, 5022u)), max(~vec3<u32>(u_input.b, u_input.c.x, u_input.c.x), ~vec3<u32>(1u, u_input.c.x, 22490u)), Struct_2(false, vec4<u32>(u_input.c.x, 0u, 19768u, u_input.b)), vec4<i32>(u_input.a, -9861i, ~(-32351i), -42767i), _wgslsmith_div_vec3_i32(vec3<i32>(-6146i, 54686i, u_input.a), vec3<i32>(-2147483647i, u_input.a, 46375i))), Struct_5(_wgslsmith_add_u32(u_input.c.x, 0u) < ~4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-416f, 132f)) + 1019f))), Struct_1(vec3<u32>(reverseBits(u_input.c.x >> (u_input.b % 32u)), u_input.c.x, ~_wgslsmith_mult_u32(u_input.b, 1u)), u_input.a, _wgslsmith_div_i32(firstTrailingBit(u_input.a) & -52962i, 5000i)));
    let var_1 = func_4(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1728f)) - -174f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1660f)), !(!var_0.a.a), true, var_0.a.a), !vec4<bool>(false, all(vec3<bool>(var_0.c.a, false, false)), var_0.a.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.c.x), var_0.c.b.ww) <= u_input.b), vec3<i32>(-(~var_0.e.x >> (0u % 32u)), var_0.d.x, -31967i));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -933f), _wgslsmith_f_op_f32(f32(-1f) * -625f), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + 1104f) * var_1.b)))), vec4<f32>(_wgslsmith_f_op_f32(func_3(77287u, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -41104i), vec3<i32>(u_input.a, 6348i, 28686i)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1110f + 1419f), _wgslsmith_f_op_f32(round(1086f))) + _wgslsmith_f_op_f32(2537f + var_1.b)), 783f, _wgslsmith_f_op_f32(388f + _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(-1000f - 1000f)))));
    var var_3 = var_2.zw;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1139f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, -229f))))));
    return abs(vec4<u32>(_wgslsmith_add_u32(firstTrailingBit(countOneBits(u_input.b)), max(15379u, 1u) | _wgslsmith_add_u32(var_0.b.x, 35491u)), u_input.c.x, _wgslsmith_mod_u32(~0u, _wgslsmith_clamp_u32(1u, ~10692u, ~var_0.b.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(4294967295u, 33958u, 107395u)), var_0.b >> (vec3<u32>(0u, var_0.a.b.x, 4294967295u) % vec3<u32>(32u))), var_0.c.b.zwy)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 31>();
    let var_0 = Struct_2(true, func_1());
    var var_1 = func_6(select(vec3<bool>(true, !var_0.a, true), select(vec3<bool>(any(vec2<bool>(var_0.a, true)), !var_0.a, true), !select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(var_0.a, false, var_0.a)), !(var_0.a == true)), func_2(Struct_5(func_6(vec3<bool>(true, var_0.a, var_0.a), Struct_2(var_0.a, vec4<u32>(var_0.b.x, 4294967295u, 31546u, u_input.c.x)), Struct_1(var_0.b.xxx, -2147483647i, u_input.a)).c.a, _wgslsmith_f_op_f32(2300f * -267f)), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1289f * -961f)))), func_6(vec3<bool>(var_0.a, func_5(Struct_5(var_0.a, -1444f), vec4<bool>(var_0.a, true, false, false), Struct_4(Struct_2(var_0.a, vec4<u32>(u_input.b, u_input.c.x, var_0.b.x, 17928u)), var_0.b.wyz, Struct_2(true, vec4<u32>(30389u, 40687u, 4294967295u, 74518u)), global0[_wgslsmith_index_u32(u_input.c.x, 31u)], vec3<i32>(u_input.a, 27508i, -2147483647i)), Struct_5(var_0.a, 877f)).a | false, func_6(vec3<bool>(true, true, true), func_6(vec3<bool>(var_0.a, false, var_0.a), Struct_2(var_0.a, vec4<u32>(1u, 64236u, u_input.b, var_0.b.x)), Struct_1(var_0.b.zyx, -1i, u_input.a)).a, Struct_1(var_0.b.zxw, u_input.a, u_input.a)).a.a), var_0, Struct_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.x, 57106u, u_input.b), vec3<u32>(0u, var_0.b.x, u_input.b)), 20649i, -u_input.a)).a, Struct_1(~var_0.b.wwx, _wgslsmith_clamp_i32(u_input.a | -u_input.a, 2147483647i, 1i), ~0i));
    let var_2 = Struct_5(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1939f)))));
    global0 = array<vec4<i32>, 31>();
    let var_3 = Struct_3(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.e, var_1.e), 0i, var_1.d.x, _wgslsmith_add_i32(u_input.a, -80433i)), global0[_wgslsmith_index_u32(1u & _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(17677u, 0u)), 31u)], global0[_wgslsmith_index_u32(1u, 31u)]), vec4<i32>(i32(-1i) * -9765i, abs(~u_input.a), -(var_1.e.x ^ u_input.a), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, var_1.d.x), _wgslsmith_dot_vec3_i32(var_1.e, vec3<i32>(-2147483647i, -24514i, var_1.d.x))))), var_1.e, -func_6(vec3<bool>(true, true, true), Struct_2(var_2.a, var_1.c.b), Struct_1(vec3<u32>(var_0.b.x, var_0.b.x, u_input.b), 2147483647i, 0i)).e.x >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1.a.b.x), var_1.a.b.xy) % 32u), var_1.a);
    let var_4 = Struct_3(func_6(vec3<bool>(var_1.a.a, 71180u < (0u | u_input.c.x), var_1.a.a), Struct_2(!(0i <= var_1.d.x), reverseBits(vec4<u32>(u_input.b, var_1.a.b.x, u_input.c.x, var_0.b.x))), Struct_1(func_6(!vec3<bool>(true, var_1.c.a, var_2.a), var_1.c, Struct_1(vec3<u32>(var_1.c.b.x, u_input.c.x, 24442u), var_3.a.x, var_3.c)).c.b.xzx, i32(-1i) * -1i, ~2030i)).d, _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(var_3.b, -vec3<i32>(0i, var_3.a.x, u_input.a)), _wgslsmith_div_i32(u_input.a, u_input.a), 16722i), abs(_wgslsmith_sub_vec3_i32(var_3.a.zzw, select(vec3<i32>(-21416i, 0i, var_1.e.x), var_3.b, vec3<bool>(var_0.a, false, var_0.a))))), -19488i, func_6(vec3<bool>(true, var_0.a, var_1.a.a), func_5(Struct_5(all(vec4<bool>(var_0.a, false, var_0.a, var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -371f)), vec4<bool>(!var_0.a, select(var_3.d.a, var_0.a, var_3.d.a), true, u_input.a != var_1.d.x), func_6(!vec3<bool>(true, var_2.a, true), func_6(vec3<bool>(false, var_1.c.a, var_0.a), Struct_2(var_2.a, vec4<u32>(var_3.d.b.x, 0u, var_1.a.b.x, u_input.b)), Struct_1(vec3<u32>(var_0.b.x, var_0.b.x, var_1.b.x), -43812i, -1i)).a, Struct_1(var_0.b.yxx, var_1.e.x, -2147483647i)), func_4(vec4<bool>(false, var_3.d.a, var_0.a, var_0.a), select(vec4<bool>(var_3.d.a, false, var_1.a.a, var_2.a), vec4<bool>(true, true, var_3.d.a, var_3.d.a), var_2.a), var_3.a.yxy)), Struct_1(func_5(var_2, select(vec4<bool>(false, true, var_0.a, var_3.d.a), vec4<bool>(true, true, var_0.a, true), vec4<bool>(var_3.d.a, true, var_1.c.a, false)), func_6(vec3<bool>(var_1.a.a, false, var_2.a), Struct_2(var_2.a, var_3.d.b), Struct_1(vec3<u32>(74284u, var_3.d.b.x, var_1.a.b.x), var_3.c, u_input.a)), Struct_5(var_0.a, 2871f)).b.zzw, -var_3.a.x, 2147483647i)).a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_2.b, -1355f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -414f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(397f, var_2.b)) + -2521f)), _wgslsmith_f_op_f32(func_3(1u << ((var_0.b.x & 19874u) % 32u), select(_wgslsmith_div_i32(var_1.e.x, var_1.d.x), _wgslsmith_mod_i32(40758i, u_input.a), true)))), u_input.a, ~_wgslsmith_div_u32(var_0.b.x, _wgslsmith_mod_u32(~50768u, firstLeadingBit(var_4.d.b.x))), var_1.b.x);
}

