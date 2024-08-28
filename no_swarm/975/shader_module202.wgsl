struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(4294967295u, 0u, 4294967295u, 21985u), vec4<u32>(0u, 1u, 30565u, 4294967295u), vec4<u32>(1u, 0u, 0u, 9635u), vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(24989u, 0u, 35411u, 4294967295u), vec4<u32>(0u, 4294967295u, 27162u, 0u), vec4<u32>(4294967295u, 62983u, 0u, 0u), vec4<u32>(101713u, 49016u, 2269u, 53425u), vec4<u32>(1u, 20077u, 1u, 1u), vec4<u32>(22183u, 31641u, 56923u, 0u), vec4<u32>(1u, 89340u, 4294967295u, 2064u), vec4<u32>(66077u, 0u, 21433u, 4294967295u), vec4<u32>(4851u, 0u, 4294967295u, 1u));

var<private> global1: u32 = 0u;

var<private> global2: u32;

var<private> global3: u32;

var<private> global4: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(-1006f, -1633f), vec2<f32>(-173f, 1000f), vec2<f32>(-747f, 581f), vec2<f32>(913f, -1808f), vec2<f32>(-933f, 456f), vec2<f32>(1212f, -805f), vec2<f32>(-493f, -1276f), vec2<f32>(-774f, 168f), vec2<f32>(411f, 1000f), vec2<f32>(-1422f, 828f), vec2<f32>(-292f, -378f), vec2<f32>(-1731f, -1124f), vec2<f32>(-547f, 500f), vec2<f32>(-1625f, -548f), vec2<f32>(-337f, -463f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: i32) -> vec3<bool> {
    var var_0 = Struct_2(!select(!(!vec3<bool>(arg_1.x, arg_0, true)), !select(vec3<bool>(true, false, arg_0), vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0)), arg_1), Struct_1(~58780u, (_wgslsmith_add_vec3_i32(vec3<i32>(arg_2, -50364i, arg_2), vec3<i32>(-18776i, 1i, 2147483647i)) ^ vec3<i32>(arg_2, -32742i, 20738i)) >> (~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u)), arg_0), !any(select(vec2<bool>(arg_0, arg_0), arg_1.zz, arg_1.x)), Struct_1(~(~0u), -firstLeadingBit(vec3<i32>(arg_2, 2147483647i, arg_2)), true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(474f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1519f, 1262f, 1510f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-195f, -1110f, -254f) - vec3<f32>(-442f, 489f, -436f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1)) - var_1), var_1, var_1), var_0.a))));
    let var_3 = var_0.a.xy;
    var_2 = vec3<f32>(var_2.x, -866f, _wgslsmith_f_op_f32(-416f + _wgslsmith_f_op_f32(var_1 + 375f)));
    return vec3<bool>(!(!(!(true & var_3.x))), true, var_0.a.x);
}

fn func_2(arg_0: Struct_1) -> u32 {
    global2 = 31280u;
    let var_0 = Struct_2(select(func_3(!any(vec2<bool>(arg_0.c, true)), select(!vec3<bool>(arg_0.c, arg_0.c, arg_0.c), vec3<bool>(arg_0.c, arg_0.c, arg_0.c), !vec3<bool>(true, arg_0.c, true)), -1i), select(select(func_3(false, vec3<bool>(arg_0.c, arg_0.c, arg_0.c), arg_0.b.x), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), true), !func_3(arg_0.c, vec3<bool>(arg_0.c, arg_0.c, arg_0.c), -30545i), false), arg_0.c), arg_0, true, arg_0);
    var var_1 = select(!vec4<bool>(false, any(vec3<bool>(true, false, var_0.a.x)), true, -arg_0.b.x < 22408i), vec4<bool>(arg_0.c, false, true, arg_0.c), !vec4<bool>(true, func_3(false, select(vec3<bool>(var_0.a.x, arg_0.c, true), var_0.a, var_0.c), max(arg_0.b.x, var_0.b.b.x)).x, func_3(true, var_0.a, var_0.b.b.x).x, all(vec4<bool>(var_0.b.c, true, false, false))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1002f - 1053f), -927f), _wgslsmith_f_op_f32(min(502f, -518f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(682f + 1000f) + _wgslsmith_f_op_f32(308f * -289f))))) + _wgslsmith_f_op_f32(f32(-1f) * -442f));
    var var_3 = var_0;
    return var_3.b.a;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(!vec3<bool>(arg_0.b.x > _wgslsmith_add_i32(arg_0.b.x, -3006i), arg_0.c, true), arg_0, true, Struct_1(1u, vec3<i32>(-arg_0.b.x, arg_0.b.x, -firstTrailingBit(arg_0.b.x)), any(vec3<bool>(true, arg_0.c, true))));
    global4 = array<vec2<f32>, 15>();
    global4 = array<vec2<f32>, 15>();
    let var_1 = _wgslsmith_f_op_f32(458f * 230f);
    let var_2 = var_0.b.a;
    return Struct_1(var_2, ~(-(vec3<i32>(var_0.b.b.x, 0i, arg_0.b.x) ^ max(arg_0.b, arg_0.b))), max(~var_0.d.b.x, i32(-1i) * -var_0.b.b.x) >= ~(-arg_0.b.x ^ arg_0.b.x));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = vec4<i32>(min(arg_0.b.x, ~(_wgslsmith_clamp_i32(arg_2.x, 16847i, -8221i) | 15691i)), arg_0.b.x, min(_wgslsmith_add_i32(arg_0.b.x, 0i), arg_2.x), _wgslsmith_add_i32(_wgslsmith_div_i32(-arg_0.b.x, arg_2.x), _wgslsmith_div_i32(arg_2.x | -2147483647i, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(arg_0.b.x, 1i, 15852i, -1i))))));
    var var_1 = false;
    var var_2 = arg_0;
    var var_3 = ~(firstLeadingBit(~(~var_2.a)) & _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, u_input.a.x, arg_0.a) | vec3<u32>(arg_0.a, arg_3.x, 18137u), vec3<u32>(arg_3.x, 1u, 6020u)), ~abs(0u)));
    var var_4 = vec2<u32>(arg_3.x, ~max(max(14563u, ~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(38064u, arg_3.x, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, 22856u, u_input.a.x, 28761u))));
    return Struct_2(!(!select(vec3<bool>(var_2.c, var_2.c, true), !vec3<bool>(false, true, arg_0.c), var_2.c)), arg_0, 2147483647i < arg_0.b.x, Struct_1(~(~var_2.a) >> (abs(var_2.a) % 32u), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_2, vec4<i32>(2147483647i, arg_2.x, 2147483647i, 1i), arg_2), max(arg_2, arg_2)), _wgslsmith_mod_i32(var_2.b.x & -49645i, ~(-23479i))), all(!select(vec4<bool>(arg_0.c, arg_0.c, true, var_2.c), vec4<bool>(arg_0.c, arg_0.c, var_2.c, false), arg_0.c))));
}

fn func_1(arg_0: vec3<u32>) -> vec4<i32> {
    var var_0 = func_5(func_4(Struct_1(0u << (func_2(Struct_1(u_input.a.x, vec3<i32>(2147483647i, -29414i, 8968i), false)) % 32u), (vec3<i32>(3758i, -30195i, 9611i) << (vec3<u32>(arg_0.x, 0u, arg_0.x) % vec3<u32>(32u))) ^ countOneBits(vec3<i32>(36166i, 0i, 1i)), !any(vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_f32(round(-3104f)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-57180i, -1i, 0i, -32325i) >> (vec4<u32>(4294967295u, 24004u, u_input.a.x, 0u) % vec4<u32>(32u)), -vec4<i32>(-69341i, 8759i, 12275i, 24542i), firstLeadingBit(vec4<i32>(2147483647i, 2840i, 2147483647i, 31562i))) & _wgslsmith_mult_vec4_i32(countOneBits(firstLeadingBit(vec4<i32>(2147483647i, -6557i, 27624i, -60461i))), vec4<i32>(_wgslsmith_mult_i32(0i, 33501i), 1i, firstLeadingBit(22365i), max(-31760i, -1i))), select(~(~(~arg_0)), vec3<u32>(~arg_0.x | firstLeadingBit(1u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, u_input.a.x)), _wgslsmith_add_u32(arg_0.x, u_input.a.x)), 92019u), select(vec3<bool>(true, all(vec2<bool>(false, false)), false), select(func_3(false, vec3<bool>(true, false, false), 0i), func_3(true, vec3<bool>(true, false, true), 14020i), true), !select(true, true, true))));
    let var_1 = Struct_2(vec3<bool>(!((arg_0.x >= 0u) && any(var_0.a)), var_0.b.c, func_3(firstLeadingBit(42149i) != var_0.b.b.x, vec3<bool>(var_0.a.x, func_3(true, var_0.a, var_0.d.b.x).x, var_0.a.x & true), _wgslsmith_div_i32(var_0.d.b.x, _wgslsmith_mod_i32(var_0.b.b.x, 11115i))).x), Struct_1(20564u, ~_wgslsmith_div_vec3_i32(-var_0.b.b, var_0.b.b), false), !(!(!all(vec2<bool>(var_0.d.c, false)))), Struct_1(52151u >> (~func_5(var_0.b, 889f, vec4<i32>(0i, 2147483647i, var_0.d.b.x, -39010i), vec3<u32>(arg_0.x, u_input.a.x, 30049u)).d.a % 32u), ~var_0.d.b, var_0.d.c));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1308f, -195f, 142f)))))))));
    var var_3 = func_5(Struct_1(4294967295u, vec3<i32>(-var_1.b.b.x, 32782i, -39601i), all(!vec4<bool>(true, var_1.b.c, var_1.a.x, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, 647f, true)) + -332f)), var_2.x)), ~vec4<i32>(-abs(var_0.d.b.x), max(-67241i, -15689i), 0i, min(63374i, -2572i)), ~arg_0);
    let var_4 = vec2<i32>(1i, _wgslsmith_div_i32(reverseBits(2147483647i), -(-var_1.d.b.x << ((0u >> (1u % 32u)) % 32u))));
    return reverseBits(_wgslsmith_mod_vec4_i32(min(abs(-vec4<i32>(var_0.b.b.x, var_4.x, 22510i, 74311i)), firstLeadingBit(-vec4<i32>(1i, -91163i, var_3.b.b.x, var_4.x))), vec4<i32>(var_0.d.b.x, 0i, func_4(func_4(var_0.d)).b.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.b.x, -2147483647i, var_1.d.b.x, var_4.x), vec4<i32>(-1i, -1i, var_4.x, var_3.b.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_add_vec4_i32(~(func_1(vec3<u32>(0u, 21272u, u_input.a.x)) & vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(1i, 1i, 1i, 1i) >> (~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 35254u) % vec4<u32>(32u))), vec2<u32>(4294967295u | u_input.a.x, 44398u), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 16836u, 40417u, u_input.a.x), ~vec4<u32>(0u, 0u, u_input.a.x, 29556u)), ~_wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(7198u, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(10721u, 13u)])), vec3<i32>(2147483647i, 0i, -1i) >> (~abs(vec3<u32>(77744u, u_input.a.x, 0u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(step(-526f, _wgslsmith_f_op_f32(floor(-758f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1655f)) - _wgslsmith_f_op_f32(min(365f, -1212f)))));
    global3 = _wgslsmith_mod_u32(min(99432u, ~_wgslsmith_add_u32(func_4(Struct_1(1u, vec3<i32>(var_0.c.b.x, 10178i, var_0.c.b.x), false)).a, u_input.a.x >> (1u % 32u))), 8115u ^ u_input.a.x);
    var var_1 = 1000f;
    global0 = array<vec4<u32>, 13>();
    var var_2 = vec2<bool>(true, _wgslsmith_mod_i32(func_4(func_4(var_0.c)).b.x, 26390i) <= -var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(887f, -186f, -390f), vec3<f32>(-915f, -658f, 956f))), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -996f, -1315f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(820f, -293f, -1050f))))))), 50862u, ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 1u, var_0.b.x) ^ ~vec3<u32>(4294967295u, 7712u, 61157u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(626f, 243f, 499f) * vec3<f32>(1000f, 360f, -288f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-313f, 522f, -156f), vec3<f32>(-2139f, -900f, 1291f))) - vec3<f32>(_wgslsmith_f_op_f32(-1290f - 115f), _wgslsmith_f_op_f32(-433f * -1291f), 491f))), vec2<f32>(1896f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(358f + 565f), _wgslsmith_f_op_f32(f32(-1f) * -978f)))));
}

