struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: vec4<i32>) -> vec3<i32> {
    var var_0 = !(!vec4<bool>(arg_2 & true, !arg_2, arg_2 || all(vec3<bool>(arg_2, arg_2, false)), false));
    var var_1 = _wgslsmith_clamp_i32(~u_input.b.x, abs(~0i >> (u_input.a.x % 32u)), _wgslsmith_mod_i32(2147483647i, _wgslsmith_mult_i32(0i, abs(firstLeadingBit(arg_3.x)))));
    let var_2 = Struct_1(2147483647i, -max(~arg_3.x, 27267i), -34577i, var_0.x, firstLeadingBit(arg_3.x));
    var_1 = arg_1.a.x;
    let var_3 = arg_3.x;
    return arg_3.wzz;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(30700u, u_input.a.x) & 35560u, _wgslsmith_sub_u32(u_input.d, u_input.d), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.d)), vec4<u32>(u_input.a.x, 0u, u_input.d, 4294967295u) ^ vec4<u32>(u_input.a.x, u_input.c, 35017u, u_input.a.x))) | (u_input.a ^ _wgslsmith_clamp_vec3_u32(reverseBits(u_input.a), abs(vec3<u32>(u_input.c, 0u, 1u)), ~vec3<u32>(u_input.d, u_input.d, 74460u))), vec3<u32>(reverseBits(_wgslsmith_dot_vec2_u32(abs(u_input.a.zy), vec2<u32>(56578u, u_input.a.x))), u_input.c, ~(~(~4294967295u))), u_input.a);
    let var_1 = Struct_1(-4118i, -24427i, _wgslsmith_dot_vec3_i32(~max(func_3(Struct_2(u_input.a, -300f, -2103f, vec2<u32>(u_input.a.x, 16744u), vec4<f32>(1253f, -1000f, 1000f, 556f)), Struct_3(u_input.b.ywx, Struct_2(u_input.a, -493f, 2266f, u_input.a.xy, vec4<f32>(-692f, 167f, 656f, 263f))), true, vec4<i32>(2147483647i, 23067i, u_input.e, 2147483647i)), -vec3<i32>(u_input.e, 1i, u_input.e)), firstLeadingBit(u_input.b.wzy)), false, _wgslsmith_clamp_i32(-1i, -17101i, 69702i));
    var var_2 = vec2<bool>(true, select(false, !(!(!var_1.d)), func_3(Struct_2(vec3<u32>(var_0.x, u_input.d, 5077u), -576f, 320f, u_input.a.zy, vec4<f32>(-745f, -517f, 181f, 1000f)), Struct_3(u_input.b.wyy, Struct_2(vec3<u32>(u_input.c, 36503u, u_input.d), -905f, -716f, vec2<u32>(var_0.x, 1u), vec4<f32>(-465f, -1199f, 1605f, -104f))), true, ~u_input.b).x == 41678i));
    let var_3 = u_input.d;
    var_2 = vec2<bool>(true, any(vec3<bool>(true, true, var_2.x)));
    return Struct_1(min(var_1.a, i32(-1i) * -1i), -(1i >> (~(~var_0.x) % 32u)), 1i, false, select(12035i, firstLeadingBit(~26500i), var_2.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.b.x, u_input.b.x, arg_2.e, 30316i), u_input.b, arg_0), _wgslsmith_sub_vec4_i32(u_input.b, u_input.b)), vec4<i32>(i32(-1i) * -36924i, -1i, u_input.e, 1i)), arg_2.e, -1i), Struct_2(vec3<u32>(0u, ~u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))) * arg_1.x), _wgslsmith_add_vec2_u32(vec2<u32>(~4294967295u, 16131u), u_input.a.yx | _wgslsmith_sub_vec2_u32(u_input.a.yz, u_input.a.yx)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(exp2(arg_1.x)), -255f, -2208f) - _wgslsmith_div_vec4_f32(vec4<f32>(-1385f, -1194f, arg_1.x, arg_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(167f, -2271f, arg_1.x, -411f) - vec4<f32>(-337f, 1280f, arg_1.x, -1518f))))));
    var_0 = Struct_3(var_0.a, Struct_2(var_0.b.a, _wgslsmith_f_op_f32(var_0.b.c - -1323f), 1382f, u_input.a.xx, vec4<f32>(2981f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(886f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.e.x)) + var_0.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -652f) - 1438f))));
    var_0 = Struct_3(vec3<i32>(-1i) * -func_3(Struct_2(vec3<u32>(1u, u_input.c, 4294967295u), 235f, arg_1.x, vec2<u32>(0u, 3934u), var_0.b.e), Struct_3(u_input.b.wyx, var_0.b), true, u_input.b), var_0.b);
    var_0 = Struct_3(~countOneBits(~(vec3<i32>(var_0.a.x, 0i, 0i) >> (vec3<u32>(1u, var_0.b.a.x, 38691u) % vec3<u32>(32u)))), Struct_2(~var_0.b.a, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.c, 1931f)))), u_input.a.zy, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.b.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.e))))));
    let var_1 = u_input.b.xzy;
    return Struct_3(min(firstLeadingBit(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(4019i, 1i, -1i), vec3<i32>(u_input.b.x, u_input.e, -30386i)))), vec3<i32>(_wgslsmith_mod_i32(func_3(var_0.b, Struct_3(vec3<i32>(var_0.a.x, 13338i, var_0.a.x), Struct_2(u_input.a, var_0.b.e.x, arg_1.x, vec2<u32>(39939u, u_input.c), var_0.b.e)), true, u_input.b).x, _wgslsmith_sub_i32(arg_2.b, 1i)), ~_wgslsmith_clamp_i32(u_input.e, u_input.b.x, -23191i), arg_2.a)), Struct_2(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.d, 4294967295u), u_input.a)), _wgslsmith_f_op_f32(-280f * var_0.b.c), arg_1.x, _wgslsmith_sub_vec2_u32(u_input.a.zy << (u_input.a.xx % vec2<u32>(32u)), var_0.b.d) & ~vec2<u32>(var_0.b.d.x, u_input.a.x), var_0.b.e));
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = vec2<i32>(~(-30164i), arg_0.x);
    let var_1 = func_4(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, u_input.b.x == 1i, true, select(true, true, true)), vec4<bool>(true, true, any(vec3<bool>(true, false, false)), select(true, true, true))), vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1258f) + _wgslsmith_f_op_f32(step(-151f, 540f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2294f * 938f) + -762f))), func_2());
    let var_2 = _wgslsmith_add_u32(firstTrailingBit(~4294967295u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u), _wgslsmith_mult_vec2_u32(u_input.a.zz, u_input.a.yz)), ~vec2<u32>(32981u, 4294967295u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(36018u, 27771u), vec2<u32>(u_input.a.x, 47626u), vec2<u32>(u_input.a.x, u_input.c))));
    var_0 = vec2<i32>(1i, i32(-1i) * -30678i);
    var var_3 = Struct_3(-u_input.b.yyx & u_input.b.xxy, func_4(!vec4<bool>(false, any(vec3<bool>(false, false, true)), false, all(vec3<bool>(false, false, false))), var_1.b.e.zw, func_2()).b);
    return func_4(vec4<bool>(false && any(vec3<bool>(true, true, true)), true, true, !all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(select(var_3.b.b, _wgslsmith_f_op_f32(-var_3.b.e.x), 1871f > var_1.b.b))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.b.e.x), _wgslsmith_f_op_f32(-692f * var_1.b.b)))), func_2());
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.x);
    let var_1 = Struct_3(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.zyz, vec3<i32>(arg_1.a.x, 22608i, -1i)), vec3<i32>(7152i, arg_1.a.x, u_input.e)) >> (_wgslsmith_mod_vec3_u32(u_input.a, arg_0) % vec3<u32>(32u)), ~arg_1.a), Struct_2(vec3<u32>(arg_1.b.a.x, ~4294967295u, 1u & arg_0.x), arg_1.b.b, _wgslsmith_f_op_f32(round(func_4(vec4<bool>(true, false, false, false), _wgslsmith_f_op_vec2_f32(exp2(arg_1.b.e.ww)), Struct_1(34737i, -17698i, 2147483647i, true, 28995i)).b.c)), arg_1.b.d, arg_1.b.e));
    return -30002i & _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(-1i) * -vec2<i32>(u_input.e, var_1.a.x)), ~2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (((_wgslsmith_dot_vec3_i32(u_input.b.xwx, u_input.b.xzy) << (abs(1u) % 32u)) << (~_wgslsmith_div_u32(15823u, 4294967295u) % 32u)) & func_5(u_input.a, func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, u_input.e), u_input.b.yz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(385f, -504f, 1000f))))) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.xz, vec2<u32>(55139u, u_input.d)), u_input.a.yy), vec2<u32>(u_input.c, u_input.d)) % 32u);
    var var_1 = u_input.a.zy;
    let var_2 = func_1(~vec2<i32>(_wgslsmith_mod_i32(0i, max(26714i, 2147483647i)), func_4(vec4<bool>(true, false, true, false), vec2<f32>(-1664f, 1000f), Struct_1(var_0, 2147483647i, u_input.b.x, false, 22675i)).a.x & func_4(vec4<bool>(false, false, false, false), vec2<f32>(1755f, -1741f), Struct_1(-2147483647i, var_0, -1i, false, u_input.e)).a.x)).b;
    let var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~(-_wgslsmith_mod_vec4_i32(u_input.b, u_input.b)), select(select(u_input.b, u_input.b, true), min(vec4<i32>(u_input.b.x, -2147483647i, u_input.e, u_input.b.x), vec4<i32>(u_input.e, var_0, u_input.b.x, var_0)), vec4<bool>(false, true, true, false)) & select(vec4<i32>(0i, var_0, var_0, u_input.b.x), vec4<i32>(var_0, u_input.b.x, 11223i, var_0) << (vec4<u32>(u_input.d, 2525u, var_2.a.x, 1u) % vec4<u32>(32u)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false))), u_input.b);
    var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, u_input.a.x));
    var var_4 = func_2();
    var_1 = ~firstLeadingBit(vec2<u32>(var_2.a.x, u_input.c));
    var_1 = u_input.a.yx;
    var_1 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_3.x, ~(-1i), 43003i, var_3.x), u_input.a.x, firstLeadingBit(max(func_3(var_2, Struct_3(vec3<i32>(28410i, -42275i, 45475i), var_2), false, u_input.b), ~vec3<i32>(var_0, var_3.x, -26495i))) << (reverseBits(u_input.a ^ _wgslsmith_div_vec3_u32(u_input.a, u_input.a)) % vec3<u32>(32u)));
}

