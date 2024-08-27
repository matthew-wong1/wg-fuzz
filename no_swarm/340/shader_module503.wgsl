struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> f32 {
    let var_0 = Struct_3(reverseBits(firstLeadingBit(~(vec2<i32>(-1i, -11074i) ^ vec2<i32>(u_input.d, -17372i)))), vec2<i32>(u_input.d, u_input.d), arg_0.x | false);
    let var_1 = vec3<i32>(abs(_wgslsmith_mult_i32(~firstLeadingBit(u_input.d), -2147483647i)), var_0.b.x & u_input.b, -_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0.a.x, -16941i, u_input.b, 1i), vec4<i32>(1i, -1i, var_0.b.x, u_input.b), vec4<bool>(true, arg_0.x, true, arg_0.x)), -vec4<i32>(26073i, 2147483647i, -9437i, var_0.a.x)) << (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, 58469u, 0u, 4294967295u) & vec4<u32>(arg_1, arg_1, u_input.c.x, arg_1)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(arg_1, 4294967295u, 5347u, arg_1)), vec4<u32>(arg_1, 39396u, 1u, 1u) >> (vec4<u32>(u_input.e, 87256u, 0u, arg_1) % vec4<u32>(32u)))) % 32u));
    let var_2 = Struct_1(1000f, u_input.c.x, abs(u_input.a.x), select(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, u_input.a.x, u_input.c.x, 19346u), vec4<u32>(u_input.e, arg_1, 1u, 4294967295u)) << (vec4<u32>(33955u, arg_1, 41122u, arg_1) % vec4<u32>(32u))), vec4<u32>(arg_1, 76815u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(arg_1, u_input.c.x, u_input.c.x)), vec3<u32>(arg_1, 18176u, 56350u)), 4294967295u), vec4<bool>(var_0.c, false, any(vec2<bool>(false, false)), _wgslsmith_f_op_f32(max(-262f, 252f)) < _wgslsmith_f_op_f32(step(-1014f, -318f)))));
    let var_3 = ~23172i;
    var var_4 = var_0;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1439f)) - _wgslsmith_f_op_f32(-var_2.a))))))));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(vec4<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(true, false, false, true)), all(vec4<bool>(true, true, true, true)), true), 1u)), ~abs(0u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c.x, ~0u, _wgslsmith_mult_u32(0u, u_input.a.x), 4294967295u << (u_input.c.x % 32u)), ~(~vec4<u32>(28721u, 45427u, 20769u, u_input.e)))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.e), _wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, u_input.a)), reverseBits(~27262u), ~(~4294967295u), ~u_input.c.x << (firstLeadingBit(u_input.c.x) % 32u)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-126f))), u_input.e, var_0.d.x, _wgslsmith_mult_vec4_u32(var_0.d, firstTrailingBit(var_0.d) | vec4<u32>(22594u, 125147u, _wgslsmith_sub_u32(u_input.e, var_0.c), ~137225u)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(3152f, _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(min(2107f, var_0.a)))))), var_0.c, reverseBits(5627u), ~_wgslsmith_add_vec4_u32((var_0.d << (var_0.d % vec4<u32>(32u))) >> (vec4<u32>(1u, 30875u, 4294967295u, 969u) % vec4<u32>(32u)), ~(~var_0.d)));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -423f))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-227f + _wgslsmith_f_op_f32(round(985f)))));
    return !(!select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), vec3<bool>(false, true, true), all(vec2<bool>(false, true))));
}

fn func_1() -> f32 {
    var var_0 = !(!select(vec3<bool>(true, true, false), vec3<bool>(any(vec2<bool>(true, true)), false, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))));
    let var_1 = Struct_3(vec2<i32>(abs(~2147483647i << (_wgslsmith_div_u32(6214u, u_input.e) % 32u)), u_input.d), _wgslsmith_mult_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(-79737i, u_input.d), -vec2<i32>(u_input.b, -31566i)), ~vec2<i32>(u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(34022i, 6974i, -1i), vec3<i32>(27705i, -1i, u_input.d)))), false);
    let var_2 = 24164u;
    var var_3 = var_1;
    var_0 = select(select(select(select(vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(false, var_1.c, var_3.c), vec3<bool>(true, var_3.c, true), true), true), vec3<bool>(true, true, true), select(select(vec3<bool>(var_1.c, var_3.c, var_3.c), vec3<bool>(false, var_3.c, var_3.c), vec3<bool>(false, var_1.c, var_3.c)), select(vec3<bool>(false, var_1.c, true), vec3<bool>(var_3.c, true, true), var_0.x), vec3<bool>(false, true, true))), func_2(), !select(select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_3.c, var_1.c, var_1.c)), vec3<bool>(var_1.c, var_1.c, var_3.c), !vec3<bool>(false, var_3.c, true))), vec3<bool>(!(!var_3.c), !var_0.x, false), false);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(166f - -392f) - _wgslsmith_f_op_f32(-174f - 182f)) * -988f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))) + -1168f);
}

fn func_4(arg_0: f32) -> vec3<bool> {
    var var_0 = Struct_3(vec2<i32>(countOneBits(u_input.d), u_input.b), -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.d), countOneBits(vec2<i32>(u_input.d, u_input.d))) >> (vec2<u32>(countOneBits(u_input.a.x), _wgslsmith_clamp_u32(1u, u_input.e, 0u) << (~94727u % 32u)) % vec2<u32>(32u)), true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-828f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) + -585f)))), u_input.c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(13136u, 1u, 126823u, 0u), vec4<u32>(4294967295u, u_input.e, 15577u, u_input.a.x)), firstLeadingBit(select(vec4<u32>(4294967295u, 0u, 94283u, u_input.a.x), vec4<u32>(u_input.e, u_input.a.x, u_input.a.x, u_input.e), true))), vec4<u32>(5436u, min(reverseBits(0u), ~u_input.a.x), 40900u, ~abs(u_input.e))), select(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(32729u, 1u, 4430u, 4294967295u), vec4<u32>(u_input.e, u_input.e, 4294967295u, u_input.a.x)), abs(vec4<u32>(129135u, 4294967295u, u_input.c.x, 36209u))) ^ vec4<u32>(u_input.a.x, ~u_input.c.x, u_input.c.x, u_input.e), vec4<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.a.x, 1u), u_input.c) | (u_input.e & 38196u), u_input.e, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(25197u, u_input.a.x, u_input.c.x, 46050u), vec4<u32>(14587u, 0u, u_input.a.x, 60490u)), _wgslsmith_div_vec4_u32(vec4<u32>(91354u, 95592u, u_input.e, u_input.c.x), vec4<u32>(u_input.e, u_input.a.x, u_input.e, u_input.e)))), !vec4<bool>(var_0.c, false, true, true)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1930f)))), 4294967295u, max(56909u, u_input.a.x), var_1.d);
    let var_2 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~abs(var_1.d.ywy), ~u_input.c), 4294967295u);
    var_0 = Struct_3(var_0.a >> (_wgslsmith_add_vec2_u32(u_input.a, var_1.d.xx) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-18746i | u_input.d, -29902i), -select(-vec2<i32>(2147483647i, 0i), -vec2<i32>(4487i, 0i), false), var_0.b), var_0.b.x == firstTrailingBit(1i));
    return !(!select(vec3<bool>(select(false, false, var_0.c), true, true), vec3<bool>(var_0.c, var_0.c, true), any(select(vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, var_0.c), var_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-306f - 633f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -199f), -388f)));
    var var_1 = Struct_3(~(~_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(1i, 1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(u_input.b, u_input.d)))), ~(min(vec2<i32>(u_input.b, -108012i), select(vec2<i32>(-2147483647i, 75050i), vec2<i32>(u_input.d, u_input.b), var_0.x)) & ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.d, -2147483647i))), false);
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(55210u, _wgslsmith_dot_vec2_u32(vec2<u32>(13184u, 0u) ^ ~u_input.a, ~vec2<u32>(0u, u_input.a.x))), u_input.a, select(~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xy, vec2<u32>(u_input.e, 9748u)), _wgslsmith_sub_u32(4294967295u, u_input.e)), select(~u_input.a, u_input.c.xx, !vec2<bool>(false, var_0.x)), var_0.xz));
    var var_3 = firstLeadingBit(vec4<i32>(-1i) * -(max(vec4<i32>(-1i, -2147483647i, 31265i, 1i), vec4<i32>(var_1.b.x, 16605i, -2147483647i, var_1.b.x)) >> (reverseBits(vec4<u32>(1u, var_2.x, u_input.a.x, u_input.e)) % vec4<u32>(32u))));
    var var_4 = 1u;
    let var_5 = _wgslsmith_mult_vec3_i32(var_3.wzx | (vec3<i32>(_wgslsmith_div_i32(var_3.x, var_1.a.x), _wgslsmith_add_i32(var_3.x, u_input.d), 2147483647i) & vec3<i32>(~u_input.d, 25217i, 2147483647i)), var_3.wyx);
    let var_6 = !select(vec4<bool>(!(!var_0.x), false, var_1.c, !select(var_0.x, false, true)), !vec4<bool>(true, true, false, !var_0.x), any(var_0.zz));
    let x = u_input.a;
    s_output = StorageBuffer(-1593f, ~(firstLeadingBit(var_2.x) >> (~var_2.x % 32u)));
}

