struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    var var_0 = select(select(select(vec3<bool>(all(vec4<bool>(false, true, true, true)), true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(u_input.e != u_input.e, true, true)), false & (u_input.d <= abs(u_input.d))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), true)) == false);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-740f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1259f, 1158f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -843f), _wgslsmith_div_f32(-1271f, -1148f))))));
    var var_2 = ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(77402u, u_input.b.x, 4294967295u, u_input.b.x)) | vec4<u32>(reverseBits(u_input.a), u_input.b.x >> (u_input.b.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 39127u, u_input.a, u_input.b.x), vec4<u32>(0u, u_input.a, u_input.b.x, u_input.b.x)), u_input.b.x & u_input.b.x), vec4<u32>(~abs(81650u), 18427u, min(_wgslsmith_mult_u32(u_input.b.x, u_input.a), ~u_input.a), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b) | (u_input.a << (u_input.b.x % 32u))));
    global0 = countOneBits(firstTrailingBit(3984u));
    var var_3 = Struct_3(Struct_1(-2380f), select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(true, select(!var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_f32(step(var_1.x, var_1.x)) == _wgslsmith_f_op_f32(step(var_1.x, 313f)), false), vec4<bool>(true, all(var_0.yy), all(!var_0.yx), var_0.x)), ~(-(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.d), vec2<i32>(7133i, u_input.e)) & reverseBits(vec2<i32>(-49338i, -4856i)))), vec3<i32>(-(1i | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -22950i, u_input.e, u_input.e), vec4<i32>(u_input.c, u_input.e, u_input.d, u_input.e))), 1i, _wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-11144i, u_input.e, u_input.d, 0i), vec4<i32>(2147483647i, u_input.c, u_input.e, -36597i)), ~(u_input.c >> (7843u % 32u)))));
    return !var_3.b.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec3<bool>) -> vec3<u32> {
    global0 = 4294967295u;
    return vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4294967295u, 1u), ~(~74772u)), abs(u_input.b ^ reverseBits(vec2<u32>(u_input.b.x, u_input.b.x)))), _wgslsmith_dot_vec3_u32(~max(vec3<u32>(u_input.b.x, 0u, u_input.a) >> (vec3<u32>(u_input.b.x, 1u, 38850u) % vec3<u32>(32u)), max(vec3<u32>(0u, u_input.b.x, 0u), vec3<u32>(u_input.a, u_input.b.x, u_input.a))), select(countOneBits(vec3<u32>(u_input.b.x, u_input.a, 2261u)) & ~vec3<u32>(u_input.b.x, u_input.a, u_input.a), select(~vec3<u32>(10341u, u_input.b.x, 83389u), vec3<u32>(u_input.b.x, 1u, u_input.b.x) | vec3<u32>(1u, u_input.b.x, u_input.a), vec3<bool>(true, false, false)), false)), u_input.b.x);
}

fn func_2(arg_0: i32, arg_1: bool) -> i32 {
    global0 = ~u_input.a;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f));
    let var_1 = vec3<u32>(~(~108545u), u_input.b.x, 46322u) & func_4(vec2<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.d, -14557i, -33518i)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -21143i, arg_0), vec3<i32>(arg_0, u_input.e, u_input.d))), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, arg_0)), Struct_3(Struct_1(-977f), select(!vec4<bool>(arg_1, arg_1, true, arg_1), select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1), arg_1), vec4<bool>(arg_1, false, arg_1, arg_1)), ~(-vec2<i32>(arg_0, arg_0)), vec3<i32>(u_input.c, 1i, ~arg_0)), vec3<bool>(arg_1, 52879u != ~u_input.b.x, func_3()));
    var var_2 = ~18097u;
    var_2 = var_1.x;
    return _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -16122i), vec2<i32>(u_input.e, arg_0)), _wgslsmith_sub_i32(-1i, 1i), u_input.d), firstLeadingBit(-vec4<i32>(u_input.e, 7135i, arg_0, arg_0)), vec4<i32>(_wgslsmith_clamp_i32(0i, arg_0, 0i), _wgslsmith_mod_i32(u_input.e, 1i), -1i, 20921i)), reverseBits(-(~vec4<i32>(0i, arg_0, u_input.e, arg_0)) << (countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, var_1.x), vec4<u32>(88475u, var_1.x, 1u, 0u))) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(5692i, -2147483647i, -2147483647i, firstLeadingBit(u_input.c)), vec4<i32>(func_2(u_input.e, true), arg_0.a.d.x, select(_wgslsmith_add_i32(arg_0.a.c.x, u_input.d), arg_0.a.c.x, arg_0.a.b.x), ~arg_0.a.d.x)), -1i);
    let var_1 = false;
    global0 = _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(u_input.a, u_input.b.x, 25063u, 10409u))), ~vec4<u32>(~u_input.a, 1u, 24624u, max(0u, 16620u))));
    let var_2 = vec4<f32>(-2816f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.a * -868f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-470f, arg_0.a.a.a))))), arg_0.a.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.a.a.a, arg_0.a.a.a)))));
    var_0 = -(-52602i | u_input.c);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(112f * var_2.x) + _wgslsmith_f_op_f32(var_2.x - var_2.x)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>) -> vec3<u32> {
    var var_0 = u_input.c;
    let var_1 = func_1(Struct_4(Struct_3(func_1(Struct_4(Struct_3(Struct_1(arg_0.b.a), vec4<bool>(false, false, false, true), vec2<i32>(u_input.e, u_input.e), vec3<i32>(-22017i, -2147483647i, 2147483647i)))), vec4<bool>(true, true, true, true), -firstTrailingBit(vec2<i32>(u_input.e, u_input.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.c, u_input.e) & vec3<i32>(1i, 2147483647i, u_input.c), -vec3<i32>(u_input.e, 2147483647i, u_input.c)))));
    let var_2 = vec4<bool>(true, ~firstTrailingBit(_wgslsmith_sub_i32(-2147483647i, u_input.d)) < (-7247i >> (u_input.a % 32u)), all(!vec2<bool>(any(vec2<bool>(false, false)), func_3())), !(true == !all(vec2<bool>(false, true))));
    let var_3 = Struct_5(~arg_1, arg_0, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(-1807f, -773f, var_2.x && true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(799f * var_1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(354f, 1000f, -453f))))))), vec3<i32>((u_input.e >> (select(46577u, arg_1.x, var_2.x) % 32u)) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, u_input.e, u_input.d), vec3<i32>(-2147483647i, u_input.c, -2147483647i))), _wgslsmith_mult_i32(16472i, u_input.d) | (u_input.d ^ (u_input.c | u_input.d)), -2147483647i), firstTrailingBit(u_input.b));
    let var_4 = ~(~22395u);
    return reverseBits(min(select(_wgslsmith_add_vec3_u32(countOneBits(arg_1), var_3.a & arg_1), max(arg_1, vec3<u32>(u_input.a, var_4, var_4)), var_2.x), var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(34558u, 4294967295u, u_input.b.x) << (abs(vec3<u32>(u_input.b.x, u_input.a, 4294967295u)) % vec3<u32>(32u))), func_5(Struct_2(-312f, func_1(Struct_4(Struct_3(Struct_1(-2053f), vec4<bool>(false, true, true, false), vec2<i32>(-58105i, 2147483647i), vec3<i32>(u_input.e, 1i, u_input.c))))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 60466u, u_input.b.x), vec3<u32>(0u, u_input.a, 1u))));
    var var_0 = firstTrailingBit(abs(select(~vec4<u32>(1u, u_input.a, 0u, 3920u), vec4<u32>(11098u, u_input.b.x, 0u, 0u) ^ vec4<u32>(u_input.a, 64412u, 0u, u_input.b.x), vec4<bool>(true, true, true, true)))) >> (abs(abs(vec4<u32>(~2187u, u_input.b.x, _wgslsmith_add_u32(68307u, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(21221u, u_input.b.x, 4294967295u, 19706u), vec4<u32>(51267u, 4294967295u, u_input.b.x, u_input.b.x))))) % vec4<u32>(32u));
    let var_1 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1149f, -394f)) - _wgslsmith_f_op_f32(-592f * 718f))), vec4<bool>(true, true, true, true), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d << (1u % 32u), u_input.d), vec2<i32>(u_input.c, _wgslsmith_div_i32(u_input.d, 25945i))), vec3<i32>(countOneBits(-2147483647i), 2147483647i, max(u_input.c, u_input.d) & 2147483647i)));
    var var_2 = vec2<u32>(~var_0.x << (firstLeadingBit(u_input.b.x) % 32u), 9262u);
    var var_3 = ~var_1.a.c.x;
    var_3 = -1i;
    var var_4 = min(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, ~var_1.a.c.x, var_1.a.d.x, max(u_input.e & var_1.a.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.c.x, 0i, var_1.a.d.x), vec3<i32>(var_1.a.d.x, var_1.a.c.x, -59106i)))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.c, u_input.c), -28500i), var_1.a.c.x, 1561i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, 34301i, 1i, var_1.a.c.x), ~vec4<i32>(var_1.a.d.x, -1i, 0i, 14785i)))), vec4<i32>(min(firstTrailingBit(0i), u_input.c) | _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.d, var_1.a.d.x), _wgslsmith_mult_i32(var_1.a.c.x, 31378i)), _wgslsmith_div_i32(firstTrailingBit(var_1.a.c.x) | -26872i, -19889i), 1i, 2147483647i));
    let var_5 = ~_wgslsmith_clamp_vec3_i32(abs(var_1.a.d), var_4.wwy, -vec3<i32>(~var_1.a.d.x, var_4.x, max(0i, var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a), ~(-2725i));
}

