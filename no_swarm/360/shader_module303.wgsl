struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    var var_0 = 128f;
    var_0 = 1315f;
    var var_1 = ~(~vec4<i32>(-10414i, -(-3859i & u_input.a.x), abs(_wgslsmith_clamp_i32(-42720i, 2147483647i, u_input.a.x)), 1i));
    let var_2 = vec3<i32>(-24757i, _wgslsmith_sub_i32(2147483647i, u_input.c.x), min(0i, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, var_1.x), var_1.ywy)))) & u_input.a.yzz;
    let var_3 = Struct_3(countOneBits(var_2.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(-128f)), _wgslsmith_f_op_f32(round(1f))), false, -vec2<i32>(var_2.x, _wgslsmith_clamp_i32(-9980i, -5235i, var_1.x)), 1u, 1u));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -116f), 494f));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: f32) -> vec2<i32> {
    var var_0 = !vec3<bool>(arg_1, arg_0, true);
    let var_1 = reverseBits(~u_input.b >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(max(u_input.b.x, 51948u), 0u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b), _wgslsmith_clamp_vec2_u32(countOneBits(u_input.b), u_input.b, u_input.b)) % vec2<u32>(32u)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2, arg_2))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-325f, arg_2) - vec2<f32>(1210f, 615f)))))), any(select(!vec3<bool>(arg_1, false, var_0.x), vec3<bool>(var_0.x, arg_0, true), false)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.c.x) & ~u_input.a.zw, vec2<i32>(-u_input.c.x, abs(0i))), ~_wgslsmith_clamp_u32(abs(57244u), 58539u, u_input.b.x), ~_wgslsmith_mult_u32(var_1.x, var_1.x) | _wgslsmith_mod_u32(13880u, ~0u)), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c.x, u_input.a.x), select(-u_input.a.zx, u_input.c.zz, arg_0)) | u_input.a.xx, _wgslsmith_f_op_f32(-arg_2), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, -794f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2, -534f), vec2<f32>(-787f, -279f))), true))), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(arg_2 * arg_2)) > _wgslsmith_f_op_f32(func_2()), select((u_input.c.yx | u_input.a.wx) ^ _wgslsmith_add_vec2_i32(vec2<i32>(-10895i, u_input.c.x), vec2<i32>(1i, -2147483647i)), select(u_input.c.yz ^ u_input.a.wx, ~u_input.c.zz, false), vec2<bool>(arg_1, arg_0)), var_1.x, u_input.b.x), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), arg_0, u_input.c.zx, 10266u, ~_wgslsmith_dot_vec2_u32(u_input.b << (var_1 % vec2<u32>(32u)), ~vec2<u32>(u_input.b.x, 21660u))));
    var var_3 = ~(reverseBits(u_input.a) | -(-u_input.a ^ countOneBits(vec4<i32>(67010i, u_input.a.x, 0i, 2147483647i))));
    var var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e.a.x - var_2.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), arg_2), _wgslsmith_f_op_f32(-583f + arg_2)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-330f, -1000f)), var_2.e.a.x, _wgslsmith_div_f32(arg_2, -537f), 639f))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, 470f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c, arg_2) * _wgslsmith_f_op_f32(var_2.c + -397f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, -1204f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -104f, var_2.d.a.x, -339f)), !vec4<bool>(false, arg_0, true, true))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, -370f, var_2.a.a.x, arg_2))))))))));
    return _wgslsmith_mult_vec2_i32(select(abs(_wgslsmith_mult_vec2_i32(~vec2<i32>(23621i, var_2.e.c.x), vec2<i32>(23029i, var_3.x))), _wgslsmith_mult_vec2_i32(u_input.a.yx, _wgslsmith_add_vec2_i32(-var_2.a.c, abs(var_2.e.c))), u_input.b.x > 11031u), ~firstLeadingBit(vec2<i32>(reverseBits(u_input.c.x), _wgslsmith_mod_i32(2147483647i, -2147483647i))));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: vec2<f32>) -> f32 {
    var var_0 = select(!vec2<bool>(true, select(all(vec3<bool>(true, false, false)), true, true)), select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), true), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, false)), arg_0 >= arg_2.x)), vec2<bool>(false, !any(vec4<bool>(false, true, false, true))), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true))), all(vec2<bool>(true, true)));
    let var_1 = -63245i;
    var var_2 = _wgslsmith_add_u32(u_input.b.x, ~u_input.b.x);
    var var_3 = Struct_1(vec2<f32>(1237f, -1918f), any(select(!(!vec3<bool>(false, var_0.x, var_0.x)), vec3<bool>(true, true, true), !var_0.x)), -arg_2.xz, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, u_input.b.x, 0u), vec3<u32>(u_input.b.x, 1u, u_input.b.x)), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), u_input.b.x, ~4294967295u), ~min(46899u, reverseBits(1u)));
    var var_4 = var_3.b;
    return -558f;
}

fn func_1() -> Struct_4 {
    var var_0 = 1464f;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec2_i32(func_3(true, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(func_2())), min(~u_input.c.yx, ~vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2062f, 1435f)))), vec4<i32>(abs(-55677i), 23428i, -_wgslsmith_div_i32(u_input.a.x, u_input.a.x), i32(-1i) * -28402i), vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2319f)), _wgslsmith_f_op_f32(f32(-1f) * -1284f))))), 1i < _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c << (vec3<u32>(36192u, u_input.b.x, 4294967295u) % vec3<u32>(32u)), firstLeadingBit(u_input.a.wyy)), firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x))))));
    var var_1 = 1i;
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-2471f * _wgslsmith_f_op_f32(f32(-1f) * -990f)), 454f), any(vec2<bool>(true, true)), vec2<i32>(33101i, u_input.a.x), ~u_input.b.x, ~(~1u) >> (abs(_wgslsmith_div_u32(~u_input.b.x, u_input.b.x)) % 32u));
    var_1 = -(~_wgslsmith_sub_i32(~(-1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-35332i, u_input.c.x, var_2.c.x, var_2.c.x), vec4<i32>(0i, 4376i, u_input.a.x, var_2.c.x))));
    return Struct_4(!(!(var_2.a.x > _wgslsmith_f_op_f32(sign(var_2.a.x)))), vec2<bool>(true, true), u_input.a ^ -(~u_input.a), max(~((vec3<u32>(var_2.d, u_input.b.x, 4294967295u) & vec3<u32>(var_2.d, u_input.b.x, 44295u)) | ~vec3<u32>(0u, 4294967295u, var_2.d)), abs(~vec3<u32>(4294967295u, 0u, u_input.b.x))));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    let var_0 = arg_2;
    var var_1 = false;
    var var_2 = -65429i;
    return Struct_3(u_input.c.x, Struct_1(_wgslsmith_f_op_vec2_f32(sign(arg_2.a.a)), !(!func_1().a), _wgslsmith_div_vec2_i32(abs(select(vec2<i32>(arg_0.c.x, arg_0.c.x), vec2<i32>(arg_0.c.x, u_input.a.x), vec2<bool>(false, arg_2.a.b))), -(vec2<i32>(arg_3, arg_2.b.x) << (u_input.b % vec2<u32>(32u)))), 4294967295u, u_input.b.x));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_4 {
    var var_0 = abs(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(68611i, 3453i), u_input.a.x), u_input.c.x, firstLeadingBit(-13686i)));
    return Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), -1000f)) > _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(floor(-156f)))), !(!(!select(vec2<bool>(true, arg_0.b.b), vec2<bool>(false, arg_0.b.b), arg_0.b.b))), abs(u_input.a), reverseBits(~(~(~vec3<u32>(u_input.b.x, 4294967295u, arg_0.b.e)))));
}

fn func_7(arg_0: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1093f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(184f, -369f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(-296f - 255f)), vec3<f32>(-1439f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-18296i, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-586f, 900f))), vec4<i32>(0i, -34293i, -23140i, -24750i), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(566f, -726f), vec2<f32>(416f, -919f), arg_0.b))))), -298f)));
    let var_1 = -_wgslsmith_clamp_i32(-12282i, -25069i, arg_0.c.x);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-651f, var_0.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(183f, -714f, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), false && all(vec4<bool>(true, true, arg_0.a, arg_0.a))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(341f * var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x)), -355f)))));
    let var_2 = Struct_3(func_6(func_5(func_6(Struct_3(arg_0.c.x, Struct_1(var_0.yz, arg_0.b.x, arg_0.c.wy, 1u, 0u)), vec3<f32>(var_0.x, var_0.x, 2441f)), vec3<bool>(var_0.x == 1374f, false, arg_0.a), Struct_2(func_5(arg_0, vec3<bool>(arg_0.b.x, arg_0.b.x, true), Struct_2(Struct_1(vec2<f32>(var_0.x, var_0.x), false, vec2<i32>(-20786i, -60836i), 1u, arg_0.d.x), vec2<i32>(2147483647i, -1i), var_0.x, Struct_1(vec2<f32>(1813f, 272f), false, arg_0.c.yw, u_input.b.x, arg_0.d.x), Struct_1(vec2<f32>(-1827f, 307f), arg_0.b.x, vec2<i32>(u_input.c.x, 71036i), arg_0.d.x, u_input.b.x)), var_1).b, arg_0.c.wy, 622f, Struct_1(var_0.zx, arg_0.a, u_input.c.yy, 1u, 1u), func_5(Struct_4(true, vec2<bool>(false, true), vec4<i32>(2147483647i, u_input.c.x, u_input.a.x, 3589i), arg_0.d), vec3<bool>(arg_0.b.x, arg_0.a, false), Struct_2(Struct_1(var_0.xz, true, arg_0.c.yw, arg_0.d.x, 0u), vec2<i32>(-17448i, -7451i), 104f, Struct_1(vec2<f32>(var_0.x, -962f), arg_0.b.x, arg_0.c.yw, 36171u, 0u), Struct_1(var_0.yx, true, arg_0.c.wz, 18174u, u_input.b.x)), -2147483647i).b), 43677i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(1182f, -435f, 602f)))))).c.x, func_5(arg_0, vec3<bool>(true, func_1().b.x, all(!vec4<bool>(arg_0.b.x, arg_0.a, arg_0.b.x, arg_0.b.x))), Struct_2(Struct_1(vec2<f32>(var_0.x, var_0.x), func_1().a, -arg_0.c.zz, select(arg_0.d.x, arg_0.d.x, arg_0.a), _wgslsmith_mod_u32(u_input.b.x, 1u)), arg_0.c.xw, _wgslsmith_f_op_f32(-var_0.x), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(var_0.xy)), false, arg_0.c.wz, ~arg_0.d.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-666f, 134f))), false, -u_input.c.zy, 31013u, 0u)), _wgslsmith_dot_vec4_i32(firstLeadingBit(arg_0.c), -arg_0.c & abs(u_input.a))).b);
    let var_3 = func_5(func_1(), !(!(!(!vec3<bool>(true, false, var_2.b.b)))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_2.b.a.x) + vec2<f32>(1092f, 2103f)) - var_2.b.a), !arg_0.a, func_5(arg_0, select(vec3<bool>(arg_0.a, false, arg_0.b.x), vec3<bool>(true, true, arg_0.a), var_2.b.b), Struct_2(Struct_1(var_0.yy, true, vec2<i32>(var_2.a, u_input.a.x), 46356u, 73647u), var_2.b.c, var_2.b.a.x, var_2.b, Struct_1(var_0.yz, arg_0.b.x, vec2<i32>(var_2.b.c.x, 0i), 31186u, 27117u)), ~var_2.a).b.c, ~4294967295u ^ _wgslsmith_mod_u32(var_2.b.e, var_2.b.d), abs(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b))), vec2<i32>(-65275i, 0i), var_2.b.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.b.a.x, -534f), vec2<f32>(212f, var_2.b.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-695f, var_2.b.a.x) + vec2<f32>(-1958f, var_2.b.a.x)))), var_2.b.a.x < _wgslsmith_f_op_f32(f32(-1f) * -221f), u_input.a.xx, _wgslsmith_dot_vec3_u32(~arg_0.d, arg_0.d), arg_0.d.x), func_5(Struct_4(true, arg_0.b, u_input.a, ~arg_0.d), !vec3<bool>(arg_0.a, var_2.b.b, var_2.b.b), Struct_2(Struct_1(vec2<f32>(var_2.b.a.x, 958f), false, vec2<i32>(-38713i, var_1), 8591u, 4294967295u), _wgslsmith_clamp_vec2_i32(var_2.b.c, vec2<i32>(-1i, 49638i), vec2<i32>(-1i, 1i)), _wgslsmith_f_op_f32(var_0.x + var_0.x), var_2.b, Struct_1(vec2<f32>(-328f, 580f), var_2.b.b, arg_0.c.yx, 4294967295u, arg_0.d.x)), 9853i).b), -28074i);
    return func_5(func_1(), !select(vec3<bool>(false, any(vec4<bool>(true, arg_0.a, true, true)), 0i >= arg_0.c.x), !(!vec3<bool>(var_2.b.b, var_2.b.b, false)), select(select(vec3<bool>(var_2.b.b, false, var_2.b.b), vec3<bool>(var_2.b.b, var_3.b.b, true), arg_0.b.x), !vec3<bool>(var_2.b.b, var_3.b.b, var_2.b.b), select(vec3<bool>(var_3.b.b, arg_0.b.x, arg_0.b.x), vec3<bool>(false, var_3.b.b, var_3.b.b), vec3<bool>(false, var_3.b.b, true)))), Struct_2(Struct_1(var_3.b.a, !(!arg_0.b.x), func_1().c.zy, ~52192u, ~1u), var_3.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.b.a.x, -1446f))), Struct_1(vec2<f32>(1706f, var_3.b.a.x), func_5(Struct_4(false, vec2<bool>(var_2.b.b, true), vec4<i32>(-9527i, 1i, 9653i, -2147483647i), vec3<u32>(732u, 1u, 85245u)), vec3<bool>(var_3.b.b, false, true), Struct_2(var_3.b, var_2.b.c, var_2.b.a.x, Struct_1(vec2<f32>(var_0.x, var_2.b.a.x), false, var_3.b.c, u_input.b.x, var_2.b.d), var_2.b), firstLeadingBit(var_1)).b.b, var_2.b.c, _wgslsmith_clamp_u32(0u, min(var_2.b.d, 26529u), select(u_input.b.x, u_input.b.x, true)), ~var_2.b.e), func_5(func_6(var_2, vec3<f32>(var_2.b.a.x, var_2.b.a.x, var_0.x)), vec3<bool>(true, var_3.b.b, true), Struct_2(func_5(Struct_4(var_2.b.b, vec2<bool>(true, var_3.b.b), u_input.a, vec3<u32>(var_2.b.e, 48249u, 0u)), vec3<bool>(false, true, var_2.b.b), Struct_2(var_3.b, var_2.b.c, -2249f, Struct_1(vec2<f32>(var_0.x, var_2.b.a.x), true, arg_0.c.zw, 18047u, var_2.b.e), Struct_1(var_0.xx, false, vec2<i32>(var_3.b.c.x, u_input.a.x), 59533u, u_input.b.x)), arg_0.c.x).b, arg_0.c.yy, 819f, func_5(Struct_4(false, vec2<bool>(true, true), vec4<i32>(-718i, var_3.b.c.x, var_1, 1i), arg_0.d), vec3<bool>(var_3.b.b, var_3.b.b, arg_0.a), Struct_2(Struct_1(var_0.xx, false, u_input.c.xz, 0u, u_input.b.x), var_3.b.c, var_2.b.a.x, Struct_1(vec2<f32>(1453f, var_0.x), arg_0.b.x, arg_0.c.ww, 0u, u_input.b.x), var_3.b), var_2.b.c.x).b, func_5(arg_0, vec3<bool>(true, true, var_3.b.b), Struct_2(var_3.b, vec2<i32>(var_1, arg_0.c.x), var_3.b.a.x, Struct_1(vec2<f32>(var_2.b.a.x, -1000f), false, vec2<i32>(u_input.a.x, var_3.a), var_3.b.d, var_3.b.d), Struct_1(var_2.b.a, true, vec2<i32>(-2147483647i, 0i), u_input.b.x, var_3.b.e)), arg_0.c.x).b), arg_0.c.x).b), var_3.b.c.x).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~4777u, 19852u, u_input.b.x, u_input.b.x);
    var var_1 = func_7(func_6(func_5(func_1(), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), Struct_2(Struct_1(vec2<f32>(-1114f, 622f), true, u_input.c.yy, 0u, u_input.b.x), u_input.c.xz, _wgslsmith_f_op_f32(max(523f, -1363f)), Struct_1(vec2<f32>(-274f, 362f), true, vec2<i32>(u_input.c.x, u_input.a.x), var_0.x, 45691u), Struct_1(vec2<f32>(-536f, -1052f), false, vec2<i32>(u_input.a.x, -1i), u_input.b.x, var_0.x)), _wgslsmith_mult_i32(u_input.c.x, 2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(792f)) - _wgslsmith_f_op_f32(f32(-1f) * -392f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-360f, 612f)) * _wgslsmith_div_f32(722f, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(-7274i, vec2<f32>(2841f, -1680f), vec4<i32>(64395i, 1i, -10290i, -6691i), vec2<f32>(-885f, 763f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(268f, _wgslsmith_f_op_f32(ceil(687f))) - func_5(func_6(Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c.x), var_1.c), func_5(Struct_4(false, vec2<bool>(var_1.b, true), vec4<i32>(38729i, u_input.a.x, u_input.a.x, u_input.c.x), vec3<u32>(var_1.e, var_0.x, var_1.e)), vec3<bool>(false, var_1.b, var_1.b), Struct_2(Struct_1(vec2<f32>(-944f, 593f), var_1.b, vec2<i32>(var_1.c.x, 9523i), 0u, u_input.b.x), vec2<i32>(u_input.a.x, -16119i), var_1.a.x, Struct_1(var_1.a, var_1.b, vec2<i32>(u_input.a.x, -39981i), var_0.x, 67145u), Struct_1(vec2<f32>(var_1.a.x, -520f), false, var_1.c, 23098u, 45355u)), -30923i).b), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1434f, var_1.a.x, var_1.a.x))))), !select(!vec3<bool>(true, var_1.b, var_1.b), !vec3<bool>(var_1.b, true, true), true), Struct_2(func_7(func_1()), var_1.c, _wgslsmith_f_op_f32(var_1.a.x - 588f), func_7(func_1()), func_5(Struct_4(var_1.b, vec2<bool>(var_1.b, false), vec4<i32>(-12198i, 38150i, var_1.c.x, 63254i), vec3<u32>(4294967295u, 1u, u_input.b.x)), vec3<bool>(var_1.b, false, true), Struct_2(Struct_1(var_1.a, false, u_input.a.zz, var_0.x, var_0.x), vec2<i32>(1492i, -2147483647i), 1151f, Struct_1(var_1.a, var_1.b, vec2<i32>(var_1.c.x, -14924i), var_1.e, 11457u), Struct_1(var_1.a, true, u_input.a.wy, var_0.x, var_0.x)), 0i).b), -abs(_wgslsmith_sub_i32(0i, -1i))).b.a);
    let var_3 = func_5(Struct_4(any(!vec4<bool>(false, false, var_1.b, var_1.b)), func_6(func_5(func_1(), vec3<bool>(var_1.b, var_1.b, true), Struct_2(Struct_1(vec2<f32>(var_1.a.x, -1000f), var_1.b, vec2<i32>(-12351i, var_1.c.x), 28972u, var_0.x), vec2<i32>(var_1.c.x, u_input.c.x), var_2.x, Struct_1(var_1.a, var_1.b, u_input.c.yz, var_1.e, u_input.b.x), Struct_1(vec2<f32>(-649f, var_2.x), var_1.b, vec2<i32>(u_input.a.x, 25778i), 4294967295u, 1u)), countOneBits(var_1.c.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_2.x, var_2.x) - vec3<f32>(-838f, var_2.x, var_2.x)), vec3<f32>(var_2.x, var_1.a.x, -1363f), all(vec4<bool>(var_1.b, false, false, var_1.b))))).b, reverseBits(u_input.a) | u_input.a, ~var_0.zzx), !vec3<bool>(true, all(vec4<bool>(var_1.b, false, var_1.b, var_1.b)), var_1.e > 17489u), Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -467f), var_1.a.x), all(vec3<bool>(true, var_1.b, var_1.b)) & false, -_wgslsmith_sub_vec2_i32(u_input.c.zz, vec2<i32>(var_1.c.x, var_1.c.x)), 21191u, 39301u), ~vec2<i32>(_wgslsmith_mod_i32(0i, -2147483647i), u_input.c.x), var_2.x, func_7(Struct_4(var_1.b, !vec2<bool>(false, var_1.b), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) >> (vec4<u32>(51005u, 4294967295u, u_input.b.x, 4294967295u) % vec4<u32>(32u)), ~var_0.zwz)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.a))), !(var_1.d <= var_1.d), select(-vec2<i32>(21933i, var_1.c.x), vec2<i32>(7613i, var_1.c.x), true), _wgslsmith_mult_u32(4294967295u, var_0.x) | u_input.b.x, 30221u)), ~u_input.c.x);
    var var_4 = Struct_2(func_5(Struct_4(func_7(Struct_4(false, vec2<bool>(var_3.b.b, var_3.b.b), u_input.a, vec3<u32>(27425u, var_1.e, 25242u))).b, vec2<bool>(var_1.b, any(vec3<bool>(var_1.b, true, true))), vec4<i32>(i32(-1i) * -40005i, -58597i, 7667i, _wgslsmith_add_i32(var_1.c.x, 2147483647i)), vec3<u32>(1u, ~var_1.d, var_3.b.e)), select(select(!vec3<bool>(var_3.b.b, var_1.b, true), !vec3<bool>(var_3.b.b, false, true), var_3.b.b), select(!vec3<bool>(false, var_1.b, var_1.b), select(vec3<bool>(false, var_1.b, var_3.b.b), vec3<bool>(false, true, var_1.b), var_1.b), !vec3<bool>(var_1.b, var_3.b.b, var_1.b)), true), Struct_2(func_7(Struct_4(false, vec2<bool>(true, var_3.b.b), vec4<i32>(10218i, var_1.c.x, var_3.a, var_1.c.x), var_0.zww)), -var_3.b.c | firstLeadingBit(vec2<i32>(u_input.a.x, var_1.c.x)), var_2.x, func_7(Struct_4(false, vec2<bool>(var_1.b, var_1.b), u_input.a, vec3<u32>(26006u, 16336u, var_1.e))), var_3.b), 1i).b, vec2<i32>(_wgslsmith_mod_i32(var_3.a, -37314i), i32(-1i) * -_wgslsmith_dot_vec3_i32(u_input.a.ywx, vec3<i32>(-65477i, u_input.a.x, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-995f + _wgslsmith_f_op_f32(-509f - _wgslsmith_f_op_f32(-var_1.a.x)))), Struct_1(var_1.a, var_1.b, ~(-(~var_3.b.c)), ~u_input.b.x, min(12648u, ~0u)), func_5(func_1(), vec3<bool>(var_1.b, var_1.b, (false || var_3.b.b) && var_1.b), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(177f, -399f)), var_3.b.b, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, u_input.a.x), vec2<i32>(u_input.a.x, -2147483647i)), var_0.x | var_3.b.e, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b.d, u_input.b.x, 4294967295u), vec3<u32>(var_1.d, 15076u, 57231u))), ~var_3.b.c, _wgslsmith_f_op_f32(func_4(countOneBits(2147483647i), var_1.a, u_input.a, vec2<f32>(-801f, -853f))), Struct_1(vec2<f32>(var_3.b.a.x, 1758f), true, func_5(Struct_4(var_3.b.b, vec2<bool>(var_3.b.b, false), vec4<i32>(1i, u_input.c.x, 31148i, u_input.a.x), vec3<u32>(1u, 56615u, 20822u)), vec3<bool>(var_3.b.b, true, true), Struct_2(var_3.b, vec2<i32>(-1i, u_input.a.x), -602f, Struct_1(vec2<f32>(var_2.x, -199f), var_3.b.b, vec2<i32>(u_input.c.x, u_input.c.x), 89504u, 4294967295u), Struct_1(var_3.b.a, false, u_input.a.zz, 4294967295u, 31979u)), 7303i).b.c, var_3.b.d, _wgslsmith_div_u32(20558u, 82552u)), func_7(Struct_4(true, vec2<bool>(var_3.b.b, false), vec4<i32>(1i, 0i, 57494i, var_1.c.x), var_0.zzz))), abs(u_input.a.x)).b);
    var_2 = var_1.a;
    let var_5 = Struct_3(var_3.a, func_5(func_1(), !(!vec3<bool>(var_3.b.b, var_3.b.b, true)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-195f, -1433f)), var_1.b || false, -vec2<i32>(var_4.d.c.x, var_3.a), ~var_1.d, 0u), ~_wgslsmith_div_vec2_i32(vec2<i32>(var_3.b.c.x, var_1.c.x), var_3.b.c), var_1.a.x, var_3.b, func_7(Struct_4(true, vec2<bool>(var_3.b.b, false), vec4<i32>(u_input.c.x, 2147483647i, var_3.b.c.x, u_input.c.x), var_0.yxy))), func_1().c.x).b);
    var var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4.c, 336f, 159f), vec3<f32>(-309f, var_3.b.a.x, var_5.b.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a.x, -162f, var_3.b.a.x)))), any(vec2<bool>(true, true)) | (var_1.b | true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-238f, -631f, var_5.b.a.x) * vec3<f32>(var_5.b.a.x, -216f, var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_4.a.a.x, var_5.b.a.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_5.b.a.x, var_1.a.x, 599f), vec3<f32>(-967f, var_3.b.a.x, var_3.b.a.x), false)) + vec3<f32>(var_1.a.x, -1160f, var_1.a.x))), func_6(func_5(Struct_4(false, vec2<bool>(false, var_1.b), vec4<i32>(var_5.b.c.x, var_4.d.c.x, var_3.a, -16811i), var_0.wxw), !vec3<bool>(var_1.b, false, var_5.b.b), Struct_2(var_3.b, var_4.b, 714f, Struct_1(vec2<f32>(var_3.b.a.x, var_4.e.a.x), true, vec2<i32>(var_5.a, var_3.b.c.x), var_1.d, var_1.e), var_3.b), _wgslsmith_mod_i32(var_4.e.c.x, var_5.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(459f, var_2.x, var_2.x) - vec3<f32>(var_5.b.a.x, var_5.b.a.x, 1073f)))).b.x)));
    var_0 = _wgslsmith_div_vec4_u32(reverseBits(max(~vec4<u32>(17158u, 11874u, 35037u, 26414u), ~vec4<u32>(1u, 4664u, 71674u, var_5.b.e))), vec4<u32>(reverseBits(func_1().d.x), var_4.a.d, ~(~1u), ~18701u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_3.b.e, 1u, _wgslsmith_add_u32(u_input.b.x, var_1.d), var_0.x) << (_wgslsmith_div_vec4_u32(~vec4<u32>(51904u, var_0.x, 79341u, 8932u) >> (vec4<u32>(30591u, 0u, var_0.x, 1u) % vec4<u32>(32u)), min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.e, var_5.b.d, 0u, var_1.d), vec4<u32>(var_5.b.d, 0u, var_0.x, u_input.b.x)), ~vec4<u32>(u_input.b.x, 32641u, var_1.e, 81843u))) % vec4<u32>(32u)));
}

