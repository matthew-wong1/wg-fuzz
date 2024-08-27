struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_3(Struct_1(~firstTrailingBit(min(vec4<i32>(u_input.b, u_input.b, u_input.b, 37090i), vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i))), ~(i32(-1i) * -u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1500f, 1258f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(627f, 959f) - vec2<f32>(-1104f, 265f)), -22918i >= u_input.b))), _wgslsmith_clamp_i32(~_wgslsmith_div_i32(u_input.b, 18391i), reverseBits(i32(-1i) * -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)) | _wgslsmith_add_i32(u_input.b, u_input.b))), Struct_2(abs(~select(vec4<i32>(36282i, -15618i, 0i, 25496i), vec4<i32>(u_input.b, -57659i, 2147483647i, u_input.b), false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), all(vec3<bool>(false, true, false))), _wgslsmith_clamp_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 23925u, u_input.a.x)), countOneBits(vec4<u32>(41357u, u_input.a.x, u_input.a.x, 10768u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false))), vec4<u32>(~35367u, abs(6840u), 14051u, _wgslsmith_div_u32(u_input.a.x, 1u)), ~vec4<u32>(1u, 1u, 50384u, u_input.a.x) & ~vec4<u32>(u_input.a.x, u_input.a.x, 40389u, u_input.a.x)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-12779i, u_input.b, -45890i), firstTrailingBit(vec3<i32>(-12579i, u_input.b, u_input.b)))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(19478u, 0u, 110583u) >> (vec3<u32>(0u, 52089u, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 0u, u_input.a.x))), select(~vec3<u32>(8508u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 17905u, u_input.a.x) & vec3<u32>(1u, 0u, 44684u), all(vec4<bool>(false, true, false, true))))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 2147483647i), reverseBits(vec2<i32>(-2147483647i, u_input.b))), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(-18180i, -7103i)))) ^ 16209i, Struct_1(-firstTrailingBit(vec4<i32>(u_input.b, 61481i, 2651i, u_input.b)), 24003i, vec2<f32>(_wgslsmith_f_op_f32(trunc(-835f)), -1003f), _wgslsmith_add_i32(u_input.b, 86118i)));
    let var_1 = var_0.b;
    var var_2 = 4294967295u;
    var var_3 = var_1.b.x;
    var var_4 = _wgslsmith_f_op_f32(-var_0.d.c.x);
    return vec4<bool>(_wgslsmith_div_u32(var_1.e.x, var_1.e.x) >= _wgslsmith_clamp_u32(1u << (firstTrailingBit(var_1.e.x) % 32u), select(1u, 56756u, var_1.b.x) << (var_1.c.x % 32u), ~10197u), any(vec2<bool>(var_0.b.b.x, (-2147483647i >> (var_1.c.x % 32u)) >= -var_0.a.a.x)), var_1.b.x, false);
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(vec4<i32>(arg_0, -2002i, -25903i, -1i), _wgslsmith_sub_i32(countOneBits(firstTrailingBit(-1i)), 1i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -814f)), -900f), u_input.b), Struct_2(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, 11151i, arg_0, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(-60764i, -2147483647i, -22167i, u_input.b), vec4<i32>(u_input.b, -4874i, 87473i, arg_0))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), true), func_3(), !any(vec3<bool>(false, true, true))), vec4<u32>(u_input.a.x, abs(~8032u), 59135u, u_input.a.x), min(vec3<i32>(-7010i, arg_0, 0i) & ~vec3<i32>(-1i, -2147483647i, u_input.b), abs(vec3<i32>(-1i, -2147483647i, -5352i)) ^ -vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(u_input.a.x, countOneBits(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x, ~u_input.a.x))), 2147483647i, Struct_1(vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -49951i, u_input.b, arg_0), vec4<i32>(45769i, 0i, 7883i, arg_0)), -2147483647i | arg_0, 2147483647i) ^ min(select(vec4<i32>(-31315i, 1i, u_input.b, 1i), vec4<i32>(-18780i, u_input.b, -24594i, arg_0), vec4<bool>(false, true, false, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, 9185i, 1i, u_input.b), vec4<i32>(arg_0, -2147483647i, 2147483647i, arg_0))), _wgslsmith_add_i32(_wgslsmith_add_i32(arg_0, arg_0), abs(arg_0)) << (_wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~0u) % 32u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(step(-221f, -348f)), _wgslsmith_f_op_f32(745f - -1243f)), vec2<f32>(-156f, _wgslsmith_f_op_f32(ceil(164f))))), ~(u_input.b ^ _wgslsmith_sub_i32(1i, u_input.b))));
    var var_1 = var_0.b.b.x;
    var var_2 = select(vec4<bool>(!var_0.b.b.x, false, true, !select(true, var_0.d.d <= 1i, var_0.b.b.x)), select(vec4<bool>(!(!var_0.b.b.x), var_0.b.b.x, true, select(all(var_0.b.b.zx), false || var_0.b.b.x, var_0.a.c.x < -487f)), vec4<bool>(!var_0.b.b.x, true, all(var_0.b.b.xyw), !(!var_0.b.b.x)), select(!(!var_0.b.b), func_3(), !var_0.b.b)), false);
    let var_3 = select(vec3<i32>(1i, arg_0, _wgslsmith_add_i32(arg_0, -1i)), _wgslsmith_sub_vec3_i32(var_0.b.d ^ abs(-vec3<i32>(-10364i, -2147483647i, u_input.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(~arg_0, 2147483647i, select(u_input.b, var_0.d.d, true)), var_0.a.a.wzz, vec3<i32>(arg_0, -arg_0, i32(-1i) * -2147483647i))), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(var_0.d.a.x, u_input.b))) == ~1i);
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1396f, var_0.d.c.x, 761f) * vec3<f32>(863f, 707f, 1613f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.c.x, var_0.d.c.x, var_0.a.c.x), vec3<f32>(755f, 368f, -1000f))))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), var_0.a.c.x, -586f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1641f, -719f, var_0.a.c.x)))), select(true, var_0.b.b.x, !var_0.b.b.x))))));
    return Struct_3(Struct_1(firstTrailingBit(-(vec4<i32>(var_0.b.a.x, arg_0, 1i, var_3.x) ^ vec4<i32>(-2147483647i, 0i, 48752i, 10564i))), _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, var_3.x, u_input.b, 1i), vec4<i32>(-24276i, u_input.b, -1i, var_0.a.a.x)), -vec4<i32>(arg_0, arg_0, var_0.b.d.x, 6316i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_4.xx * vec2<f32>(1125f, -986f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c.x, var_4.x))), 2147483647i), var_0.b, min(var_3.x, -66728i), var_0.a);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: u32) -> i32 {
    var var_0 = !(!arg_1.b.b.yx);
    let var_1 = _wgslsmith_dot_vec4_u32(arg_1.b.c ^ countOneBits(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 53490u, 20617u), arg_1.b.e.x, arg_2, arg_2)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.e.x, 5702u, 10403u), ~vec3<u32>(arg_2, arg_2, 16000u)), func_2(~arg_1.d.d).b.c.x, arg_2, 23007u));
    var_0 = !arg_1.b.b.yy;
    let var_2 = !arg_1.b.b.yyy;
    var var_3 = -2147483647i;
    return -10980i;
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.d.c.x - 1397f))) - -570f));
    let var_1 = -2147483647i;
    let var_2 = func_4(all(!(!vec3<bool>(false, arg_1, arg_1))), func_2(_wgslsmith_sub_i32(abs(_wgslsmith_mult_i32(arg_0.b.c, -1i)), _wgslsmith_sub_i32(countOneBits(var_1), _wgslsmith_add_i32(arg_0.b.c, u_input.b)))), _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(49220u, arg_0.d, 1u, arg_0.c.e.x), vec4<u32>(u_input.a.x, u_input.a.x, arg_0.b.b.e.x, 14956u))), ~func_2(~(-10911i)).b.c));
    var_0 = 649f;
    let var_3 = vec4<bool>(select(var_1, reverseBits(_wgslsmith_add_i32(arg_0.c.d.x, 1i)), func_3().x & (arg_0.c.b.x && false)) >= min(max(select(var_1, -28004i, arg_1), _wgslsmith_mod_i32(-7573i, var_2)), var_1), any(!arg_0.b.b.b.yyz), _wgslsmith_f_op_f32(-857f * -1000f) > arg_0.e, all(func_3().zwy));
    return Struct_2(-vec4<i32>(var_2, _wgslsmith_mod_i32(u_input.b >> (4294967295u % 32u), -arg_0.c.d.x), -arg_0.b.a.b ^ func_2(var_2).a.d, i32(-1i) * -var_1), var_3, arg_0.b.b.c, vec3<i32>(u_input.b, 1i >> (u_input.a.x % 32u), u_input.b), arg_0.b.b.c.wzx);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> bool {
    let var_0 = func_2(~u_input.b);
    var var_1 = select(arg_1.c.wz, u_input.a, true);
    var_1 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, ~_wgslsmith_clamp_u32(arg_0.e.x, arg_0.e.x, 58840u)), ~(~(~1u))), _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.a.x, arg_1.c.x, u_input.a.x, 4294967295u)), arg_0.c) | max(1u, 0u));
    var_1 = ~(~_wgslsmith_add_vec2_u32(min(~arg_1.c.zy, var_0.b.e.yy), reverseBits(select(arg_0.e.xx, vec2<u32>(var_0.b.c.x, 4294967295u), var_0.b.b.x))));
    return any(!select(vec4<bool>(var_0.b.b.x, all(var_0.b.b), true, any(arg_0.b.yx)), var_0.b.b, arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(764f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1347f);
    let var_1 = true;
    let var_2 = Struct_2(~(~countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(26558i, u_input.b, -23580i, -1i), vec4<i32>(-2147483647i, u_input.b, -1i, -27919i)))), vec4<bool>(!func_5(Struct_2(vec4<i32>(-1i, -2147483647i, u_input.b, u_input.b), vec4<bool>(var_1, var_1, false, true), vec4<u32>(16539u, u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.b, 2147483647i, -2147483647i), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), func_1(Struct_4(-727f, Struct_3(Struct_1(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), 4654i, vec2<f32>(766f, -396f), -2147483647i), Struct_2(vec4<i32>(u_input.b, -26739i, -17594i, 31361i), vec4<bool>(false, var_1, var_0, true), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u), vec3<i32>(1i, u_input.b, 1i), vec3<u32>(60516u, 0u, u_input.a.x)), u_input.b, Struct_1(vec4<i32>(12782i, -2147483647i, u_input.b, u_input.b), 1i, vec2<f32>(101f, 780f), u_input.b)), Struct_2(vec4<i32>(8326i, u_input.b, -2147483647i, u_input.b), vec4<bool>(var_1, true, var_1, var_0), vec4<u32>(4294967295u, 19754u, 4294967295u, u_input.a.x), vec3<i32>(u_input.b, -31395i, -52340i), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), 4294967295u, -219f), var_0), func_2(-2147483647i).b.b.x), !var_1 == var_1, true, var_0), firstTrailingBit(vec4<u32>(4294967295u, 23742u, ~0u, ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), -vec3<i32>(-(~u_input.b), u_input.b, u_input.b), firstLeadingBit(max(firstLeadingBit(vec3<u32>(4294967295u, 0u, 43912u)), func_1(Struct_4(502f, Struct_3(Struct_1(vec4<i32>(1i, 15358i, u_input.b, 5186i), -2147483647i, vec2<f32>(281f, -1940f), u_input.b), Struct_2(vec4<i32>(u_input.b, 1i, u_input.b, 2147483647i), vec4<bool>(true, false, var_0, var_0), vec4<u32>(22533u, 1u, u_input.a.x, u_input.a.x), vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<u32>(u_input.a.x, 0u, 23463u)), u_input.b, Struct_1(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), 2147483647i, vec2<f32>(1021f, -1094f), -7203i)), Struct_2(vec4<i32>(-92160i, u_input.b, u_input.b, 2782i), vec4<bool>(true, false, var_1, false), vec4<u32>(0u, u_input.a.x, u_input.a.x, 89754u), vec3<i32>(-1i, 67367i, -35605i), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), 1u, -296f), all(vec3<bool>(var_1, var_1, false))).e)));
    var var_3 = var_2;
    let var_4 = func_2(-(var_2.d.x << (0u % 32u)));
    var_3 = func_2(func_1(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.c.x) - _wgslsmith_f_op_f32(-2281f * var_4.d.c.x)), func_2(2147483647i), Struct_2(~vec4<i32>(55964i, 1i, var_2.a.x, 21757i), func_2(var_3.d.x).b.b, ~var_4.b.c, _wgslsmith_clamp_vec3_i32(var_2.a.wxx, vec3<i32>(1798i, u_input.b, 2147483647i), var_4.d.a.www), func_2(-24619i).b.c.zwx), 1u, _wgslsmith_f_op_f32(step(-973f, _wgslsmith_div_f32(var_4.a.c.x, -133f)))), !var_4.b.b.x).a.x).b;
    let var_5 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1165f) - _wgslsmith_f_op_f32(-var_4.a.c.x))), var_4, Struct_2(abs(vec4<i32>(func_4(false, Struct_3(Struct_1(var_4.a.a, u_input.b, vec2<f32>(730f, var_4.a.c.x), var_4.c), var_2, var_4.d.b, Struct_1(var_3.a, var_3.d.x, var_4.d.c, var_2.d.x)), var_2.c.x), func_4(false, var_4, 1u), ~33293i, var_3.d.x)), var_2.b, (var_4.b.c & var_2.c) >> (vec4<u32>(42963u, ~var_3.c.x, 1u, ~0u) % vec4<u32>(32u)), vec3<i32>(~var_2.a.x, reverseBits(-var_3.a.x), 6600i), var_4.b.e), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_4.b.e.x, var_4.b.c.x), u_input.a), vec2<u32>(var_3.c.x, 6371u), var_2.c.zx), ~func_2(var_2.d.x).b.c.zw), 1u), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.d.c.x))))));
    var_3 = Struct_2(select(vec4<i32>(var_4.d.d, _wgslsmith_add_i32(var_2.a.x, var_5.c.a.x), ~var_2.a.x, ~10236i), -(var_5.b.d.a & vec4<i32>(var_5.c.a.x, -30356i, 15971i, var_2.d.x)), vec4<bool>(all(var_5.c.b.yx), false, var_0, select(true, true, var_2.b.x))) & ~vec4<i32>(u_input.b, abs(-2147483647i), func_1(Struct_4(-1000f, var_4, Struct_2(vec4<i32>(var_2.d.x, -2147483647i, 2147483647i, 19784i), var_2.b, var_4.b.c, var_4.b.a.xyx, vec3<u32>(0u, 22060u, 0u)), var_2.c.x, var_5.b.a.c.x), false).a.x, var_3.a.x), vec4<bool>(var_2.b.x, !((var_2.d.x <= var_4.c) & (var_4.b.c.x == var_3.c.x)), true, var_3.b.x), var_5.c.c, reverseBits(-var_5.b.d.a.xxx), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, var_5.c.e.x, 29164u)) << (countOneBits(vec3<u32>(u_input.a.x, 4294967295u, var_5.d)) % vec3<u32>(32u)), ~(~(vec3<u32>(var_3.e.x, var_5.b.b.e.x, 37090u) | vec3<u32>(1u, 4294967295u, u_input.a.x)))));
    let var_6 = Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_4.a.c.x, _wgslsmith_f_op_f32(-547f * 1f)))), var_4, Struct_2(-var_3.a, var_3.b, var_4.b.c, max(var_3.d, _wgslsmith_add_vec3_i32(vec3<i32>(-17780i, -1i, 2147483647i), ~vec3<i32>(-21141i, var_5.c.a.x, 27352i))), ~vec3<u32>(~u_input.a.x, ~var_2.c.x, firstLeadingBit(19223u))), ~u_input.a.x, _wgslsmith_f_op_f32(ceil(var_4.a.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1682f, var_6.a, -834f, -1119f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1413f, var_4.a.c.x, -605f, var_6.a)), any(vec4<bool>(true, var_3.b.x, var_5.c.b.x, true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_5.e, 769f, 1642f, 295f), vec4<f32>(868f, var_6.b.a.c.x, var_6.b.d.c.x, var_4.a.c.x))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1640f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4.a.c.x, -1498f, true))), 162f, _wgslsmith_f_op_f32(929f * _wgslsmith_f_op_f32(-1595f + var_6.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2025f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -693f) - _wgslsmith_f_op_f32(ceil(802f))))), vec3<i32>(0i, _wgslsmith_mod_i32(var_3.a.x, ~_wgslsmith_div_i32(24181i, var_4.c)), 0i | -func_4(true, Struct_3(var_5.b.d, var_6.b.b, -1i, var_5.b.a), var_5.c.c.x)));
}

