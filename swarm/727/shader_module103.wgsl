struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    let var_0 = vec3<bool>(all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), all(vec4<bool>(false, true, true, true))), vec2<bool>(true, true), any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)))), reverseBits(~(-12899i >> (0u % 32u))) < abs(arg_2.x | arg_2.x), !(!(_wgslsmith_mult_i32(2147483647i, u_input.a) >= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 24348i, 0i), arg_2))));
    let var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(23176u, 9682u, select(~48570u, min(36006u, 4294967295u), true & var_0.x)), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), vec3<u32>(7691u, 0u, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 35527u, 4294967295u), vec4<u32>(69689u, 42813u, 1u, 25437u)), ~34054u, 1979u)));
    let var_2 = Struct_2(vec2<u32>(_wgslsmith_dot_vec3_u32(~firstLeadingBit(var_1), min(var_1, var_1)), min(var_1.x, var_1.x & _wgslsmith_mult_u32(var_1.x, 1u))));
    let var_3 = var_1.x;
    let var_4 = var_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-585f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))) + arg_0.x);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1022f) + 1111f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(644f * 963f), 906f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(-450f, -588f, 1116f, 146f), -1i, vec3<i32>(u_input.a, u_input.a, u_input.a))) + _wgslsmith_f_op_f32(-327f * 463f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1869f * -569f), -1492f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(113f, 485f, -1869f, 1770f)))))))), ~(_wgslsmith_mod_u32(1u, 4294967295u) >> (1u % 32u)), ~vec3<u32>(~reverseBits(19465u), 1u, ~(~1u)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~countOneBits(vec4<i32>(0i, 1i, 0i, -2147483647i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -4116i, -49763i), vec4<i32>(u_input.a, 54232i, 772i, u_input.a))), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(_wgslsmith_mult_i32(u_input.a, -10134i), u_input.a, firstLeadingBit(-15084i), abs(u_input.a)))));
    var var_1 = Struct_2(~vec2<u32>(firstTrailingBit(~4294967295u), _wgslsmith_add_u32(~14509u, min(0u, var_0.c.x))));
    let var_2 = Struct_2(var_0.c.xx & vec2<u32>(~4294967295u, 1u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x * 1000f))))))));
    return abs(-2147483647i);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: i32) -> Struct_4 {
    var var_0 = vec4<bool>(true, true, true, true);
    var_0 = vec4<bool>(all(vec2<bool>(-u_input.a < u_input.a, false)), -1098f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1854f + _wgslsmith_f_op_f32(f32(-1f) * -621f)))), !any(vec4<bool>(true, var_0.x, true, var_0.x)), var_0.x);
    let var_1 = _wgslsmith_add_u32(0u, 14412u);
    var var_2 = vec4<i32>(~_wgslsmith_div_i32(abs(arg_2.x), reverseBits(-12158i)), u_input.a, _wgslsmith_dot_vec2_i32(reverseBits(countOneBits(arg_2.xy)), vec2<i32>(1i, 1i) & -_wgslsmith_div_vec2_i32(arg_2.zz, vec2<i32>(1i, u_input.a))), -14833i);
    let var_3 = Struct_5(_wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647i, arg_3, arg_2.x) << ((~vec3<u32>(arg_1.x, arg_1.x, arg_0) ^ arg_1.wzy) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(arg_2, arg_2), ~arg_3), func_2(), arg_2.x)), select(arg_0, var_1, true) | arg_0, false);
    return Struct_4(1u, -reverseBits(_wgslsmith_sub_i32(countOneBits(var_2.x), -35757i)), Struct_2(~vec2<u32>(52021u, _wgslsmith_clamp_u32(13777u, 1u, var_3.b))), var_3.c, Struct_3(var_0.xyz));
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = func_4(min(39126u, _wgslsmith_add_u32(2253u, 1u >> (1u % 32u))), vec4<u32>(_wgslsmith_clamp_u32(~(~1u), 0u, _wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(29415u, 31912u), vec2<u32>(0u, 0u)))), 1u, ~137150u, 1u), vec4<i32>(~(-_wgslsmith_mod_i32(0i, arg_0)), _wgslsmith_clamp_i32(u_input.a, -countOneBits(u_input.a), -36022i), _wgslsmith_div_i32(arg_0 | u_input.a, u_input.a) & func_2(), _wgslsmith_add_i32(-arg_0, max(u_input.a, u_input.a)) | arg_0), 1956i);
    var_0 = Struct_4(func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_div_u32(var_0.a, 1u)), _wgslsmith_mod_vec2_u32(var_0.c.a, var_0.c.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.a.x, 0u, var_0.a, 0u), vec4<u32>(0u, var_0.c.a.x, 4826u, 4294967295u)), _wgslsmith_clamp_u32(var_0.a, 28012u, 25214u), var_0.a, var_0.a & var_0.c.a.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(37953u, var_0.a, var_0.a, 1u), vec4<u32>(var_0.c.a.x, var_0.c.a.x, 60205u, var_0.c.a.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, ~1i, -25236i, var_0.b), min(~vec4<i32>(2147483647i, var_0.b, 2147483647i, -2147483647i), ~vec4<i32>(arg_0, 2147483647i, arg_0, arg_0))), 0i).c.a.x, 0i, Struct_2(var_0.c.a), false, Struct_3(vec3<bool>(_wgslsmith_f_op_f32(-1218f + 2000f) > _wgslsmith_f_op_f32(sign(-778f)), var_0.e.a.x, u_input.a == ~22337i)));
    var var_1 = Struct_3(func_4(~var_0.a, _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x, var_0.a) ^ vec4<u32>(var_0.a, 4394u, 3488u, var_0.a)), ~(~vec4<u32>(94846u, 1u, 1u, 0u))), ~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(741i, var_0.b, -2147483647i, u_input.a), vec4<i32>(1i, 7374i, 0i, arg_0)), vec4<i32>(arg_0, u_input.a, -42024i, var_0.b)), firstTrailingBit(0i)).e.a);
    var_1 = Struct_3(func_4(_wgslsmith_add_u32(1u, var_0.c.a.x), ~vec4<u32>(max(var_0.a, 1u), var_0.a, 0u, func_4(var_0.c.a.x, vec4<u32>(4294967295u, var_0.c.a.x, 1u, 64409u), vec4<i32>(u_input.a, -49098i, 1i, 22978i), -2147483647i).c.a.x), countOneBits(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b, -3065i, -2147483647i, 2034i), vec4<i32>(var_0.b, arg_0, -44112i, arg_0)))), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, var_0.b), 1i)).e.a);
    var var_2 = select(var_0.d, !all(vec3<bool>(false, any(vec4<bool>(var_1.a.x, false, var_0.d, var_1.a.x)), true)), var_0.d);
    return func_4(var_0.a, ~_wgslsmith_mult_vec4_u32(vec4<u32>(19662u, var_0.a, 1u, _wgslsmith_add_u32(var_0.a, var_0.a)), ~(vec4<u32>(18957u, var_0.a, var_0.c.a.x, 1u) ^ vec4<u32>(7475u, 34164u, 4294967295u, var_0.a))), _wgslsmith_mod_vec4_i32(~(~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 39874i, arg_0, 809i), vec4<i32>(2147483647i, 1i, var_0.b, u_input.a))), max(vec4<i32>(~arg_0, u_input.a, arg_0, var_0.b), _wgslsmith_add_vec4_i32(vec4<i32>(-18288i, var_0.b, u_input.a, -45840i), firstLeadingBit(vec4<i32>(-14791i, arg_0, var_0.b, -64621i))))), -_wgslsmith_mod_i32(arg_0, -func_4(57707u, vec4<u32>(1u, var_0.c.a.x, 1u, var_0.a), vec4<i32>(21979i, u_input.a, arg_0, arg_0), -8454i).b)).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~0i);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-478f)) * -1038f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(-110f))) * 134f), 687f));
    let var_2 = ~_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), _wgslsmith_sub_i32(1i << (var_0.a.x % 32u), -36298i)) << (1u % 32u);
    let var_3 = min(~min(vec2<i32>(u_input.a, 1i), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-59277i, u_input.a), vec2<i32>(var_2, -13486i)), firstLeadingBit(vec2<i32>(-1i, u_input.a)))), select(~vec2<i32>(i32(-1i) * -2791i, 0i), vec2<i32>(var_2, ~(-29876i)) | (_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -4264i), vec2<i32>(var_2, u_input.a)) << (_wgslsmith_sub_vec2_u32(var_0.a, var_0.a) % vec2<u32>(32u))), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)))));
    let var_4 = _wgslsmith_add_i32(~13492i, var_2);
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_mult_u32(var_0.a.x, var_0.a.x | 1u) >> (((0u & var_0.a.x) & max(var_0.a.x, var_0.a.x)) % 32u)) >> (var_0.a.x % 32u));
}

