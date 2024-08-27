struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_2(arg_0);
    let var_1 = arg_2.e;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-110f, -1000f))) + arg_2.a), arg_2.b, !(!arg_2.c), arg_2.d, countOneBits(_wgslsmith_sub_u32(var_1, _wgslsmith_sub_u32(22761u, var_1) >> (u_input.a % 32u))));
    var var_3 = _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(38753u, u_input.a), vec2<u32>(11263u, var_1)), vec2<u32>(12067u, var_1)), ~(vec2<u32>(~1u, u_input.a) >> (vec2<u32>(u_input.a, var_2.e) % vec2<u32>(32u))));
    let var_4 = select(vec4<bool>(true && var_0.a, arg_2.c.x, any(!vec4<bool>(arg_2.c.x, arg_2.c.x, arg_0, false)), any(vec3<bool>(true, !var_0.a, true))), !select(select(vec4<bool>(arg_0, var_2.c.x, false, var_2.c.x), !vec4<bool>(arg_0, arg_0, true, false), any(vec4<bool>(var_2.c.x, true, true, arg_2.c.x))), !select(vec4<bool>(true, var_0.a, true, arg_0), vec4<bool>(arg_0, arg_2.c.x, var_2.c.x, arg_0), vec4<bool>(arg_2.c.x, false, false, true)), select(vec4<bool>(arg_2.c.x, true, false, var_2.c.x), !vec4<bool>(arg_2.c.x, arg_2.c.x, false, var_2.c.x), var_2.c.x)), (true && all(!vec4<bool>(true, false, false, var_2.c.x))) == true);
    return 11616u;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: vec4<f32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -418f)) - _wgslsmith_f_op_vec2_f32(-arg_1))) + arg_2.ww), vec2<i32>(~1i, -2147483647i), vec2<bool>(false, select(select(any(vec3<bool>(false, false, false)), true, false), any(vec4<bool>(true, true, true, true)), false)), arg_2.x, ~42763u);
    var var_1 = ~_wgslsmith_sub_u32(func_3(true, _wgslsmith_f_op_f32(max(-290f, _wgslsmith_f_op_f32(-arg_2.x))), Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a * arg_3.wx), var_0.b, !var_0.c, _wgslsmith_f_op_f32(arg_1.x * arg_3.x), ~4294967295u)), firstLeadingBit(firstTrailingBit(4294967295u)));
    var_1 = 0u;
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(5454i, -12178i, 0i), vec3<i32>(-1i, var_0.b.x, var_0.b.x)), -var_0.b.x), -firstLeadingBit(_wgslsmith_add_i32(var_0.b.x, var_0.b.x))), _wgslsmith_mod_i32(var_0.b.x, i32(-1i) * -5875i));
    return all(!vec2<bool>(!var_0.c.x, var_0.c.x));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-956f, -629f, true))));
    var var_1 = Struct_2(_wgslsmith_div_u32(u_input.a, ~(~u_input.a)) > _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 54197u), abs(vec2<u32>(u_input.a, u_input.a))), u_input.a));
    let var_2 = false;
    var var_3 = Struct_2(false);
    var_1 = Struct_2(func_4(abs(firstLeadingBit(func_3(var_2, var_0, Struct_1(vec2<f32>(-427f, var_0), vec2<i32>(-30770i, -1i), vec2<bool>(true, var_1.a), var_0, u_input.a)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2552f, var_0)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 672f))))), vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(254f, -593f) * _wgslsmith_f_op_f32(var_0 + var_0)), var_0, -748f)));
    return Struct_2(all(!vec4<bool>(var_1.a, true, true, false)));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    let var_0 = select(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, 114741u) ^ 25057u, ~(~70459u), ~u_input.a << (_wgslsmith_clamp_u32(78426u, 0u, u_input.a) % 32u)) ^ ~(u_input.a & abs(u_input.a)), max(u_input.a, _wgslsmith_mult_u32(u_input.a, _wgslsmith_div_u32(u_input.a & 78621u, min(56004u, u_input.a)))), (_wgslsmith_add_u32(func_3(arg_2.a, 1050f, Struct_1(vec2<f32>(1335f, -1000f), vec2<i32>(-38135i, -27439i), vec2<bool>(true, false), -654f, 43059u)), ~65072u) > ~(~96641u)) || !(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 34670u), vec4<u32>(3279u, u_input.a, u_input.a, 1u)) >= (u_input.a | u_input.a)));
    let var_1 = ~(~(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(72677u, 1u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 17050u))));
    let var_2 = arg_2;
    let var_3 = Struct_1(vec2<f32>(847f, -181f), vec2<i32>(1i, 1i), select(vec2<bool>(true, true), !select(select(vec2<bool>(true, arg_2.a), vec2<bool>(false, arg_2.a), true), vec2<bool>(true, arg_2.a), true), arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1155f))))), _wgslsmith_sub_u32(firstTrailingBit(u_input.a), max(5091u, var_1)));
    let var_4 = ~countOneBits(firstLeadingBit(vec4<u32>(var_1, 913u, 39412u, 4294967295u))) ^ ~(~(~vec4<u32>(2296u, var_3.e, u_input.a, 1u)) << (max(firstLeadingBit(vec4<u32>(0u, 39428u, var_1, 1u)), vec4<u32>(u_input.a, 4294967295u, u_input.a, 20295u) ^ vec4<u32>(4294967295u, var_1, var_0, var_0)) % vec4<u32>(32u)));
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    let var_1 = 7612u;
    var var_2 = arg_0.c;
    let var_3 = func_5(func_2(), !(!var_0.c.x && select(arg_0.c.x, var_2.x, true)), Struct_2(func_2().a && var_2.x));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), vec2<i32>(arg_0.b.x, 1i) ^ _wgslsmith_mult_vec2_i32(abs(vec2<i32>(arg_0.b.x, -2147483647i)) & var_0.b, ~max(var_0.b, arg_0.b)), vec2<bool>(var_0.c.x, -_wgslsmith_add_i32(var_0.b.x, arg_0.b.x) < _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.b.x, -47902i), var_0.b.x)), _wgslsmith_f_op_f32(-var_0.d), 135080u);
    return _wgslsmith_f_op_f32(floor(var_4.d));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = arg_1.a.x;
    var var_1 = 48289u;
    var var_2 = vec3<i32>(-1i) * -(~firstTrailingBit(~vec3<i32>(3838i, 2147483647i, 0i)));
    var var_3 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2, 114974u, arg_2) << (vec3<u32>(2288u, arg_1.e, ~4294967295u) % vec3<u32>(32u)), select(~vec3<u32>(30128u, 0u, arg_1.e) ^ ~vec3<u32>(u_input.a, u_input.a, arg_1.e), select(vec3<u32>(20940u, arg_2, arg_2), ~vec3<u32>(4294967295u, u_input.a, arg_1.e), vec3<bool>(false, arg_1.c.x, true)), vec3<bool>(arg_1.c.x & false, false, any(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x)))));
    var var_4 = vec3<i32>(~(~(i32(-1i) * -1i)), var_2.x, ~max(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(abs(var_2.x), abs(0i))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2243f - -978f), _wgslsmith_f_op_f32(1523f * 758f), _wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(-1104f, 1732f), vec2<i32>(2147483647i, -20345i), vec2<bool>(true, false), 1203f, u_input.a))), _wgslsmith_f_op_f32(sign(-702f))))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1159f, 1672f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1528f) * vec2<f32>(-445f, -861f))), vec2<f32>(_wgslsmith_div_f32(-852f, -2297f), -1651f), vec2<bool>(true, true))), ~(~vec2<i32>(1i, 1i)), vec2<bool>(all(vec2<bool>(false, false)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-504f, -273f))))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 4294967295u, 18015u) | vec4<u32>(u_input.a, 0u, u_input.a, 5236u), vec4<u32>(u_input.a, 43338u, 4294967295u, 8754u) >> (vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) % vec4<u32>(32u)))), u_input.a);
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1933f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1299f - -398f) + -713f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-592f)), 875f))))), _wgslsmith_div_vec2_i32(~(-reverseBits(vec2<i32>(-32323i, 0i))), ~vec2<i32>(1i, _wgslsmith_add_i32(-15747i, 25910i))), vec2<bool>(true, select(false == var_0.a, true, var_0.a) & var_0.a), _wgslsmith_f_op_f32(step(-436f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1115f, _wgslsmith_f_op_f32(round(-1578f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-2520f))))))), u_input.a | _wgslsmith_div_u32(0u, select(_wgslsmith_div_u32(u_input.a, u_input.a), 1u, true)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, -1319f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-405f + -613f), -639f)))), ~_wgslsmith_div_vec2_i32(var_1.b, var_1.b), vec2<bool>(true, (91913u << ((u_input.a | 5096u) % 32u)) >= reverseBits(u_input.a >> (u_input.a % 32u))), -680f, _wgslsmith_add_u32(firstLeadingBit(var_1.e), ~var_1.e));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-518f - var_1.a.x) * _wgslsmith_f_op_f32(-1726f + var_1.a.x))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-557f, _wgslsmith_f_op_f32(func_1(Struct_1(var_2.a, var_1.b, var_2.c, 525f, u_input.a))))))), vec2<i32>(select(reverseBits(var_2.b.x), var_1.b.x & var_1.b.x, var_1.c.x), i32(-1i) * -var_1.b.x) >> (_wgslsmith_mult_vec2_u32(abs(~vec2<u32>(var_2.e, u_input.a)), ~(~vec2<u32>(var_2.e, 4294967295u))) % vec2<u32>(32u)), var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(834f))) + var_1.d)), 89412u);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-995f, _wgslsmith_f_op_f32(trunc(1219f))))));
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_2.a), vec2<i32>(~firstLeadingBit(var_2.b.x & 53747i), i32(-1i) * -1i), !(!select(!var_3.c, vec2<bool>(var_2.c.x, var_0.a), !var_1.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(567f)), var_2.d), _wgslsmith_dot_vec2_u32(min(~(vec2<u32>(1u, 108086u) ^ vec2<u32>(var_1.e, var_1.e)), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, var_2.e)), ~vec2<u32>(var_3.e, var_3.e), ~vec2<u32>(var_2.e, var_2.e))), vec2<u32>(reverseBits(~var_1.e), min(var_3.e, u_input.a))));
    var_5 = var_3;
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(951f, -424f, var_1.a.x, 1000f)))) * vec4<f32>(var_5.a.x, var_1.d, 856f, _wgslsmith_f_op_f32(-1000f * var_2.d)))), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(var_2.b.x >> (4534u % 32u), max(var_2.b.x, 9300i), ~(-44634i))), ~reverseBits(~vec3<i32>(var_1.b.x, 1i, var_3.b.x))));
}

