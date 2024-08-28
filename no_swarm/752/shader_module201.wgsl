struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -657f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(455f, -809f)))))));
    let var_1 = Struct_3(select(vec4<bool>(!any(vec4<bool>(false, true, false, false)), true, true, true), vec4<bool>(_wgslsmith_f_op_f32(trunc(-1000f)) <= _wgslsmith_f_op_f32(round(1000f)), false, !all(vec2<bool>(true, true)), false), vec4<bool>(true, !select(false, false, true), any(vec4<bool>(true, true, true, true)), true)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-147f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-564f - -618f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-167f * 669f) + _wgslsmith_f_op_f32(abs(-922f)))))), firstLeadingBit(~(~select(1u, 84727u, true))));
    let var_2 = Struct_1((_wgslsmith_div_u32(var_1.c | 19845u, _wgslsmith_sub_u32(4294967295u, var_1.c)) ^ ~_wgslsmith_sub_u32(0u, 0u)) | var_1.c, _wgslsmith_sub_vec4_i32(countOneBits(~vec4<i32>(u_input.a.x, -43086i, -48166i, -1i)), ~abs(vec4<i32>(47969i, u_input.a.x, u_input.a.x, -25807i))) ^ (abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)) ^ -vec4<i32>(u_input.a.x, 32123i, 4331i, 1i)), vec4<i32>(~_wgslsmith_clamp_i32(u_input.a.x, -13051i & u_input.a.x, firstTrailingBit(u_input.a.x)), 0i, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(1514i, -19028i, 8690i, -32781i)), ~(vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x) << (vec4<u32>(0u, 4294967295u, var_1.c, var_1.c) % vec4<u32>(32u)))), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, u_input.a.x), u_input.a) & ~(-29864i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1841f, var_1.b.x)))));
    var_0 = _wgslsmith_f_op_f32(ceil(var_1.b.x));
    let var_3 = 20195u;
    return reverseBits(firstLeadingBit(select(~(vec4<u32>(var_1.c, var_2.a, 0u, var_2.a) >> (vec4<u32>(26184u, 1u, var_3, var_1.c) % vec4<u32>(32u))), max(select(vec4<u32>(1u, 139u, 0u, 0u), vec4<u32>(var_2.a, var_2.a, var_1.c, var_3), true), vec4<u32>(var_1.c, var_1.c, var_1.c, 1u) ^ vec4<u32>(0u, var_3, 1u, 0u)), select(!var_1.a, var_1.a, !var_1.a.x))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<f32>, arg_3: i32) -> Struct_3 {
    let var_0 = func_3();
    let var_1 = Struct_3(vec4<bool>(true, false, arg_1, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(min(116f, 1000f)), -678f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(239f, 215f, -1530f), vec3<f32>(arg_2.x, arg_2.x, 535f)) - vec3<f32>(arg_2.x, arg_2.x, arg_2.x)))), max(var_0.x, var_0.x));
    var var_2 = Struct_5(firstTrailingBit(7492i), var_1);
    var_2 = Struct_5(max(_wgslsmith_clamp_i32(arg_0.x, _wgslsmith_add_i32(arg_0.x, 41696i), abs(select(-85071i, 2147483647i, false))), firstLeadingBit(-2147483647i)), var_2.b);
    var var_3 = Struct_2(var_0.x << (73845u % 32u), 2147483647i, Struct_1(firstLeadingBit(~(38211u << (var_1.c % 32u))), -(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, var_2.a, -71008i, 2147483647i), vec4<i32>(u_input.a.x, 7347i, -9229i, -1i)) ^ -vec4<i32>(0i, -2147483647i, arg_0.x, 1i)), vec4<i32>(_wgslsmith_add_i32(-1i, arg_3), -18776i, _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.a), ~u_input.a), var_2.a), _wgslsmith_f_op_f32(-var_1.b.x)), var_1.a.yz, reverseBits(_wgslsmith_mult_i32(~(1i << (var_0.x % 32u)), arg_0.x)));
    return Struct_3(var_1.a, var_2.b.b, ~0u & func_3().x);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: Struct_5) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.b.b.x * 622f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(472f * -896f) - arg_3.b.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -107f), 272f)), arg_3.b.b.x));
    let var_1 = -1i;
    var var_2 = ~select(abs(-u_input.a.x), -(~arg_3.a), !select(true, true, arg_3.b.a.x)) != 39297i;
    var var_3 = vec4<f32>(839f, arg_2, _wgslsmith_div_f32(func_2(vec2<i32>(min(arg_3.a, arg_3.a), -arg_3.a), select(true, true, arg_3.b.a.x) | false, _wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(2147483647i, arg_3.a), arg_3.b.a.x, vec2<f32>(-607f, arg_2), -59304i).b.xx - arg_3.b.b.xx), -min(-21283i, 2147483647i)).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x) + 1009f));
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-745f))), var_0.x, -880f, 1f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1608f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, -189f)) - -989f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.b.x)), arg_3.b.b.x)));
    return Struct_1(4294967295u, (max(vec4<i32>(arg_3.a, u_input.a.x, -19402i, arg_3.a) << (vec4<u32>(arg_0, arg_0, arg_3.b.c, 8804u) % vec4<u32>(32u)), vec4<i32>(44251i, arg_3.a, u_input.a.x, u_input.a.x)) | (vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.a.x, arg_3.a, arg_3.a))) >> (~(~(~vec4<u32>(arg_3.b.c, arg_3.b.c, 0u, 53257u))) % vec4<u32>(32u)), ~vec4<i32>(u_input.a.x, ~arg_3.a, arg_3.a, var_1), 1000f);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_5(_wgslsmith_add_i32(-1i, func_4(~func_3().x, _wgslsmith_f_op_f32(-343f * _wgslsmith_f_op_f32(1486f * arg_0.d)), -857f, Struct_5(-2675i, func_2(arg_0.c.xz, true, vec2<f32>(arg_0.d, 274f), arg_0.c.x))).b.x), Struct_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.d, 152f, -1158f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.d, 1621f, -680f))))))), ~_wgslsmith_div_u32(arg_1.x, 1u)));
    let var_1 = ~abs(64675u);
    var_0 = Struct_5(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0.b.x, arg_0.c.x), u_input.a.x) ^ ~0i, func_2(u_input.a, _wgslsmith_add_u32(36673u, var_1) != (firstTrailingBit(34280u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.c, var_1, 4294967295u, 114731u), arg_1) % 32u)), var_0.b.b.zx, max(func_4(~27031u, -1000f, -961f, Struct_5(-2147483647i, Struct_3(var_0.b.a, var_0.b.b, arg_0.a))).b.x, 1i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(747f, arg_0.d, arg_0.d)), _wgslsmith_f_op_vec3_f32(select(var_0.b.b, var_0.b.b, true)))))));
    let var_3 = Struct_4(func_4(~(firstTrailingBit(4294967295u) & ~1u), 776f, var_0.b.b.x, Struct_5(arg_0.c.x, var_0.b)), (firstTrailingBit(u_input.a.x) ^ select(1i, ~2147483647i, -1i >= arg_0.c.x)) < 0i, firstTrailingBit(vec4<i32>(-min(var_0.a, var_0.a), ~3593i << (var_0.b.c % 32u), _wgslsmith_sub_i32(arg_0.c.x, _wgslsmith_mod_i32(-1i, -1446i)), 46673i)), -630f);
    return Struct_1(60906u, ~arg_0.b | arg_0.b, reverseBits(-(vec4<i32>(-1i, -13393i, var_0.a, 21341i) << (vec4<u32>(32526u, 21662u, 52857u, var_1) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_0.b.c, _wgslsmith_f_op_f32(abs(arg_0.d)), 120f, Struct_5(arg_0.b.x, Struct_3(vec4<bool>(true, var_3.b, var_3.b, var_0.b.a.x), vec3<f32>(-591f, 1173f, var_2.x), 1u))).d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(228f - 1000f))) + _wgslsmith_f_op_f32(2550f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.b.x))))));
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_1 {
    var var_0 = func_5(func_4(2725u, _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(-1000f)))), Struct_5(_wgslsmith_sub_i32(u_input.a.x, -1i) << (arg_1 % 32u), func_2(~u_input.a, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(616f, 1043f)), ~u_input.a.x))), ~_wgslsmith_div_vec4_u32(firstTrailingBit(~vec4<u32>(2314u, 22738u, arg_1, arg_1)), vec4<u32>(arg_1, countOneBits(arg_1), arg_1 ^ arg_1, ~62453u)), ~(~(arg_1 & ~4294967295u)));
    let var_1 = -1000f;
    let var_2 = select(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(14586u, 1u), vec2<u32>(var_0.a, var_0.a)), max(vec2<u32>(4294967295u, arg_1), vec2<u32>(34089u, var_0.a)), vec2<bool>(false, true)), select(vec2<u32>(arg_1, 4294967295u), countOneBits(vec2<u32>(var_0.a, var_0.a)), 1377f == var_0.d)), vec2<u32>(1u, ~_wgslsmith_sub_u32(arg_1, 4294967295u))), ~_wgslsmith_mult_vec2_u32(~(~vec2<u32>(0u, 0u)), vec2<u32>(abs(20777u), var_0.a | 67728u)), select(!func_2(vec2<i32>(var_0.b.x, 2147483647i), -2040f < var_0.d, vec2<f32>(var_1, -346f), countOneBits(1i)).a.zw, vec2<bool>(true, true), select(vec2<bool>(true, any(vec2<bool>(true, false))), select(func_2(var_0.c.zy, false, vec2<f32>(arg_0, var_1), u_input.a.x).a.wx, vec2<bool>(true, false), vec2<bool>(false, false)), !(var_0.a <= 2889u))));
    var var_3 = -673f;
    let var_4 = var_0.a;
    return func_5(Struct_1(firstTrailingBit(min(~79400u, ~1u)), vec4<i32>(_wgslsmith_add_i32(select(-18173i, 1i, false), 0i), -11584i, _wgslsmith_dot_vec2_i32(u_input.a, var_0.b.xx), abs(-u_input.a.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-var_0.b, -var_0.b), -(var_0.c << (vec4<u32>(18456u, arg_1, arg_1, 4294967295u) % vec4<u32>(32u)))), func_2(u_input.a, true, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-571f, 481f), vec2<f32>(var_0.d, var_1))))), _wgslsmith_div_i32(firstTrailingBit(0i), _wgslsmith_div_i32(var_0.c.x, -72424i))).b.x), vec4<u32>(_wgslsmith_sub_u32(~var_0.a, var_2.x) & 8447u, 0u, var_0.a, func_2(abs(-var_0.c.yw), all(vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(103f, 814f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-331f, -1562f) + vec2<f32>(arg_0, var_0.d))), -64440i).c), _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(arg_1), ~var_2.x), ~(vec2<u32>(11008u, 2467u) >> (var_2 % vec2<u32>(32u)))) & countOneBits(func_2(var_0.b.xz, var_0.c.x >= 27395i, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(649f, arg_0))), u_input.a.x).c));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32) -> Struct_4 {
    let var_0 = !arg_1.a;
    var var_1 = Struct_4(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d + -561f) * _wgslsmith_f_op_f32(arg_0.d + arg_0.d)) - arg_1.b.x), 85198u), true, min(arg_0.c, vec4<i32>(-19896i, 5969i, 31284i, min(10940i ^ arg_2, firstLeadingBit(76565i)))), _wgslsmith_f_op_f32(173f - arg_0.d));
    var_1 = Struct_4(func_4(~(~arg_0.a), func_1(_wgslsmith_f_op_f32(sign(-2729f)), 0u).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d)), Struct_5(~(-arg_2), arg_1)), any(vec4<bool>(select(var_0.x, var_0.x, true), false, any(select(vec2<bool>(true, var_0.x), vec2<bool>(arg_1.a.x, var_0.x), var_1.b)), !(!var_0.x))), vec4<i32>(abs(-1i), func_5(Struct_1(0u, arg_0.b, vec4<i32>(-2147483647i, 0i, arg_0.c.x, -18879i), -1555f), vec4<u32>(arg_1.c, 23432u, 17365u, var_1.a.a) | vec4<u32>(31264u, 1u, var_1.a.a, 12438u), arg_0.a >> (arg_0.a % 32u)).c.x, -964i, var_1.c.x) << (_wgslsmith_clamp_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_1.a.a, arg_1.c, 52216u), vec4<u32>(var_1.a.a, 27568u, 138285u, arg_1.c)), func_3(), true), vec4<u32>(0u, 3663u, min(20959u, 49454u), _wgslsmith_div_u32(arg_1.c, 0u)), firstTrailingBit(~vec4<u32>(4294967295u, 80418u, arg_0.a, 40754u))) % vec4<u32>(32u)), arg_0.d);
    var_1 = Struct_4(Struct_1(func_2(~vec2<i32>(u_input.a.x, 22814i), !(arg_2 > var_1.c.x), _wgslsmith_f_op_vec2_f32(-arg_1.b.zy), countOneBits(func_5(arg_0, vec4<u32>(arg_1.c, 4294967295u, 0u, arg_1.c), arg_1.c).c.x)).c, arg_0.c, firstLeadingBit(arg_0.b << (~vec4<u32>(var_1.a.a, arg_0.a, 1u, 1u) % vec4<u32>(32u))), 1499f), !var_0.x, countOneBits(_wgslsmith_sub_vec4_i32(arg_0.c, firstTrailingBit(max(arg_0.b, var_1.a.c)))), arg_1.b.x);
    var_1 = Struct_4(Struct_1(~(func_1(var_1.a.d, 0u).a >> (33564u % 32u)), firstLeadingBit(vec4<i32>(~0i, _wgslsmith_mod_i32(-2147483647i, var_1.c.x), var_1.c.x, min(var_1.c.x, -2147483647i))), vec4<i32>(firstTrailingBit(-57401i), 1i, arg_2, ~u_input.a.x) ^ vec4<i32>(abs(arg_0.c.x), ~arg_2, ~u_input.a.x, _wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(1i, 0i, -8030i, 0i))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), 1u).d), true, _wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(arg_0.b, vec4<i32>(arg_0.c.x, -1i, var_1.a.c.x, -13493i)), arg_0.c) << (abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, var_1.a.a, arg_0.a, var_1.a.a), vec4<u32>(0u, arg_1.c, 1u, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return Struct_4(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.d) * var_1.a.d), ~(~var_1.a.a) << (_wgslsmith_sub_u32(var_1.a.a, ~1503u) % 32u)), true & !(!any(arg_1.a.xy)), vec4<i32>(var_1.a.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, abs(arg_2), _wgslsmith_mod_i32(arg_2, -35479i), ~(-2147483647i)), select(var_1.a.c >> (vec4<u32>(arg_0.a, 4294967295u, var_1.a.a, 85063u) % vec4<u32>(32u)), abs(var_1.a.b), var_1.b)), 1i, 16057i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2510f - arg_1.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-471f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1036f - 958f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1149f) + _wgslsmith_f_op_f32(1441f * 1852f)))), 70956u), Struct_3(func_2(u_input.a, any(vec2<bool>(false, true)) && false, vec2<f32>(_wgslsmith_f_op_f32(max(-127f, 735f)), _wgslsmith_f_op_f32(-823f + -108f)), -2147483647i).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(338f, -541f, 1338f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(921f, 1023f, -1135f)))))), 1u), u_input.a.x);
    let var_1 = func_6(var_0.a, func_2(countOneBits(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.a.x, var_0.a.b.x), _wgslsmith_div_vec2_i32(u_input.a, u_input.a), ~u_input.a)), all(!select(vec4<bool>(false, false, var_0.b, var_0.b), vec4<bool>(var_0.b, false, false, var_0.b), var_0.b)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_0.a.d)), _wgslsmith_div_f32(1000f, var_0.a.d), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.d * var_0.a.d), 385f))), _wgslsmith_div_i32(func_1(_wgslsmith_f_op_f32(max(var_0.d, var_0.a.d)), ~var_0.a.a).c.x, var_0.a.b.x)), select(_wgslsmith_sub_i32(func_4(var_0.a.a, var_0.a.d, 1836f, Struct_5(-2147483647i, Struct_3(vec4<bool>(true, false, true, var_0.b), vec3<f32>(169f, var_0.a.d, 686f), var_0.a.a))).c.x, var_0.c.x | u_input.a.x) ^ -(var_0.a.b.x << (4294967295u % 32u)), reverseBits(countOneBits(select(0i, u_input.a.x, var_0.b))), true));
    let var_2 = !var_1.b | all(func_2(var_1.a.c.wx, var_1.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.d, -1546f))))), 1i).a);
    var var_3 = !func_2(func_6(Struct_1(max(var_0.a.a, 1u), _wgslsmith_div_vec4_i32(var_1.a.c, var_1.a.c), ~var_0.c, 1625f), Struct_3(vec4<bool>(var_2, true, var_1.b, false), vec3<f32>(var_0.a.d, 1000f, var_1.a.d), var_0.a.a), select(~2147483647i, 4349i, !var_0.b)).c.zy, var_1.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1184f, -385f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, var_1.d) - vec2<f32>(1000f, -718f)), !(!vec2<bool>(var_2, false)))), var_1.c.x).a.xzx;
    var var_4 = var_1.b;
    var var_5 = var_0.d;
    let var_6 = func_3();
    var var_7 = vec4<bool>(var_3.x, false, true & any(vec2<bool>(func_2(vec2<i32>(-2147483647i, var_0.c.x), false, vec2<f32>(1339f, -188f), 29796i).a.x, true)), any(vec3<bool>(var_3.x, false, var_3.x)) == all(var_3.zy));
    let var_8 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(-1228f);
}

