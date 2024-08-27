struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1526f, -870f, 978f);

var<private> global1: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(-1000f, 3198f), vec2<f32>(1000f, -197f), vec2<f32>(1000f, 485f), vec2<f32>(-275f, 298f), vec2<f32>(-1851f, 1120f), vec2<f32>(-478f, -1000f), vec2<f32>(366f, 1096f), vec2<f32>(-513f, 331f), vec2<f32>(-918f, -947f), vec2<f32>(1161f, 1000f), vec2<f32>(1205f, -777f), vec2<f32>(1172f, -1076f), vec2<f32>(-603f, 1661f), vec2<f32>(-1453f, 1000f), vec2<f32>(303f, -528f), vec2<f32>(-340f, 661f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_mult_i32(~_wgslsmith_add_i32(u_input.c.x, -28818i), ~u_input.c.x);
    global1 = array<vec2<f32>, 16>();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -158f), global0.x, _wgslsmith_f_op_f32(464f * global0.x), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(min(global0.x, global0.x)))))));
    global1 = array<vec2<f32>, 16>();
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -768f, var_1.x, 1070f)));
    return var_1.x;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_1) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-304f + arg_2.c.x), 596f, _wgslsmith_f_op_f32(-1171f + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1028f * _wgslsmith_f_op_f32(-global0.x)), 1f, false))));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(arg_2.c))));
    global1 = array<vec2<f32>, 16>();
    let var_2 = Struct_1(countOneBits(41494u) ^ abs(arg_3.e), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-arg_0)), ~(-(~arg_3.c & _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, arg_3.c.x, arg_2.b, arg_2.b), vec4<i32>(-34123i, -4355i, 25791i, -24099i), arg_3.c))), vec2<bool>(arg_3.d.x, true), ~(u_input.a << (70867u % 32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(arg_2.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-823f, -1000f)), 1000f, global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(ceil(var_2.b.x))))) - arg_2.a));
    return 399f;
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> Struct_3 {
    let var_0 = Struct_1(reverseBits(4294967295u), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-400f)))), _wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), ~(max(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b, -2147483647i, u_input.c.x, u_input.c.x), vec4<i32>(-55911i, -10075i, u_input.b, -17197i)), _wgslsmith_add_vec4_i32(vec4<i32>(64707i, u_input.c.x, u_input.b, 2147483647i), vec4<i32>(arg_0.b, 43i, -29193i, u_input.b))) & ~(vec4<i32>(u_input.b, arg_0.b, u_input.c.x, 4853i) & vec4<i32>(57959i, arg_0.b, u_input.b, arg_0.b))), vec2<bool>(arg_1, arg_1), ~_wgslsmith_div_u32(_wgslsmith_sub_u32(13070u, u_input.a) | abs(2373u), firstLeadingBit(36051u)));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.c.x, vec2<f32>(arg_0.c.x, 473f), arg_0, Struct_1(0u, vec2<f32>(var_0.b.x, -144f), vec4<i32>(-13388i, var_0.c.x, var_0.c.x, -32940i), var_0.d, 40160u)))) - global0.x)));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(299f, var_0.b.x, var_0.b.x, 881f), arg_0.a)) + arg_0.a)), u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.xzw)));
    var var_2 = arg_0;
    var var_3 = true;
    return Struct_3(-113f, ~vec4<u32>(0u >> ((u_input.a << (u_input.a % 32u)) % 32u), 1u, _wgslsmith_mod_u32(~var_0.e, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(u_input.a, 33019u, var_0.e))), ~(~16745u)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-38769i, 1i, -2147483647i), var_0.c.yxy), vec3<i32>(var_1.b, var_1.b, arg_0.b)) ^ (var_0.c.yxx ^ u_input.c), countOneBits(vec3<i32>(-arg_0.b, ~var_1.b, firstLeadingBit(2147483647i)))), ~vec3<u32>(abs(104356u), ~(~4294967295u), ~var_0.e ^ ~0u), Struct_2(Struct_1(~u_input.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(897f, -1573f)))), -(~vec4<i32>(arg_0.b, -1i, 66941i, -52377i)), vec2<bool>(arg_1, true), 58584u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> vec2<f32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1546f * 1138f))), _wgslsmith_div_f32(269f, _wgslsmith_f_op_f32(func_3())));
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(arg_1.e.a.c.x >> (arg_1.b.x % 32u), arg_0.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, 1i, -1i, u_input.c.x), vec4<i32>(max(_wgslsmith_sub_i32(1i, arg_0.c.x), _wgslsmith_dot_vec2_i32(arg_1.e.a.c.yx, vec2<i32>(-1i, arg_1.c))), 39594i | arg_1.e.a.c.x, countOneBits(arg_0.c.x) ^ 1i, -arg_1.e.a.c.x)), ~(-16595i), 2147483647i);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1521f, var_0, arg_0.b.x))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a, -1000f, -2107f), vec3<f32>(var_0, -137f, -882f)))))))));
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, 58387i, arg_0.c.x), ~arg_0.c << (vec4<u32>((4294967295u << (arg_1.e.a.a % 32u)) & 10921u, _wgslsmith_dot_vec2_u32(arg_1.b.xw, arg_1.d.zy) & ~9625u, 1u, _wgslsmith_dot_vec3_u32(~arg_1.d, ~arg_1.b.zyx)) % vec4<u32>(32u)));
    let var_4 = vec2<bool>(all(vec3<bool>(!all(vec4<bool>(true, arg_0.d.x, arg_1.e.a.d.x, arg_1.e.a.d.x)), true, _wgslsmith_f_op_f32(-arg_0.b.x) <= _wgslsmith_f_op_f32(193f * var_0))), arg_0.d.x);
    return _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-804f, 1f), vec2<f32>(arg_1.e.a.b.x, 961f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 16>();
    var var_0 = Struct_1(~u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(~u_input.a, vec2<f32>(1711f, global0.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -404i, u_input.c.x), vec4<i32>(-16885i, 1i, u_input.b, u_input.b)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), 4294967295u), func_1(Struct_4(vec4<f32>(-1503f, global0.x, global0.x, 924f), u_input.b, vec3<f32>(global0.x, -713f, -158f)), true)))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x << (u_input.a % 32u), 26524i, 19415i, u_input.c.x), vec4<i32>(-1i, -1i, _wgslsmith_mult_i32(-46806i, u_input.b), min(-29183i, u_input.b))), !vec2<bool>(false, all(vec2<bool>(true, true))), ~(0u >> (~u_input.a % 32u)));
    var var_1 = ~reverseBits(0u) << (_wgslsmith_clamp_u32(abs(0u), var_0.a, _wgslsmith_sub_u32(~4294967295u, ~u_input.a)) % 32u);
    var_1 = 55582u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b, 16476i), -1i), var_0.c.x, -40448i), abs(~countOneBits(vec3<i32>(var_0.c.x, u_input.b, var_0.c.x)))), var_0.c.x, u_input.c.x, ~_wgslsmith_mult_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_0.a, 1u), vec3<u32>(0u, var_0.e, u_input.a), vec3<u32>(var_0.a, u_input.a, 1u))), firstTrailingBit(vec3<u32>(u_input.a, var_0.e, 1u))));
}

