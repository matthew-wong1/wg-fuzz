struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_4) -> u32 {
    var var_0 = vec4<bool>(arg_3.a.b.c.x, arg_3.a.b.b.x, arg_3.a.b.b.x, false || all(!(!vec2<bool>(arg_3.a.b.b.x, arg_3.a.b.b.x))));
    var_0 = !select(arg_3.a.b.b, vec4<bool>(true, -49551i >= arg_3.a.a, arg_3.a.b.b.x, true), !vec4<bool>(true, !arg_3.a.b.b.x, true, !var_0.x));
    let var_1 = _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(1i, _wgslsmith_mod_i32(2147483647i, arg_3.a.c.x), -2147483647i, select(-2147483647i, -6109i, false)) | -vec4<i32>(u_input.a, arg_3.a.c.x, 1i, 19081i)), ~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(15833i, arg_0, arg_3.a.a, -14262i), vec4<i32>(arg_0, -27298i, 0i, arg_0), arg_3.a.b.b), vec4<i32>(arg_3.a.a, arg_0, arg_0, arg_0)), vec4<i32>(reverseBits(u_input.b.x), arg_3.a.c.x, ~arg_3.a.c.x, ~(-20581i))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-14611i, countOneBits(arg_3.a.c.x), arg_0, 21255i >> (1u % 32u)), max(vec4<i32>(-22394i, -49335i, 33010i, arg_0) << (vec4<u32>(4294967295u, arg_2.a, arg_2.a, arg_3.a.d.a) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(arg_3.a.a, -2147483647i, u_input.a, arg_3.a.c.x)))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-29486i, arg_3.a.c.x, 1i, u_input.a) & vec4<i32>(u_input.b.x, 79099i, 74420i, 0i), abs(vec4<i32>(25481i, arg_0, arg_0, arg_3.a.c.x))))));
    var_0 = vec4<bool>(arg_3.a.b.c.x, any(!(!(!arg_3.a.b.b.xwx))), arg_3.a.b.b.x, false | all(select(select(arg_3.a.b.b, vec4<bool>(var_0.x, true, true, var_0.x), true), !vec4<bool>(arg_3.a.b.c.x, false, arg_3.a.b.b.x, arg_3.a.b.b.x), arg_3.a.b.b)));
    var var_2 = 2147483647i;
    return arg_2.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<i32>) -> vec3<i32> {
    var var_0 = Struct_2(0u | arg_0.x, _wgslsmith_f_op_f32(sign(-1061f)));
    let var_1 = ~(~min(1u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(12842u, var_0.a), 1u, arg_0.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-263f)), _wgslsmith_f_op_f32(-var_0.b), 41591i <= arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(952f - -879f) + _wgslsmith_f_op_f32(round(430f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
    var_0 = Struct_2(firstLeadingBit(_wgslsmith_dot_vec3_u32(~arg_0.wxz, ~(vec3<u32>(4294967295u, var_1, 4294967295u) >> (arg_0.xyy % vec3<u32>(32u))))), var_0.b);
    var var_3 = Struct_2(var_0.a, 1000f);
    return abs(abs(vec3<i32>(_wgslsmith_sub_i32(arg_1, arg_2.x), 2147483647i, _wgslsmith_mult_i32(-14048i, 4156i)) | (vec3<i32>(u_input.b.x, u_input.a, arg_2.x) << (~vec3<u32>(var_0.a, var_0.a, var_0.a) % vec3<u32>(32u)))));
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_4(Struct_3(abs(u_input.a), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(594f, 1208f, -367f, -284f)), vec4<bool>(true, true, true, true), vec2<bool>(true, true)), func_4(vec4<u32>(0u, func_3(u_input.b.x, vec3<f32>(189f, 311f, -1112f), Struct_2(1u, -1465f), Struct_4(Struct_3(2147483647i, Struct_1(vec4<f32>(1611f, 773f, 655f, -550f), vec4<bool>(true, true, true, false), vec2<bool>(true, false)), u_input.b, Struct_2(1u, -532f)))), 20428u, 33089u), -_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), -vec2<i32>(u_input.b.x, -1i)), Struct_2(abs(_wgslsmith_mult_u32(1u, 4294967295u)), _wgslsmith_div_f32(-589f, _wgslsmith_f_op_f32(step(-343f, 926f))))));
    var_0 = Struct_4(Struct_3(-278i, var_0.a.b, ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.a, -25168i), vec2<i32>(u_input.b.x, 2147483647i)), -1i, var_0.a.c.x), Struct_2(var_0.a.d.a, _wgslsmith_f_op_f32(exp2(var_0.a.b.a.x)))));
    let var_1 = var_0.a.d;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) - _wgslsmith_f_op_f32(select(-312f, 736f, var_1.a >= 0u)))));
    var var_3 = reverseBits(_wgslsmith_dot_vec3_i32(select(max(u_input.b, u_input.b), _wgslsmith_mod_vec3_i32(var_0.a.c, vec3<i32>(u_input.b.x, var_0.a.a, u_input.a)), true), var_0.a.c)) ^ ~(~u_input.a);
    return vec3<i32>(-98320i, 1i, firstTrailingBit(_wgslsmith_add_i32(var_0.a.a, 1i)));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = ~min(~(~(~arg_0.d.a)), 2259u);
    let var_1 = select(arg_0.b.b, select(vec4<bool>(arg_0.b.b.x, true, any(vec4<bool>(arg_0.b.c.x, arg_0.b.b.x, false, arg_2.c.x)), all(arg_2.b)), select(vec4<bool>(true, any(vec3<bool>(arg_2.b.x, arg_0.b.b.x, false)), any(arg_2.b.xzy), arg_0.b.b.x), arg_0.b.b, any(!arg_0.b.b.yxz)), select(arg_2.b, vec4<bool>(true, true, !arg_2.c.x, arg_1 < arg_1), !arg_2.b.x)), select(!(!(!vec4<bool>(false, arg_2.b.x, arg_2.c.x, arg_0.b.b.x))), select(arg_2.b, arg_2.b, vec4<bool>(any(vec3<bool>(arg_2.b.x, arg_2.b.x, true)), arg_0.b.b.x, arg_2.b.x, arg_0.b.c.x)), select(vec4<bool>(false && arg_2.c.x, all(vec2<bool>(true, arg_2.c.x)), false, false), arg_0.b.b, vec4<bool>(true, all(arg_0.b.b), true, arg_2.c.x))));
    let var_2 = Struct_2(countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, 4294967295u), min(~vec2<u32>(54185u, 53817u), arg_3.zy))), _wgslsmith_f_op_f32(363f + _wgslsmith_f_op_f32(ceil(348f))));
    var_0 = ~1u;
    let var_3 = all(arg_2.b);
    return Struct_2(arg_3.x, arg_0.b.a.x);
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(379f, -161f), 507f, _wgslsmith_f_op_f32(f32(-1f) * -415f))));
    var var_1 = var_0.x;
    let var_2 = func_5(Struct_3(countOneBits(~72909i), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(1255f, var_0.x)), 488f, var_0.x, var_0.x), vec4<bool>(false, true, all(vec4<bool>(false, true, false, false)), any(vec4<bool>(true, false, true, true))), vec2<bool>(true, true)), _wgslsmith_clamp_vec3_i32(-u_input.b, u_input.b, vec3<i32>(56551i, u_input.b.x, -59943i) & func_2()), Struct_2(12993u, _wgslsmith_f_op_f32(min(351f, _wgslsmith_f_op_f32(var_0.x + -597f))))), 4294967295u, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-792f, 221f, var_0.x, -1844f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1204f, -1222f, var_0.x, 1846f), vec4<f32>(-1370f, -1411f, var_0.x, 1000f), vec4<bool>(true, true, true, false))), true)), vec4<f32>(_wgslsmith_f_op_f32(min(-126f, var_0.x)), _wgslsmith_f_op_f32(var_0.x - 411f), 1231f, -1005f)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), true), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), true))), vec4<u32>(select(_wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 10895u, 4294967295u, 16137u), vec4<u32>(1u, 0u, 80031u, 94369u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 17883u), vec4<u32>(4294967295u, 29488u, 436u, 4294967295u))), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(13377u, 4294967295u, 136594u))), false), ~firstTrailingBit(~29852u), _wgslsmith_sub_u32(~(~0u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(13053u, 1u, 456u), ~11025u)), _wgslsmith_mod_u32(44107u, firstTrailingBit(0u))));
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_div_f32(-499f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 648f)), _wgslsmith_f_op_f32(1117f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))), var_2.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b, 225f) - 1567f)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, any(vec3<bool>(true, true, true)), true, false), vec4<bool>(true, true, true, true)), vec2<bool>(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, u_input.a, 43090i, u_input.a), vec4<i32>(u_input.b.x, u_input.a, u_input.a, u_input.a)) >= func_4(vec4<u32>(var_2.a, var_2.a, 14226u, var_2.a) ^ vec4<u32>(0u, 32545u, 4294967295u, 49730u), -20957i << (var_2.a % 32u), vec2<i32>(u_input.b.x, u_input.a)).x, var_2.a >= 16934u));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(290f, var_2.b)), 436f, _wgslsmith_f_op_f32(-var_0.x)))));
    return vec4<bool>(!var_3.b.x, true, !any(var_3.b), any(!select(vec3<bool>(var_3.b.x, var_3.c.x, true), var_3.b.xxz, var_3.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -2417f)))), 551f, 1439f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-363f, -2837f)) + _wgslsmith_f_op_f32(min(-1000f, 105f))) * _wgslsmith_f_op_f32(-669f - _wgslsmith_f_op_f32(abs(-743f))))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), u_input.a <= u_input.b.x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), func_1(), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)))), !vec2<bool>(any(vec4<bool>(false, true, false, false)) & select(false, true, false), true));
    var var_1 = 1i;
    var_1 = -25155i;
    var_1 = -41024i;
    var_1 = func_4(select(vec4<u32>(~4294967295u, ~4294967295u, 4294967295u, 4294967295u) >> (select(~vec4<u32>(12568u, 29281u, 1u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(41593u, 0u, 0u, 32818u), vec4<u32>(25934u, 1u, 4294967295u, 97710u)), true) % vec4<u32>(32u)), abs(vec4<u32>(1u, 1u, 1u, 1u)), !var_0.b), 0i, _wgslsmith_clamp_vec2_i32(select(abs(u_input.b.yy), vec2<i32>(u_input.a | 8338i, u_input.a ^ 34863i), select(var_0.c, func_1().yw, any(var_0.b))), _wgslsmith_mod_vec2_i32(~u_input.b.zx, vec2<i32>(firstTrailingBit(u_input.a), _wgslsmith_clamp_i32(0i, u_input.b.x, u_input.b.x))), u_input.b.xx)).x;
    var var_2 = _wgslsmith_add_i32(~2397i, firstTrailingBit(-60164i));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x))), 55118u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), -998f)), ~(~u_input.b.zx));
}

