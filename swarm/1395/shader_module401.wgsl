struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_2,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>) -> vec4<u32> {
    return vec4<u32>(_wgslsmith_dot_vec2_u32(min(~vec2<u32>(u_input.b, u_input.b), select(vec2<u32>(85870u, u_input.a), vec2<u32>(1u, 6452u), vec2<bool>(false, false))) & ~(~vec2<u32>(1u, 88998u)), ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(0u, u_input.b)), vec2<u32>(u_input.b, 1u))), u_input.b, u_input.b | ~max(57295u, reverseBits(u_input.b)), _wgslsmith_sub_u32(u_input.a, _wgslsmith_mult_u32(u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<u32>(u_input.b, u_input.b, 85134u)), ~vec3<u32>(u_input.b, 30473u, u_input.a)))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_4 {
    var var_0 = countOneBits(vec4<u32>(abs(firstLeadingBit(1u)), _wgslsmith_mod_u32(1u, countOneBits(arg_1.x)), u_input.a, arg_1.x)) ^ func_3(-_wgslsmith_sub_vec2_i32(-vec2<i32>(arg_0.a.a, 7055i), -vec2<i32>(1i, arg_0.b.a)));
    var var_1 = var_0.x;
    let var_2 = max(_wgslsmith_sub_vec4_u32(reverseBits(~(~vec4<u32>(u_input.a, 1u, 9621u, 1u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, var_0.x, arg_0.c.x, u_input.a) & vec4<u32>(arg_0.c.x, var_0.x, u_input.b, arg_1.x), select(vec4<u32>(var_0.x, 61187u, 17703u, 0u), vec4<u32>(var_0.x, arg_0.c.x, 5079u, arg_0.c.x), vec4<bool>(true, true, true, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.a, 10981u, 1u), vec4<u32>(arg_1.x, 1u, 0u, arg_0.c.x)))), min(vec4<u32>(max(reverseBits(13395u), 14882u), firstTrailingBit(4294967295u) | firstLeadingBit(0u), ~2314u, 73774u), select(~reverseBits(vec4<u32>(4064u, arg_1.x, 64756u, 93515u)), func_3(vec2<i32>(arg_0.b.a, arg_0.a.a) ^ vec2<i32>(arg_0.b.a, arg_0.a.a)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)))));
    var_0 = countOneBits(_wgslsmith_mult_vec4_u32(~firstTrailingBit(~vec4<u32>(arg_0.c.x, arg_1.x, arg_1.x, 58932u)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(87454u, var_2.x, u_input.b, 0u)), vec4<u32>(4708u, u_input.b, 34302u, arg_0.c.x)), var_2)));
    var var_3 = 44554i;
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), select(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), arg_0.c.x <= var_0.x), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(true, false, true, false)), false, all(vec2<bool>(false, true)), all(vec2<bool>(true, false))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true)), arg_0.b, Struct_2(-arg_0.a.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(183f, 1292f), vec2<f32>(-1754f, -980f), false)) * vec2<f32>(1856f, 1706f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(655f, 814f) + vec2<f32>(1000f, 766f)) + vec2<f32>(1000f, -428f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-542f, -306f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_4, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_2.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1473f)))));
    var var_1 = vec2<u32>(48958u, 1u);
    var_1 = abs(_wgslsmith_div_vec2_u32((vec2<u32>(18077u, var_1.x) ^ vec2<u32>(36693u, 0u)) & vec2<u32>(arg_1, 84951u), vec2<u32>(_wgslsmith_add_u32(u_input.b, 26103u), 1u | arg_1))) & (_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, arg_1), vec2<u32>(0u, u_input.a)), vec2<u32>(19646u, var_1.x), ~vec2<u32>(arg_1, 1u)), ~vec2<u32>(arg_1, 29020u)) >> (~vec2<u32>(u_input.b, _wgslsmith_mod_u32(19235u, 20346u)) % vec2<u32>(32u)));
    var var_2 = Struct_3(func_2(Struct_3(arg_2.c, Struct_2(firstLeadingBit(arg_3)), min(vec3<u32>(arg_1, 1u, 4294967295u), vec3<u32>(var_1.x, 44019u, arg_1))), _wgslsmith_add_vec2_u32(vec2<u32>(~49964u, u_input.b), ~vec2<u32>(4294967295u, 39940u))).d, func_2(Struct_3(arg_2.c, Struct_2(-7114i), ~vec3<u32>(u_input.b, u_input.a, u_input.b)), min(func_3(vec2<i32>(45951i, 1i)).wz, vec2<u32>(_wgslsmith_mult_u32(45992u, 0u), 1u))).c, vec3<u32>(abs(36011u), func_3(~vec2<i32>(arg_3, arg_2.d.a)).x, _wgslsmith_div_u32(_wgslsmith_div_u32(arg_1 | arg_1, u_input.b), ~_wgslsmith_add_u32(u_input.b, var_1.x))));
    var var_3 = Struct_1(arg_2.b.yyz, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -234f))), vec2<u32>(1u, var_1.x), 63304u, false);
    return var_2.a.a;
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -438f);
    var var_1 = ~(~func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, arg_0, arg_0, arg_0)))), 4294967295u, func_2(Struct_3(Struct_2(-1i), Struct_2(19136i), vec3<u32>(u_input.a, 18944u, u_input.b)), select(vec2<u32>(52621u, u_input.b), vec2<u32>(u_input.a, u_input.b), vec2<bool>(true, true))), 1i));
    var var_2 = Struct_2(~(~func_2(Struct_3(Struct_2(36769i), Struct_2(-1i), vec3<u32>(12271u, 34772u, u_input.b)), vec2<u32>(u_input.b, 1u)).d.a) >> (abs(_wgslsmith_mod_u32(u_input.a, 0u)) % 32u));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * 191f), 898f), 1370f, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 - -356f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1050f, 919f, -107f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -2163f, 1461f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 573f, arg_0)))), vec3<f32>(822f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-func_2(Struct_3(Struct_2(-13957i), Struct_2(0i), vec3<u32>(u_input.b, 4059u, 34544u)), vec2<u32>(u_input.a, 16575u)).e.x))), vec3<bool>(true, false & any(vec4<bool>(true, true, true, true)), true)));
    var var_4 = -func_4(vec4<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.x, var_3.x))), var_3.x, arg_0), 1u, func_2(Struct_3(Struct_2(2202i), Struct_2(var_2.a), ~vec3<u32>(u_input.a, 59739u, u_input.a)), reverseBits(vec2<u32>(u_input.b, 27581u) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)))), var_2.a ^ firstTrailingBit(720i));
    return ~22701u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(-vec4<i32>(-24296i, 55392i, 1i, -8911i), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_1 = ~(~vec2<u32>(_wgslsmith_add_u32(u_input.b, u_input.b), func_1(_wgslsmith_f_op_f32(820f - 1000f))));
    var var_2 = Struct_2(var_0.x);
    let var_3 = !(!any(vec2<bool>(true, true)));
    var_2 = func_2(Struct_3(Struct_2(_wgslsmith_clamp_i32(1i, 0i, reverseBits(4884i))), Struct_2(var_2.a), vec3<u32>(var_1.x, ~var_1.x, func_1(_wgslsmith_f_op_f32(f32(-1f) * -1100f)))), ~max(firstTrailingBit(vec2<u32>(u_input.a, 0u)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(10272u, var_1.x), vec2<u32>(4294967295u, u_input.b)) % vec2<u32>(32u)), max(firstTrailingBit(vec2<u32>(u_input.b, var_1.x)), abs(vec2<u32>(u_input.b, var_1.x))))).d;
    var_2 = func_2(Struct_3(func_2(Struct_3(Struct_2(var_0.x), func_2(Struct_3(Struct_2(var_0.x), Struct_2(-27830i), vec3<u32>(var_1.x, 4294967295u, var_1.x)), vec2<u32>(0u, u_input.b)).c, _wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, 101021u, u_input.b), vec3<u32>(0u, u_input.a, u_input.b))), _wgslsmith_sub_vec2_u32(vec2<u32>(65647u, u_input.b), vec2<u32>(1u, u_input.a)) << (vec2<u32>(u_input.a, var_1.x) % vec2<u32>(32u))).c, func_2(Struct_3(Struct_2(var_2.a), func_2(Struct_3(Struct_2(27626i), Struct_2(1i), vec3<u32>(45856u, u_input.b, u_input.b)), vec2<u32>(22467u, u_input.b)).d, vec3<u32>(var_1.x, var_1.x, 0u)), firstLeadingBit(vec2<u32>(var_1.x, 10180u))).d, vec3<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 31966u, 0u), vec3<u32>(var_1.x, 4294967295u, 40494u)), var_1.x, true), 0u, 1u)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(abs(4294967295u), ~var_1.x), (vec2<u32>(u_input.b, 1u) & vec2<u32>(67654u, 45238u)) & ~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(var_1.x, _wgslsmith_add_u32(u_input.b, 1u) | _wgslsmith_add_u32(var_1.x, var_1.x)))).d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -966f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(746f, -1208f)))))), -1000f), ~var_0.zy);
}

