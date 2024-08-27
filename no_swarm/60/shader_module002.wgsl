struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> f32 {
    var var_0 = vec4<bool>(true, true, true, true);
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(max(_wgslsmith_mult_vec3_i32(-arg_0.wxy, -arg_0.xxy), arg_0.wxy), ~arg_0.xxw), vec3<i32>(min(arg_0.x, ~arg_0.x), -max(~1i, i32(-1i) * -4889i), -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, -2147483647i) >> (vec3<u32>(u_input.c.x, 4294967295u, 9170u) % vec3<u32>(32u)), max(vec3<i32>(-65199i, -2147483647i, -1i), arg_0.zwy))));
    let var_2 = _wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(min(u_input.c.yyw, u_input.c.xzz), min(vec3<u32>(8009u, u_input.a, 4294967295u), vec3<u32>(1u, 80523u, arg_1))), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.a, 19303u, u_input.a, u_input.c.x)), _wgslsmith_sub_u32(~30476u, 0u), _wgslsmith_mod_u32(122192u & u_input.b, abs(4294967295u))), ~vec4<u32>(u_input.c.x, arg_1, u_input.c.x, 25945u));
    let var_3 = Struct_5(Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1051f), _wgslsmith_f_op_f32(abs(-1195f)), _wgslsmith_f_op_f32(floor(1281f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * -221f), select(~0i, _wgslsmith_dot_vec4_i32(arg_0, arg_0), var_0.x | true)), arg_0.x, firstLeadingBit(57827u << (u_input.c.x % 32u)) & ~(~arg_1), countOneBits(-2147483647i ^ var_1) == _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, arg_0.x), var_1 >> (51498u % 32u))));
    var_0 = vec4<bool>(true || (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-232f, var_3.a.a.a.x, var_3.a.d)))) <= _wgslsmith_f_op_f32(round(-1627f))), var_0.x, true, true);
    return var_3.a.a.a.x;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(8106i, arg_0, arg_0, 19316i), ~25189u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1234f + -1323f), -2180f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1050f)))) - 1361f), ~arg_0, false, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1498f)), _wgslsmith_div_f32(-935f, -379f)), _wgslsmith_f_op_f32(ceil(-1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-253f, 112f, 1319f)))))));
    let var_1 = select(vec2<bool>(true, true), arg_1.yx, arg_1.yx);
    var var_2 = _wgslsmith_mult_i32(-1i, min(~_wgslsmith_sub_i32(3597i, -14996i) >> (u_input.a % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(var_0.c, -37043i, 36279i)), ~vec3<i32>(var_0.c, var_0.c, var_0.c)), _wgslsmith_clamp_vec3_i32(min(vec3<i32>(16507i, arg_0, var_0.c), vec3<i32>(var_0.c, arg_0, -87950i)), -vec3<i32>(80756i, arg_0, 19501i), -vec3<i32>(19205i, -23440i, var_0.c)))));
    let var_3 = vec3<f32>(1272f, 264f, var_0.e.x);
    let var_4 = arg_1;
    return !(u_input.a >= countOneBits(abs(u_input.a)));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_3(arg_0, arg_0, select(reverseBits(reverseBits(arg_1.x)), 20059i, func_2(arg_1.x, vec3<bool>(true, true, false))) | ~firstTrailingBit(~arg_1.x), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-933f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) * arg_0), arg_0)));
    let var_1 = arg_0;
    var var_2 = vec3<bool>(!any(vec2<bool>(all(vec2<bool>(var_0.d, false)), true)), all(!vec4<bool>(true, var_0.d, all(vec3<bool>(var_0.d, false, var_0.d)), var_0.d)), !func_2(-17677i, !select(vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(true, false, false), vec3<bool>(false, false, true))));
    var var_3 = vec2<u32>(reverseBits(9554u) | _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c.x, 23067u), u_input.c.x), arg_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(4294967295u << (arg_2.x % 32u)), max(1u, u_input.b << (arg_2.x % 32u)), ~0u), vec3<u32>(19188u, abs(u_input.b), ~_wgslsmith_sub_u32(20111u, arg_2.x))));
    var_3 = _wgslsmith_mult_vec2_u32(select(vec2<u32>(~abs(1u), 1u), vec2<u32>(countOneBits(var_3.x), ~7023u), var_2.x), _wgslsmith_div_vec2_u32(~(~arg_2), ~vec2<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.c.x, 4294967295u, u_input.a))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(759f, -236f, var_1))), _wgslsmith_f_op_vec3_f32(var_0.e - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-669f, var_1, var_0.a))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1193f, 993f, arg_0)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(var_0.e)), _wgslsmith_f_op_vec3_f32(var_0.e + vec3<f32>(var_1, -1186f, arg_0)), var_0.d))))), _wgslsmith_f_op_f32(ceil(arg_0)), -41344i);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a - _wgslsmith_f_op_vec3_f32(-arg_1.a)) + _wgslsmith_f_op_vec3_f32(arg_1.a * _wgslsmith_f_op_vec3_f32(-arg_1.a)))), _wgslsmith_f_op_f32(f32(-1f) * -1093f), min(abs(reverseBits(arg_1.c)), ~_wgslsmith_clamp_i32(-7807i, arg_1.c, -arg_1.c)));
    var_0 = arg_1;
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.a.x, var_0.b)), var_0.a.x, _wgslsmith_f_op_f32(floor(1474f))), arg_1.b, abs(~reverseBits(~var_0.c)));
    var var_1 = var_0.c;
    let var_2 = !arg_0.x & arg_0.x;
    return u_input.a;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec4<u32>) -> Struct_4 {
    let var_0 = arg_1.a;
    let var_1 = arg_0.zz;
    let var_2 = arg_0.x >= u_input.b;
    let var_3 = vec3<bool>(any(!select(select(vec2<bool>(false, arg_1.d), vec2<bool>(arg_1.d, var_2), vec2<bool>(var_2, true)), vec2<bool>(false, arg_1.d), select(vec2<bool>(true, var_2), vec2<bool>(var_2, true), var_2))), !(!any(select(vec4<bool>(true, var_2, arg_1.d, var_2), vec4<bool>(true, arg_1.d, var_2, false), false))), arg_1.d || false);
    var var_4 = -var_0.c << (~(4294967295u << (_wgslsmith_sub_u32(u_input.c.x | arg_3.x, 1u) % 32u)) % 32u);
    return Struct_4(_wgslsmith_mod_i32(~(~2147483647i ^ min(-39602i, arg_1.a.c)), ~(-1i)), Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(382f + var_0.b), _wgslsmith_f_op_f32(arg_1.a.a.x + arg_1.a.a.x)), _wgslsmith_f_op_f32(-arg_1.a.a.x), arg_1.a.c), arg_2.x, _wgslsmith_dot_vec3_u32(u_input.c.wyz, vec3<u32>(_wgslsmith_sub_u32(arg_0.x, arg_1.c), ~45826u, ~arg_3.x)), true), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(arg_1.a.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(var_0.b, arg_1.a.b, 588f))))))), select(!vec2<bool>(true, !var_2), var_3.xz, true));
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: Struct_5) -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_2.a.a.b - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.a.a.a.x, arg_0.c.x), -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.a.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.a.b - arg_0.b.a.a.x))));
    var var_1 = arg_2.a.a.a.x;
    var_1 = _wgslsmith_f_op_f32(func_5(~vec3<u32>(arg_2.a.c, arg_0.b.c, 53705u) & u_input.c.xzz, Struct_2(func_1(_wgslsmith_f_op_f32(arg_0.c.x * var_0.x), vec2<i32>(arg_0.b.b, -1i), vec2<u32>(4818u, u_input.b)), -(arg_0.b.b << (6506u % 32u)), u_input.c.x, !arg_1 && all(vec4<bool>(arg_0.d.x, false, arg_2.a.d, arg_2.a.d))), select(vec2<i32>(-1981i, arg_0.b.b), vec2<i32>(-1i, arg_2.a.a.c), vec2<bool>(arg_2.a.d, arg_1)) << (u_input.c.zw % vec2<u32>(32u)), vec4<u32>(arg_0.b.c & ~27545u, _wgslsmith_dot_vec3_u32(u_input.c.yyz, abs(u_input.c.xzy)), 1u, 3441u)).c.x * var_0.x);
    var var_2 = !(!(!(false & arg_0.b.d))) || false;
    var var_3 = func_5(u_input.c.yxy, arg_2.a, ~(~(-_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.a.a.c, 27040i), vec2<i32>(0i, arg_2.a.a.c)))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~arg_2.a.c, ~arg_2.a.c), 34636u, 8793u, 1u), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(52634u, arg_0.b.c, 4294967295u, 1u), u_input.c, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, 0u, u_input.c.x), vec4<u32>(u_input.c.x, 1u, arg_2.a.c, 0u))), ~_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 1u, 15569u, arg_0.b.c)), u_input.c)));
    return Struct_3(_wgslsmith_f_op_f32(-arg_2.a.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(countOneBits(vec4<i32>(arg_0.a, -31716i, arg_0.a, var_3.b.a.c)) << (_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(arg_2.a.c, arg_0.b.c, 0u, arg_2.a.c), u_input.c) % vec4<u32>(32u)), 72392u)) - _wgslsmith_f_op_f32(-var_0.x)), 1i, arg_0.d.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1694f, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a.b, 539f, arg_0.b.a.b) + vec3<f32>(242f, -495f, var_3.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(true, true, true), !vec3<bool>(select(false, false, false), true, all(vec4<bool>(false, false, false, true))), !vec3<bool>(true, true, u_input.a != 15159u)), vec3<bool>(true, true, true), select(_wgslsmith_div_i32(max(45801i, -39346i), _wgslsmith_dot_vec4_i32(vec4<i32>(-3152i, 0i, 16209i, 27941i), vec4<i32>(44345i, -1i, -19580i, 0i))) < -20685i, select(true, all(vec3<bool>(false, true, true)), true), !all(vec4<bool>(true, true, true, true))));
    var var_1 = func_6(func_5(vec3<u32>(func_4(select(var_0.xy, vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), func_1(-340f, vec2<i32>(-7113i, -27619i), u_input.c.yz)), ~(u_input.c.x & u_input.c.x), func_4(vec2<bool>(false, true), func_1(527f, vec2<i32>(33332i, 31881i), u_input.c.xy))), Struct_2(func_1(-1000f, -vec2<i32>(12853i, -22423i), _wgslsmith_clamp_vec2_u32(u_input.c.xx, vec2<u32>(56056u, 0u), u_input.c.yy)), ~abs(-22036i), 1u, (u_input.c.x < 1u) & var_0.x), vec2<i32>(1i, 1i), vec4<u32>(8507u, 67105u, ~(~0u), min(u_input.a, 1u) >> (~u_input.a % 32u))), var_0.x, Struct_5(func_5(firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.c.zwz, vec3<u32>(4294967295u, 0u, 0u))), Struct_2(Struct_1(vec3<f32>(-244f, -366f, 314f), -510f, 0i), -42105i, u_input.b ^ 35609u, all(vec4<bool>(true, false, var_0.x, var_0.x))), ~(~vec2<i32>(-67854i, -9094i)), vec4<u32>(max(1u, u_input.c.x), _wgslsmith_div_u32(4294967295u, 4294967295u), reverseBits(u_input.a), countOneBits(u_input.b))).b));
    let var_2 = func_6(func_5(((vec3<u32>(u_input.c.x, 80605u, u_input.b) >> (vec3<u32>(1u, u_input.c.x, u_input.c.x) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(u_input.c.ywx, vec3<u32>(0u, 0u, u_input.b)) % vec3<u32>(32u))) ^ vec3<u32>(countOneBits(0u), 70113u, _wgslsmith_sub_u32(4113u, u_input.c.x)), func_5(u_input.c.xzw >> (min(vec3<u32>(u_input.c.x, u_input.b, 4294967295u), vec3<u32>(u_input.a, 30787u, 4294967295u)) % vec3<u32>(32u)), Struct_2(func_5(vec3<u32>(4294967295u, u_input.b, u_input.a), Struct_2(Struct_1(var_1.e, var_1.b, -6880i), var_1.c, 0u, true), vec2<i32>(var_1.c, var_1.c), vec4<u32>(1u, 37033u, u_input.a, 27769u)).b.a, -var_1.c, 7518u, all(vec4<bool>(var_1.d, var_0.x, false, var_1.d))), -_wgslsmith_mult_vec2_i32(vec2<i32>(14451i, var_1.c), vec2<i32>(0i, var_1.c)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 6943u, u_input.b, u_input.b), u_input.c), u_input.c, !vec4<bool>(true, true, var_0.x, false))).b, _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, var_1.c), vec2<i32>(var_1.c, var_1.c)) ^ firstTrailingBit(vec2<i32>(var_1.c, 2147483647i)), vec2<i32>(~var_1.c, _wgslsmith_clamp_i32(var_1.c, -2147483647i, -18930i))), _wgslsmith_div_vec4_u32(select(select(vec4<u32>(13868u, u_input.a, 97747u, 43767u), vec4<u32>(u_input.b, 0u, u_input.b, 13246u), vec4<bool>(var_0.x, var_0.x, true, var_1.d)), firstTrailingBit(u_input.c), !vec4<bool>(false, var_0.x, false, var_0.x)), reverseBits(vec4<u32>(u_input.c.x, 1u, u_input.a, u_input.c.x)))), any(vec2<bool>(true || var_1.d, true)), Struct_5(func_5(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c.x, 56367u, 18074u), ~vec3<u32>(20841u, 26588u, 14528u)), func_5(vec3<u32>(16674u, u_input.c.x, 32051u), func_5(vec3<u32>(7668u, 45950u, u_input.b), Struct_2(Struct_1(var_1.e, var_1.a, var_1.c), 1i, 0u, false), vec2<i32>(var_1.c, 0i), u_input.c).b, -vec2<i32>(-1i, var_1.c), u_input.c).b, vec2<i32>(func_5(u_input.c.zyx, Struct_2(Struct_1(var_1.e, 1591f, var_1.c), 2147483647i, 412u, var_0.x), vec2<i32>(var_1.c, var_1.c), u_input.c).b.a.c, var_1.c ^ 1i), vec4<u32>(4294967295u, select(u_input.a, 68170u, false), u_input.c.x, 0u)).b));
    var_0 = !select(vec3<bool>(true, select(true, all(vec2<bool>(true, var_2.d)), true), func_1(629f, vec2<i32>(var_2.c, 2147483647i), u_input.c.zx).c > 8756i), vec3<bool>(var_1.d, false, !var_2.d), vec3<bool>(false, func_6(func_5(vec3<u32>(0u, 0u, u_input.b), Struct_2(Struct_1(var_2.e, var_1.a, var_1.c), 2147483647i, u_input.c.x, var_1.d), vec2<i32>(0i, var_2.c), u_input.c), true, Struct_5(Struct_2(Struct_1(vec3<f32>(266f, var_1.b, var_1.e.x), var_2.e.x, 28948i), 2147483647i, u_input.a, var_2.d))).d, var_2.e.x <= _wgslsmith_f_op_f32(var_1.a - var_1.e.x)));
    var_0 = !select(!select(!vec3<bool>(false, var_1.d, false), vec3<bool>(var_1.d, true, var_0.x), func_2(var_1.c, vec3<bool>(var_2.d, var_0.x, var_2.d))), select(select(vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, var_1.d, true), vec3<bool>(false, true, true)), !vec3<bool>(var_1.d, false, var_0.x), vec3<bool>(!var_2.d, any(vec3<bool>(var_2.d, false, false)), !var_0.x)), !vec3<bool>(true, func_5(vec3<u32>(1u, u_input.b, u_input.c.x), Struct_2(Struct_1(var_2.e, var_2.a, var_1.c), 1i, 24569u, true), vec2<i32>(var_1.c, -2147483647i), vec4<u32>(u_input.c.x, 45997u, u_input.a, u_input.b)).b.d, false || var_1.d));
    let var_3 = Struct_5(Struct_2(func_1(_wgslsmith_f_op_f32(f32(-1f) * -181f), -vec2<i32>(var_2.c, var_2.c), max(vec2<u32>(u_input.b, 33996u), firstTrailingBit(vec2<u32>(u_input.a, 1u)))), 41671i, 4294967295u, false));
    var var_4 = func_6(Struct_4(-28152i, Struct_2(Struct_1(var_1.e, _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.c, var_2.c, -53986i), vec4<i32>(var_3.a.a.c, 0i, 1i, var_1.c))), 0i, ~var_3.a.c, func_6(Struct_4(var_3.a.a.c, Struct_2(var_3.a.a, 2147483647i, u_input.b, false), var_3.a.a.a, vec2<bool>(var_0.x, var_0.x)), true, var_3).d), _wgslsmith_f_op_vec3_f32(select(func_1(_wgslsmith_f_op_f32(1585f + -344f), ~vec2<i32>(1i, var_1.c), u_input.c.zz).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.a.b, var_1.b, var_2.e.x)), !vec3<bool>(var_2.d, var_1.d, var_1.d))), var_0.xy), func_6(func_5(~vec3<u32>(34946u, 4294967295u, var_3.a.c), var_3.a, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a.b, 17317i, var_2.c), vec3<i32>(2147483647i, var_2.c, var_1.c)), _wgslsmith_mod_i32(2147483647i, var_2.c)), ~_wgslsmith_add_vec4_u32(u_input.c, u_input.c)), all(select(!vec3<bool>(true, true, var_1.d), select(vec3<bool>(var_3.a.d, true, false), vec3<bool>(var_3.a.d, var_3.a.d, var_0.x), vec3<bool>(true, var_1.d, var_1.d)), !var_3.a.d)), var_3).d, var_3);
    let var_5 = _wgslsmith_sub_vec4_i32(~(-vec4<i32>(~var_2.c, _wgslsmith_sub_i32(var_4.c, var_3.a.a.c), var_3.a.a.c, select(2147483647i, 1i, var_3.a.d))), vec4<i32>(i32(-1i) * -_wgslsmith_mod_i32(-859i, -1i), _wgslsmith_sub_i32(func_5(vec3<u32>(41953u, u_input.a, 54575u), Struct_2(Struct_1(var_2.e, -2215f, 2147483647i), 1i, 41569u, var_0.x), vec2<i32>(var_1.c, var_1.c), vec4<u32>(4294967295u, var_3.a.c, u_input.a, 1u)).b.a.c, abs(var_2.c)), ~(~var_4.c) | var_1.c, var_2.c));
    var_4 = func_6(func_5(u_input.c.xyy ^ ~vec3<u32>(var_3.a.c, 0u, 31039u), var_3.a, min(vec2<i32>(~2147483647i, var_5.x), ~_wgslsmith_div_vec2_i32(var_5.wx, var_5.zw)), u_input.c), var_4.d, var_3);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e.x, 0u, vec2<f32>(_wgslsmith_f_op_f32(-1724f + var_3.a.a.b), _wgslsmith_f_op_f32(f32(-1f) * -927f)), func_5(reverseBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(30348u, var_3.a.c, 1u), u_input.c.yyz)), func_5(abs(select(u_input.c.xyw, vec3<u32>(26768u, 0u, u_input.c.x), vec3<bool>(var_0.x, true, true))), func_5(vec3<u32>(var_3.a.c, 1u, u_input.a) & u_input.c.wyx, var_3.a, vec2<i32>(16471i, var_2.c), vec4<u32>(u_input.b, 0u, var_3.a.c, 32780u)).b, vec2<i32>(var_2.c, 2147483647i), u_input.c >> (u_input.c % vec4<u32>(32u))).b, -(~_wgslsmith_div_vec2_i32(var_5.xw, var_5.wx)), ~(~vec4<u32>(u_input.c.x, u_input.b, u_input.b, 47570u))).b.b);
}

