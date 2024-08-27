struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = vec3<i32>(i32(-1i) * -_wgslsmith_dot_vec3_i32(u_input.a.zyx, _wgslsmith_add_vec3_i32(vec3<i32>(-55828i, u_input.a.x, u_input.a.x), vec3<i32>(10384i, u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec4_i32(countOneBits(max(vec4<i32>(22344i, u_input.a.x, -25217i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(37904i, u_input.a.x, u_input.a.x, -2147483647i), u_input.a))), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(-u_input.a, u_input.a), u_input.a)), max(_wgslsmith_dot_vec4_i32(-u_input.a ^ u_input.a, vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, _wgslsmith_div_i32(1i, 1i))), u_input.a.x));
    let var_1 = Struct_3(~(~countOneBits(vec3<u32>(1u, 1u, 1u))), ~(-(min(vec2<i32>(var_0.x, u_input.a.x), vec2<i32>(-5782i, var_0.x)) & (var_0.yy | vec2<i32>(0i, var_0.x)))), Struct_2(vec3<bool>(_wgslsmith_f_op_f32(ceil(arg_0.a.x)) != _wgslsmith_f_op_f32(abs(arg_0.a.x)), true, true), Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), 1u, _wgslsmith_f_op_f32(1310f - arg_0.a.x))), Struct_2(select(vec3<bool>(any(vec3<bool>(false, false, false)), true, true), vec3<bool>(arg_0.a.x < arg_0.a.x, true, true), true), Struct_1(vec3<bool>(true, true, true), 80996u, arg_0.a.x)), vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x)), false)), arg_0.a.x, arg_0.a.x));
    let var_2 = abs(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(1i, _wgslsmith_div_i32(var_0.x, -1i), ~0i, firstLeadingBit(-16604i))), u_input.a >> (reverseBits(max(vec4<u32>(var_1.c.b.b, 1u, var_1.d.b.b, 4294967295u), vec4<u32>(4294967295u, 26324u, var_1.d.b.b, 0u))) % vec4<u32>(32u))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(233f)), _wgslsmith_f_op_f32(round(941f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.d.b.c, -366f))), arg_0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a.x)), _wgslsmith_f_op_f32(-var_1.c.b.c), _wgslsmith_f_op_f32(exp2(arg_0.a.x)), _wgslsmith_f_op_f32(-arg_0.a.x))))));
    let var_4 = Struct_1(!vec3<bool>(_wgslsmith_div_i32(-29262i, var_0.x) <= _wgslsmith_add_i32(u_input.a.x, u_input.a.x), true, !all(vec2<bool>(var_1.d.a.x, false))), var_1.d.b.b, 550f);
    return _wgslsmith_div_u32(~max(var_1.d.b.b, (var_4.b | var_1.d.b.b) | 36230u), 40040u);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = ~vec3<u32>(~func_3(Struct_4(vec4<f32>(1166f, 752f, -1744f, 487f))) >> (~(~0u) % 32u), ~_wgslsmith_clamp_u32(4294967295u >> (1u % 32u), 1u, abs(0u)), 1u);
    return Struct_1(!vec3<bool>(arg_0.x, arg_0.x, -309f <= _wgslsmith_f_op_f32(floor(116f))), var_0.x, -1289f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = ~(~vec2<u32>(arg_0.b, arg_1.b.b));
    let var_1 = (abs(~u_input.a.x) << (4294967295u % 32u)) > 0i;
    var_0 = select(_wgslsmith_mult_vec2_u32(vec2<u32>(~0u, firstLeadingBit(~arg_1.b.b)), vec2<u32>(_wgslsmith_mult_u32(arg_0.b, 0u), ~var_0.x)), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, arg_0.b) << (vec2<u32>(~arg_1.b.b, 4294967295u) % vec2<u32>(32u)), select(~(~vec2<u32>(arg_0.b, arg_0.b)), min(~vec2<u32>(50838u, 1u), select(vec2<u32>(1u, arg_1.b.b), vec2<u32>(0u, 4294967295u), var_1)), true)), arg_1.b.a.zz);
    return Struct_2(arg_0.a, func_2(select(!arg_0.a.yz, arg_1.b.a.zz, vec2<bool>(arg_1.a.x == false, arg_1.a.x)), ~_wgslsmith_sub_vec2_i32(max(vec2<i32>(u_input.a.x, 1i), u_input.a.zw), select(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zw, arg_0.a.zy)), u_input.a.x));
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    var var_0 = arg_0.c;
    return arg_0;
}

fn func_1() -> vec3<u32> {
    let var_0 = func_5(Struct_3(_wgslsmith_div_vec3_u32(~(~vec3<u32>(4294967295u, 18970u, 0u)), vec3<u32>(1u, 1u, 1u)), u_input.a.xy, func_4(func_2(vec2<bool>(true, true), vec2<i32>(28901i, 0i) | u_input.a.zx, u_input.a.x), Struct_2(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true), 1u, -445f))), func_4(Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), func_4(Struct_1(vec3<bool>(false, true, false), 51965u, 1037f), Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<bool>(true, false, true), 15846u, 560f))).b.b, _wgslsmith_f_op_f32(sign(-1000f))), func_4(Struct_1(vec3<bool>(true, true, true), 4294967295u, 1731f), Struct_2(vec3<bool>(true, false, true), Struct_1(vec3<bool>(false, true, true), 72783u, 302f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1002f, -211f, 893f, -581f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(203f, -380f, -1969f, 1990f)))))));
    var var_1 = Struct_3(~(vec3<u32>(func_5(Struct_3(var_0.a, vec2<i32>(u_input.a.x, var_0.b.x), Struct_2(var_0.c.a, Struct_1(var_0.d.a, 7687u, var_0.d.b.c)), var_0.d, var_0.e)).c.b.b, 39847u, func_3(Struct_4(var_0.e))) ^ ~var_0.a), -(~(-firstLeadingBit(vec2<i32>(var_0.b.x, 2147483647i)))), var_0.d, var_0.d, var_0.e);
    var var_2 = func_5(func_5(var_0));
    var_2 = var_0;
    var_1 = var_0;
    return vec3<u32>(~(~countOneBits(func_4(Struct_1(vec3<bool>(true, false, var_0.c.a.x), 23946u, var_1.e.x), var_0.c).b.b)), ~var_0.d.b.b, _wgslsmith_dot_vec2_u32(var_2.a.zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.x, var_2.c.b.b | var_0.a.x), abs(min(vec2<u32>(25688u, 4294967295u), var_2.a.xy)), var_0.a.zy)));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(29940u, 14906u ^ arg_0.c.b.b, ~func_1().x << (countOneBits(~arg_0.c.b.b) % 32u)), ~vec3<u32>(arg_0.d.b.b & _wgslsmith_clamp_u32(arg_0.d.b.b, 1u, arg_0.c.b.b), 1u >> (arg_0.a.x % 32u), arg_0.c.b.b));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.x * -1092f), _wgslsmith_div_f32(arg_0.d.b.c, arg_0.e.x)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1391f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.b.c - arg_0.d.b.c) - _wgslsmith_f_op_f32(-arg_0.c.b.c)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-827f + 900f) + func_5(arg_0).c.b.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(138f + _wgslsmith_f_op_f32(-arg_0.c.b.c)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0.d.b.c, arg_0.d.b.c)))))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.e, _wgslsmith_div_vec4_f32(arg_0.e, arg_0.e))), arg_0.e, any(arg_0.d.b.a.yy))));
    var var_3 = arg_3;
    return Struct_2(vec3<bool>(!((arg_1.x | arg_3) | false), true, !(_wgslsmith_f_op_f32(f32(-1f) * -1437f) <= func_4(Struct_1(arg_0.d.a, 1u, 1000f), arg_0.d).b.c)), func_4(Struct_1(arg_1, var_0.x & 0u, func_2(arg_2.wx, ~u_input.a.xy, -2147483647i).c), func_5(arg_0).c).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_3(~(~vec3<u32>(0u, 16867u, 86806u)) ^ func_1(), _wgslsmith_mod_vec2_i32(-select(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), true), u_input.a.yw), func_5(Struct_3(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec2_i32(u_input.a.xx, u_input.a.yz, u_input.a.wy), func_4(Struct_1(vec3<bool>(false, false, true), 9970u, 207f), Struct_2(vec3<bool>(false, false, true), Struct_1(vec3<bool>(true, false, true), 0u, 320f))), func_5(Struct_3(vec3<u32>(16582u, 1u, 48976u), vec2<i32>(u_input.a.x, 68548i), Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<bool>(false, false, false), 40212u, -834f)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<bool>(false, false, false), 0u, -897f)), vec4<f32>(-888f, 797f, -333f, -668f))).c, vec4<f32>(1252f, 1363f, -1458f, -1280f))).c, Struct_2(vec3<bool>(all(vec2<bool>(true, true)), true, true), func_5(Struct_3(vec3<u32>(4294967295u, 12713u, 4294967295u), u_input.a.xw, Struct_2(vec3<bool>(true, true, false), Struct_1(vec3<bool>(false, false, false), 13572u, -1000f)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec3<bool>(false, true, false), 4294967295u, -378f)), vec4<f32>(-1118f, 489f, 144f, 265f))).c.b), vec4<f32>(_wgslsmith_f_op_f32(round(-1189f)), -457f, -527f, func_2(vec2<bool>(true, true), u_input.a.yw, _wgslsmith_clamp_i32(u_input.a.x, 52614i, u_input.a.x)).c)), select(func_4(func_2(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<i32>(1i, -4881i), _wgslsmith_div_i32(u_input.a.x, -1i)), Struct_2(func_4(Struct_1(vec3<bool>(true, true, true), 0u, -1000f), Struct_2(vec3<bool>(false, true, true), Struct_1(vec3<bool>(true, true, false), 23146u, 1000f))).a, Struct_1(vec3<bool>(false, true, false), 54383u, -1000f))).b.a, vec3<bool>(true, true, true), !func_2(func_4(Struct_1(vec3<bool>(true, true, true), 0u, 806f), Struct_2(vec3<bool>(true, true, true), Struct_1(vec3<bool>(true, false, true), 1u, 1000f))).b.a.zy, ~vec2<i32>(2147483647i, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, u_input.a.x)).a), select(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false)), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), any(vec4<bool>(true, false, firstTrailingBit(13628u) <= 4294967295u, true)));
    let var_1 = all(vec4<bool>(true, func_6(func_5(Struct_3(vec3<u32>(var_0.b.b, var_0.b.b, 1u), vec2<i32>(u_input.a.x, u_input.a.x), Struct_2(var_0.a, var_0.b), Struct_2(var_0.a, Struct_1(var_0.a, 1u, var_0.b.c)), vec4<f32>(var_0.b.c, var_0.b.c, -379f, var_0.b.c))), vec3<bool>(var_0.a.x, func_2(vec2<bool>(false, false), vec2<i32>(-2147483647i, -2680i), 655i).a.x, false), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, var_0.a.x, true), true), vec4<bool>(false, true, true, var_0.a.x), func_6(Struct_3(vec3<u32>(var_0.b.b, var_0.b.b, var_0.b.b), vec2<i32>(u_input.a.x, -2147483647i), Struct_2(var_0.b.a, var_0.b), Struct_2(var_0.b.a, Struct_1(var_0.a, 0u, var_0.b.c)), vec4<f32>(var_0.b.c, var_0.b.c, 1572f, 1000f)), var_0.a, vec4<bool>(false, false, var_0.b.a.x, var_0.b.a.x), false).b.a.x), var_0.a.x).a.x, false, func_5(func_5(Struct_3(vec3<u32>(89015u, 31531u, var_0.b.b), vec2<i32>(u_input.a.x, u_input.a.x), Struct_2(var_0.b.a, var_0.b), Struct_2(var_0.b.a, var_0.b), vec4<f32>(1000f, var_0.b.c, -194f, 405f)))).d.b.a.x));
    let var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_5(Struct_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(20924u, 21340u, var_0.b.b), vec3<u32>(20719u, var_0.b.b, var_0.b.b), vec3<u32>(var_0.b.b, 0u, 26488u)), -vec2<i32>(var_2, u_input.a.x), func_5(Struct_3(vec3<u32>(var_0.b.b, var_0.b.b, 0u), vec2<i32>(u_input.a.x, var_2), Struct_2(var_0.a, Struct_1(var_0.b.a, var_0.b.b, var_0.b.c)), Struct_2(var_0.b.a, Struct_1(var_0.b.a, 1u, 753f)), vec4<f32>(290f, var_0.b.c, -484f, -826f))).d, func_4(var_0.b, Struct_2(vec3<bool>(false, var_1, true), var_0.b)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b.c, -416f, var_0.b.c, var_0.b.c))))).e.yz - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.c, var_0.b.c)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.c, var_0.b.c), vec2<f32>(var_0.b.c, var_0.b.c), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(887f, 741f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(350f, 676f) - vec2<f32>(1853f, -371f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.c, 431f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(905f, -949f), vec2<f32>(var_0.b.c, var_0.b.c), vec2<bool>(true, false)))))))), !(u_input.a.x > (u_input.a.x ^ var_2)) || func_5(func_5(func_5(Struct_3(vec3<u32>(var_0.b.b, 6307u, var_0.b.b), vec2<i32>(u_input.a.x, 17226i), Struct_2(var_0.b.a, Struct_1(vec3<bool>(var_0.a.x, var_1, var_1), var_0.b.b, var_0.b.c)), Struct_2(vec3<bool>(var_1, var_1, var_1), var_0.b), vec4<f32>(-1456f, -1978f, 2235f, -1261f))))).d.b.a.x));
    var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.x, var_3.x))) + vec2<f32>(-446f, var_3.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c * var_3.x) * _wgslsmith_f_op_f32(-var_0.b.c)), var_0.b.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(~var_0.b.b, var_0.b.b >> (var_0.b.b % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.b, var_0.b.b, 1u, var_0.b.b), vec4<u32>(4294967295u, 48966u, var_0.b.b, 30449u)))) & vec3<u32>(var_0.b.b, func_5(func_5(Struct_3(vec3<u32>(0u, var_0.b.b, 24866u), vec2<i32>(u_input.a.x, u_input.a.x), Struct_2(var_0.a, var_0.b), Struct_2(var_0.b.a, Struct_1(var_0.b.a, var_0.b.b, var_3.x)), vec4<f32>(-1376f, 1413f, var_0.b.c, var_3.x)))).a.x, ~var_0.b.b), 1000f, ~var_0.b.b, u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, abs(-11354i >> (func_1().x % 32u)), -26211i));
}

