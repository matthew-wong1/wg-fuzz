struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec2<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_mod_u32(~(~firstTrailingBit(0u)), arg_0);
    let var_1 = vec2<i32>(u_input.a.x, u_input.a.x);
    var var_2 = Struct_1(countOneBits(~(-vec3<i32>(-17574i, u_input.a.x, 44684i))), true, all(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), vec2<bool>(true, false), !all(vec4<bool>(false, false, false, true)))));
    let var_3 = _wgslsmith_mod_i32(~_wgslsmith_add_i32(11130i, abs(2716i)) & ~_wgslsmith_add_i32(5386i, firstTrailingBit(u_input.a.x)), -(-1i & var_2.a.x));
    var_0 = 4294967295u;
    return ~(~(~(~(~vec3<u32>(arg_0, arg_0, u_input.b)))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_sub_vec2_u32(abs(countOneBits(arg_1.zy)), ~(~vec2<u32>(1u, ~arg_2.c.x)));
    let var_1 = 49696u;
    var_0 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_2.c.x, _wgslsmith_mult_u32(var_0.x, 0u), _wgslsmith_div_u32(arg_0.c.b, var_1), 21994u), ~vec4<u32>(var_1, 1u, 1u, 86037u) & ~vec4<u32>(4294967295u, 4294967295u, 0u, arg_0.c.b)), ~(~(~30786u))), 1u);
    let var_2 = Struct_1(_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, -u_input.a.x, arg_0.b)), false || (~(~arg_1.x) < ~arg_0.c.b), false);
    let var_3 = _wgslsmith_f_op_f32(-arg_2.b);
    return true;
}

fn func_2() -> Struct_4 {
    var var_0 = -241f;
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_sub_vec3_i32(abs(u_input.a), u_input.a) & firstLeadingBit(u_input.a & u_input.a)), false, func_4(Struct_5(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), -(u_input.a.x ^ 2147483647i), Struct_3(vec4<bool>(false, false, false, true), ~51278u, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), 2147483647i, Struct_1(u_input.a, false, false))), _wgslsmith_add_vec3_u32(func_3(1u, -1734f, vec2<f32>(-929f, 1198f)), firstLeadingBit(vec3<u32>(37798u, u_input.b, u_input.b))) << ((~vec3<u32>(36278u, u_input.b, u_input.b) << (abs(vec3<u32>(4294967295u, u_input.b, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_2(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-950f)), -2283f), vec2<u32>(12861u & u_input.b, select(u_input.b, 18545u, false)), false), false));
    var_1 = Struct_1(vec3<i32>(~(var_1.a.x & 1031i) << (max(u_input.b, 22583u) % 32u), -u_input.a.x, u_input.a.x), false, var_1.c);
    var var_2 = vec4<i32>(var_1.a.x, 2971i, -22378i, var_1.a.x) ^ _wgslsmith_sub_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.x, -11532i, var_1.a.x, 2147483647i), -vec4<i32>(0i, var_1.a.x, 2147483647i, 21663i)), vec4<i32>((u_input.a.x & -2147483647i) ^ max(u_input.a.x, var_1.a.x), abs(-u_input.a.x), 1125i, firstTrailingBit(32811i)));
    var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, var_1.a.x) ^ select(vec3<i32>(2147483647i, var_1.a.x, 38898i), vec3<i32>(0i, var_2.x, var_1.a.x), var_1.c), countOneBits(vec3<i32>(31985i, u_input.a.x, 14917i)), u_input.a) >> (vec3<u32>(~u_input.b | u_input.b, 1u, countOneBits(6423u)) % vec3<u32>(32u)), !(~_wgslsmith_clamp_i32(-1i, -7719i, var_2.x) >= var_2.x), all(select(select(vec2<bool>(var_1.c, false), !vec2<bool>(false, var_1.b), select(vec2<bool>(var_1.b, var_1.c), vec2<bool>(var_1.c, false), vec2<bool>(var_1.b, var_1.b))), vec2<bool>(var_1.c, !var_1.c), any(vec4<bool>(true, false, true, true)))));
    return Struct_4(var_2.x, -20437i, true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-154f, -517f), vec2<f32>(-501f, -2263f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1665f * -185f), _wgslsmith_div_f32(888f, -633f)))));
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1071f));
    var var_1 = func_2();
    let var_2 = Struct_1(u_input.a & vec3<i32>(var_1.a, select(-25176i, -4717i, var_1.c && true), var_1.a << (25599u % 32u)), any(!select(vec3<bool>(var_1.c, var_1.c, var_1.c), vec3<bool>(var_1.c, true, var_1.c), var_1.c)) && !var_1.c, false);
    var var_3 = vec2<u32>(u_input.b, 1u);
    let var_4 = Struct_2(var_1.c & true, var_1.d.x, abs(countOneBits(~abs(vec2<u32>(var_3.x, 1u)))), true);
    return select(select(vec4<bool>(var_4.a, var_4.a, var_4.a && true, all(select(vec2<bool>(var_4.d, var_1.c), vec2<bool>(true, true), vec2<bool>(true, var_2.c)))), vec4<bool>(!any(vec2<bool>(false, var_4.d)), var_1.c, any(vec3<bool>(var_1.c, true, var_1.c)), var_4.c.x <= firstTrailingBit(4294967295u)), var_4.d), select(vec4<bool>(0i <= firstLeadingBit(u_input.a.x), var_2.b, false, (var_3.x > var_4.c.x) & var_1.c), select(vec4<bool>(false, true, var_4.a, true), select(!vec4<bool>(true, var_2.c, var_2.b, var_1.c), select(vec4<bool>(var_4.d, false, var_2.c, false), vec4<bool>(false, true, false, false), true), var_1.b < u_input.a.x), select(!vec4<bool>(var_4.a, var_1.c, var_2.b, var_2.c), select(vec4<bool>(var_4.d, var_1.c, true, var_1.c), vec4<bool>(var_4.a, false, false, var_4.d), vec4<bool>(false, true, var_2.c, true)), false)), !(!(!var_4.a))), vec4<bool>(true, func_2().c, var_1.c, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(), ~(~(~37129u)), ~(-(u_input.a ^ select(u_input.a, u_input.a, vec3<bool>(true, false, true)))), u_input.a.x, Struct_1(select(u_input.a, reverseBits(min(vec3<i32>(u_input.a.x, u_input.a.x, -21176i), u_input.a)), _wgslsmith_f_op_f32(trunc(103f)) < _wgslsmith_f_op_f32(f32(-1f) * -400f)), !(!func_4(Struct_5(vec3<bool>(true, true, true), 4822i, Struct_3(vec4<bool>(false, false, true, true), u_input.b, u_input.a, 2147483647i, Struct_1(vec3<i32>(1i, -1i, -2147483647i), true, false))), vec3<u32>(u_input.b, u_input.b, 41466u), Struct_2(false, -958f, vec2<u32>(34743u, u_input.b), true), false)), true));
    let var_1 = max(~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 60557u), vec2<u32>(51158u, u_input.b)), ~vec2<u32>(6497u, u_input.b)), firstTrailingBit(abs(vec2<u32>(var_0.b, u_input.b)))), reverseBits(~(~vec2<u32>(var_0.b, 7995u) << (vec2<u32>(var_0.b, 1u) % vec2<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-418f, -852f, -229f, 654f), vec4<f32>(720f, -255f, -168f, 840f), var_0.a.x)), vec4<f32>(448f, 1594f, -927f, -360f))))))));
    var_0 = Struct_3(vec4<bool>(true, any(vec3<bool>(var_0.e.c && true, true, true)), var_0.a.x, u_input.a.x != abs(var_0.d)), ~firstTrailingBit(~(var_1.x | var_1.x)), var_0.c, u_input.a.x, Struct_1(_wgslsmith_mult_vec3_i32(~(vec3<i32>(-1i, u_input.a.x, u_input.a.x) << (vec3<u32>(u_input.b, var_1.x, u_input.b) % vec3<u32>(32u))), var_0.e.a), ~_wgslsmith_div_i32(u_input.a.x, -6390i) == firstLeadingBit(min(-12646i, u_input.a.x)), any(!(!vec4<bool>(var_0.e.c, false, var_0.a.x, true)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2 - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_2))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1, ~(~vec4<i32>(0i, -43283i, -1i, _wgslsmith_dot_vec3_i32(var_0.e.a, vec3<i32>(var_0.d, var_0.d, u_input.a.x)))));
}

