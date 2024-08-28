struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31>;

var<private> global1: vec4<f32> = vec4<f32>(143f, -363f, -240f, -1810f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> bool {
    var var_0 = 1u;
    var var_1 = global1.zx;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2605f))))))), -717f);
    var var_2 = !select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), vec3<bool>(true, true, all(vec3<bool>(true, true, true))), false);
    var var_3 = Struct_1(-(~0i), reverseBits(_wgslsmith_div_i32(0i, -1i)), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-108f, global1.x)))), -1000f), firstTrailingBit(firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1, 1u), 31u)])) << (~abs(~vec3<u32>(arg_1, arg_1, arg_1)) % vec3<u32>(32u)), vec3<bool>(false, !var_2.x, _wgslsmith_mod_u32(abs(arg_1), 1u) < 0u));
    return var_3.e.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(Struct_1(_wgslsmith_dot_vec2_i32(u_input.a, -vec2<i32>(-21731i, u_input.a.x)), ~select(u_input.b.x, ~u_input.a.x, func_3(global1.wzy, 0u)), global1.yyw, _wgslsmith_mod_vec3_i32(min(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -1i, u_input.b.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), global0[_wgslsmith_index_u32(abs(50738u), 31u)]), vec3<i32>(firstLeadingBit(-19841i), -2147483647i, u_input.a.x)), vec3<bool>(true, true, true)), _wgslsmith_clamp_u32(~(~_wgslsmith_mult_u32(4294967295u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, 9440u), firstLeadingBit(0u)), vec2<u32>(~16848u, _wgslsmith_div_u32(11968u, 1u))), 1u), Struct_2(vec3<bool>(true, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 1154f) * vec3<f32>(270f, global1.x, -539f)), ~0u), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))), vec3<i32>(select(firstTrailingBit(u_input.a.x), 49408i, any(vec2<bool>(true, true))), _wgslsmith_clamp_i32(18554i, 1i, _wgslsmith_sub_i32(-11269i, -2147483647i)), _wgslsmith_dot_vec2_i32(select(u_input.b, u_input.b, vec2<bool>(false, true)), _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(-12454i, -1i)))), Struct_1((u_input.a.x ^ u_input.a.x) << (_wgslsmith_div_u32(1u, 4294967295u) % 32u), -29027i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -752f, 288f)), ~select(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(18422u, 31u)], vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), any(vec3<bool>(false, false, false)))), 40981u, !select(false, true, true) | true));
    let var_1 = _wgslsmith_f_op_f32(min(global1.x, 226f));
    var var_2 = Struct_4(Struct_1(_wgslsmith_clamp_i32(var_0.c.c.a, u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, -4189i)), ~u_input.a.x, vec3<f32>(_wgslsmith_div_f32(var_0.a.c.x, _wgslsmith_f_op_f32(var_1 - 999f)), var_1, -1109f), -vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-7304i, u_input.a.x)), 1i, _wgslsmith_add_i32(-1i, var_0.a.d.x)), !(!(!vec3<bool>(var_0.c.c.e.x, true, false)))), ~_wgslsmith_mod_u32(~(~61337u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.c.d, var_0.b, 37702u, var_0.c.d), vec4<u32>(40216u, 4294967295u, var_0.c.d, var_0.c.d), false), ~vec4<u32>(1u, var_0.b, var_0.b, 1u))), Struct_2(!(!select(vec3<bool>(var_0.a.e.x, var_0.c.c.e.x, true), var_0.a.e, true)), firstLeadingBit(vec3<i32>(select(62989i, -40797i, true), 27651i, _wgslsmith_sub_i32(1i, var_0.a.b))), Struct_1(64212i, firstLeadingBit(0i >> (var_0.b % 32u)), vec3<f32>(_wgslsmith_f_op_f32(step(2068f, global1.x)), global1.x, global1.x), var_0.c.b, select(!var_0.a.e, var_0.c.c.e, var_0.a.e.x)), 4294967295u, var_0.c.c.e.x));
    var_2 = Struct_4(var_2.c.c, ~(~0u), Struct_2(!vec3<bool>(var_2.c.a.x, all(vec4<bool>(true, var_2.c.c.e.x, false, var_2.a.e.x)), var_0.b >= 55839u), global0[_wgslsmith_index_u32(~24530u, 31u)], Struct_1(var_2.c.c.d.x, ~(var_2.c.c.a | -6292i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.c.c.c.x, global1.x, global1.x))) + vec3<f32>(var_2.c.c.c.x, 1850f, 262f)), -vec3<i32>(2147483647i, u_input.a.x, var_0.c.c.b), var_2.c.a), 1u, false));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1359f, var_1, var_2.c.c.c.x, -934f))), vec4<f32>(global1.x, global1.x, global1.x, -675f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, var_1, var_0.c.c.c.x, var_1) + vec4<f32>(global1.x, 229f, var_2.c.c.c.x, var_2.c.c.c.x))))))));
    return Struct_1(max(-_wgslsmith_add_i32(-8072i, 2147483647i) >> (~4294967295u % 32u), -_wgslsmith_add_i32(_wgslsmith_div_i32(-40264i, -54488i), 3426i)), _wgslsmith_div_i32(u_input.b.x, i32(-1i) * -u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -623f), 560f, var_1), reverseBits(vec3<i32>(-38421i, var_2.c.b.x, countOneBits(0i))), !var_0.a.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_1 {
    global1 = vec4<f32>(-2693f, 1092f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.c.x)) - global1.x));
    let var_0 = arg_1.b;
    var var_1 = vec4<bool>(~arg_1.d >= select(_wgslsmith_div_u32(4294967295u, arg_1.d), arg_1.d, any(func_2().e)), arg_0.e.x, arg_1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))) + -613f) == _wgslsmith_f_op_f32(-arg_0.c.x));
    let var_2 = Struct_2(var_1.yxx, var_0, Struct_1(arg_1.c.b, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(max(vec2<i32>(var_0.x, u_input.a.x), var_0.zy), ~var_0.yz), var_0.xx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-633f, -1138f, global1.x)))), var_0, func_2().e), max(64175u, 0u), arg_2.x);
    var var_3 = all(!(!(!(!vec2<bool>(arg_0.e.x, true)))));
    return Struct_1(-2147483647i, abs(1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(104f, arg_0.c.x, arg_1.c.c.x) * var_2.c.c))), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 7105i, abs(arg_1.c.b) ^ (i32(-1i) * -9094i)), (-arg_0.d ^ _wgslsmith_add_vec3_i32(vec3<i32>(-30174i, arg_0.d.x, var_0.x), vec3<i32>(arg_0.b, arg_0.a, 2147483647i))) & (vec3<i32>(2147483647i, 9085i, -2147483647i) & var_0)), !arg_0.e);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = false;
    global0 = array<vec3<i32>, 31>();
    var var_1 = Struct_5(_wgslsmith_f_op_f32(global1.x - arg_1.c.x), arg_0.x, arg_1.e.yy, !func_2().e.yz);
    let var_2 = true;
    global0 = array<vec3<i32>, 31>();
    return Struct_2(arg_1.e, vec3<i32>(-59389i, u_input.b.x, abs((u_input.a.x << (arg_0.x % 32u)) << (0u % 32u))), func_2(), ~(arg_0.x ^ ~1u), true);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: bool) -> Struct_2 {
    let var_0 = func_5(~vec3<u32>(~select(112910u, 25133u, false), 1u, 1u), func_4(func_2(), Struct_2(func_2().e, vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.b.x, u_input.a.x), 1i, ~u_input.a.x), func_2(), _wgslsmith_clamp_u32(10810u, 1u, 0u) | firstTrailingBit(1u), false), select(vec4<bool>(true, !arg_2, arg_2, false), !select(vec4<bool>(true, false, arg_2, arg_2), vec4<bool>(false, arg_2, false, arg_2), arg_2), any(func_2().e.xy))));
    var var_1 = var_0.c.c.x;
    var var_2 = var_0;
    var var_3 = func_5(vec3<u32>(var_0.d, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 0u, 89554u), ~(vec4<u32>(var_2.d, var_2.d, var_0.d, var_2.d) >> (vec4<u32>(var_2.d, 57112u, 6718u, var_0.d) % vec4<u32>(32u)))), select(var_2.d, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, var_0.d)), ~vec2<u32>(21895u, var_2.d)), !var_0.e)), func_4(var_0.c, Struct_2(!var_2.c.e, select(max(vec3<i32>(var_2.b.x, 1i, 2147483647i), vec3<i32>(var_0.b.x, u_input.a.x, var_2.b.x)), ~vec3<i32>(var_0.c.d.x, -21773i, u_input.a.x), true), func_5(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.d, 83368u, 26943u), vec3<u32>(72108u, var_0.d, var_2.d)), func_2()).c, var_2.d, true), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_2, var_2.e, arg_2, arg_2), true)));
    let var_4 = vec4<u32>(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(var_3.d, var_2.d)), _wgslsmith_add_vec2_u32(vec2<u32>(60647u, var_3.d) << (vec2<u32>(1u, var_3.d) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 0u))) | var_3.d, ~countOneBits((30713u << (var_0.d % 32u)) >> (116198u % 32u)), countOneBits(select(~select(var_0.d, var_0.d, arg_2), 4294967295u, func_5(vec3<u32>(var_0.d, 0u, var_3.d), Struct_1(var_2.c.b, var_3.b.x, vec3<f32>(-398f, global1.x, arg_1), vec3<i32>(-4216i, 0i, var_3.c.d.x), vec3<bool>(true, false, true))).a.x || true)), func_5(vec3<u32>(var_0.d ^ var_0.d, 1u, 1u), Struct_1(1i, -7016i, var_0.c.c, max(~global0[_wgslsmith_index_u32(var_0.d, 31u)], var_2.c.d ^ vec3<i32>(var_0.c.b, var_0.c.b, -25205i)), var_2.c.e)).d);
    return Struct_2(vec3<bool>(true && (-2147483647i >= var_2.b.x), any(vec2<bool>(true, var_2.c.e.x && var_0.a.x)), select(true, func_3(var_3.c.c, var_2.d) & arg_2, -15139i > (-8378i | var_0.b.x))), vec3<i32>(i32(-1i) * -2147483647i, var_0.c.b, _wgslsmith_mod_i32(-var_2.b.x, -(~var_3.b.x))), Struct_1(func_5(abs(var_4.yxy ^ var_4.xwz), Struct_1(~var_3.c.a, abs(u_input.b.x), _wgslsmith_f_op_vec3_f32(floor(global1.zwz)), var_2.b << (vec3<u32>(var_4.x, var_3.d, 0u) % vec3<u32>(32u)), !var_0.a)).c.d.x, countOneBits(var_3.c.b), vec3<f32>(678f, func_5(~var_4.xwy, func_4(var_0.c, Struct_2(vec3<bool>(var_3.a.x, false, var_0.e), vec3<i32>(var_2.c.d.x, -5510i, var_2.b.x), Struct_1(1i, u_input.a.x, var_0.c.c, var_3.b, vec3<bool>(var_0.a.x, true, arg_2)), var_0.d, var_2.c.e.x), vec4<bool>(false, var_3.e, arg_2, arg_2))).c.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.c.x), -122f)), func_5(vec3<u32>(func_5(var_4.xyy, var_3.c).d, 28831u, 20868u), Struct_1(-var_2.c.d.x, -56576i, var_0.c.c, global0[_wgslsmith_index_u32(~var_2.d, 31u)], vec3<bool>(var_2.c.e.x, true, true))).c.d, var_2.a), ~0u, false);
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = arg_1.c;
    let var_1 = -2147483647i;
    var var_2 = Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))))), arg_1.d, vec2<bool>(!all(vec2<bool>(true, false)), func_2().e.x), func_5(vec3<u32>(4294967295u, arg_1.d, 9953u), var_0).c.e.xz);
    let var_3 = func_5(select(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.d, 4191u, var_2.b), vec3<u32>(0u, var_2.b, 4294967295u)), ~(~(vec3<u32>(0u, 50402u, 23921u) | vec3<u32>(29420u, 943u, var_2.b))), var_2.c.x), Struct_1(arg_1.b.x, ~(-2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(235f, _wgslsmith_f_op_f32(f32(-1f) * -1050f), _wgslsmith_f_op_f32(f32(-1f) * -705f))), vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_1, var_0.d.x, var_0.d.x), global0[_wgslsmith_index_u32(min(77341u, arg_1.d), 31u)]), countOneBits(_wgslsmith_sub_i32(-1i, var_1)), func_2().a), arg_1.a));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-253f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + _wgslsmith_f_op_f32(996f * var_3.c.c.x)))))), _wgslsmith_f_op_f32(var_3.c.c.x - global1.x), 597f, -789f);
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(106713u, ~(~(~(~27299u))), any(select(vec3<bool>(true, -655f != global1.x, 1i >= u_input.b.x), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), false))));
    let var_1 = vec4<i32>(2009i, u_input.a.x, -28711i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(40663i, u_input.b.x), u_input.a.x));
    var var_2 = Struct_2(!(!func_6(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1512f, global1.x, global1.x, 775f))), func_1(global1.x, global1.x, false))), vec3<i32>(_wgslsmith_clamp_i32(1i, ~(-9085i), _wgslsmith_mult_i32(u_input.a.x, 2147483647i)), ~(-2147483647i), var_1.x) << (~_wgslsmith_add_vec3_u32(~vec3<u32>(0u, var_0, var_0), vec3<u32>(12661u, var_0, 25455u) & vec3<u32>(var_0, 16885u, var_0)) % vec3<u32>(32u)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(617f, 425f, true).c.c.x)), -525f, false && (-720f >= _wgslsmith_f_op_f32(exp2(global1.x)))).c, countOneBits(0u) | firstTrailingBit(func_1(134f, _wgslsmith_f_op_f32(select(-1151f, -916f, true)), true).d), true);
    let var_3 = vec2<i32>(_wgslsmith_mult_i32(-1592i, u_input.b.x), ~min(~(~var_2.c.d.x), -15320i));
    let var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(~(~1u), _wgslsmith_mod_u32(0u, 57080u) >> (var_0 % 32u), var_0), vec3<u32>(firstTrailingBit(~4294967295u), _wgslsmith_mod_u32(~42094u, var_2.d), max(~0u, var_2.d))) >> (select(~(~select(vec3<u32>(0u, var_0, 121793u), vec3<u32>(var_0, var_0, 0u), var_2.a)), vec3<u32>(var_2.d, func_1(1559f, var_2.c.c.x, 35177u >= var_0).d, 55962u), !vec3<bool>(select(var_2.e, var_2.c.e.x, true), false, func_5(vec3<u32>(var_2.d, 10982u, 1u), var_2.c).c.e.x)) % vec3<u32>(32u));
    var var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(-1156f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, func_4(var_2.c, Struct_2(var_2.c.e, vec3<i32>(var_1.x, -1i, var_1.x), Struct_1(2147483647i, 35009i, global1.ywy, vec3<i32>(var_1.x, var_1.x, -9327i), vec3<bool>(true, false, false)), 55675u, false), vec4<bool>(var_2.e, var_2.a.x, false, false)).c.x, _wgslsmith_f_op_f32(1000f * var_2.c.c.x), _wgslsmith_f_op_f32(-146f * var_2.c.c.x)))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, 1u, var_0), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.d, 0u, 13950u, var_0), vec4<u32>(1u, var_0, 4294967295u, var_0))), ~(~var_4.x), var_2.d), var_4));
}

