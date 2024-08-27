struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.wyx), _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_mult_vec2_i32(u_input.e.xy, u_input.e.xy), vec4<bool>(true, true, true, true), vec4<i32>(_wgslsmith_div_i32(-2147483647i, -u_input.e.x), u_input.e.x, u_input.e.x, abs(1i)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(arg_0.xzw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1320f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, -481f))))), vec2<i32>(var_0.c.x, var_0.e.x << (33921u % 32u)) << (~vec2<u32>(~u_input.b, u_input.a.x) % vec2<u32>(32u)), !vec4<bool>(!any(vec3<bool>(true, var_0.d.x, var_0.d.x)), var_0.d.x, !var_0.d.x, all(!var_0.d.zwz)), var_0.e);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.wwx + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.a, var_0.a))) * _wgslsmith_f_op_vec3_f32(floor(var_0.a)))), _wgslsmith_f_op_f32(-arg_0.x), -vec2<i32>(firstLeadingBit(~(-34100i)), u_input.e.x), vec4<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2243f, arg_0.x))) > _wgslsmith_f_op_f32(abs(-257f)), true, true, false), var_0.e);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(arg_0.xwz)), arg_0.x, abs(vec2<i32>(~0i, -39498i)), var_0.d, var_0.e);
    let var_1 = Struct_1(arg_0.wxw, 563f, _wgslsmith_clamp_vec2_i32(~_wgslsmith_div_vec2_i32(var_0.c << (vec2<u32>(1u, 0u) % vec2<u32>(32u)), -var_0.c), firstTrailingBit(~u_input.e.yy) >> (vec2<u32>(u_input.c.x, 22796u & u_input.a.x) % vec2<u32>(32u)), var_0.c), !vec4<bool>(all(var_0.d), true, false, var_0.d.x), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.d, u_input.d, var_0.e.x), var_0.e), 40645i), _wgslsmith_clamp_i32(_wgslsmith_div_i32(~1i, firstLeadingBit(var_0.e.x)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_0.c.x, 10671i), var_0.c.x ^ -51984i, var_0.e.x), 2147483647i), -35930i, u_input.d));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - -543f)))), var_0.a.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.c.a + arg_2.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(vec4<f32>(-176f, _wgslsmith_f_op_f32(-arg_3.c.a.x), _wgslsmith_f_op_f32(-arg_2.a.x), -995f))), arg_3.c.a.x, all(vec2<bool>(arg_2.d.x, all(vec3<bool>(true, true, arg_2.d.x)))))), arg_2.c, vec4<bool>(true, true, all(select(vec3<bool>(false, arg_1, arg_1), select(vec3<bool>(arg_3.b.d.x, true, arg_1), arg_3.b.d.zxx, arg_3.c.d.x), !arg_2.d.xyw)), true), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(-27312i, arg_2.e.x, select(arg_2.c.x, arg_3.c.c.x, arg_3.c.d.x), min(-802i, -33544i))), -vec4<i32>(arg_2.e.x, reverseBits(2147483647i), -29860i, ~u_input.e.x), arg_3.c.e));
    let var_1 = Struct_2(-42563i, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -847f), 490f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1016f - arg_3.c.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.a.x - arg_0.x)))), _wgslsmith_add_vec2_i32(~(-vec2<i32>(-5059i, u_input.d)), arg_3.c.e.xw), vec4<bool>(arg_1, _wgslsmith_f_op_f32(func_3(vec4<f32>(-754f, arg_0.x, 933f, arg_0.x))) >= _wgslsmith_div_f32(arg_3.c.b, 438f), arg_3.d.x < 11880u, true), -arg_2.e >> (vec4<u32>(12927u, reverseBits(66021u), arg_3.d.x, u_input.b << (arg_3.d.x % 32u)) % vec4<u32>(32u))), Struct_1(arg_3.b.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(571f - _wgslsmith_f_op_f32(min(-147f, -264f))))), vec2<i32>(~select(arg_2.e.x, arg_2.e.x, false), 21584i), var_0.d, abs(vec4<i32>(u_input.d, arg_2.e.x, u_input.d, 7945i)) | var_0.e), ~vec4<u32>(_wgslsmith_sub_u32(4294967295u, 14452u), 35620u, ~29477u, 5834u) & (_wgslsmith_add_vec4_u32(firstLeadingBit(arg_3.d), reverseBits(vec4<u32>(1u, arg_3.d.x, arg_3.d.x, 15790u))) & ~(vec4<u32>(arg_3.d.x, arg_3.d.x, arg_3.d.x, 0u) & arg_3.d)));
    var var_2 = false;
    let var_3 = arg_2.a;
    var var_4 = Struct_2(min(~u_input.e.x, -2147483647i) | -firstLeadingBit(~(-45902i)), arg_3.b, var_1.c, vec4<u32>(firstLeadingBit(var_1.d.x), arg_3.d.x, firstTrailingBit(_wgslsmith_add_u32(u_input.a.x, min(54021u, var_1.d.x))), ~arg_3.d.x));
    return -(-(17722i >> (var_4.d.x % 32u)) << (_wgslsmith_clamp_u32(96087u, ~(~var_4.d.x), 70590u) % 32u));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_2.c;
    let var_1 = arg_2;
    let var_2 = Struct_2(arg_2.c.c.x, var_1.b, arg_2.b, ~(vec4<u32>(4294967295u, 0u, ~var_1.d.x, 1514u) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 2641u, 54970u, 1u), vec4<u32>(35696u, var_1.d.x, arg_2.d.x, 4294967295u))));
    var var_3 = _wgslsmith_mod_vec2_u32(var_2.d.zw, vec2<u32>(var_2.d.x << (arg_2.d.x % 32u), 1u));
    var var_4 = 627f;
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(var_2.b.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.a.x, 714f, var_1.b.b) + arg_2.c.a)), var_2.b.a))), -238f, -_wgslsmith_mult_vec2_i32(vec2<i32>(-arg_2.c.e.x, firstTrailingBit(arg_0)), ~_wgslsmith_mod_vec2_i32(var_2.b.e.zx, vec2<i32>(var_0.e.x, u_input.e.x))), var_0.d, vec4<i32>(1i, ~(-21368i), arg_2.c.c.x, -30181i));
}

fn func_1() -> bool {
    let var_0 = vec2<u32>(_wgslsmith_add_u32(u_input.c.x, 0u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 0u), ~16488u), ~(u_input.a | vec2<u32>(1u, u_input.a.x))) % 32u), u_input.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-174f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-455f + _wgslsmith_f_op_f32(f32(-1f) * -268f))))));
    let var_2 = func_4(_wgslsmith_sub_i32(u_input.e.x, -(~func_2(vec2<f32>(1874f, 1077f), false, Struct_1(vec3<f32>(-137f, -134f, 528f), 648f, vec2<i32>(u_input.d, 325i), vec4<bool>(true, false, true, false), vec4<i32>(1i, u_input.d, u_input.d, u_input.e.x)), Struct_2(u_input.e.x, Struct_1(vec3<f32>(630f, 1921f, 1000f), -795f, vec2<i32>(4702i, -1i), vec4<bool>(true, false, true, false), vec4<i32>(u_input.e.x, u_input.e.x, 1i, 1i)), Struct_1(vec3<f32>(1000f, 155f, 123f), 514f, vec2<i32>(u_input.e.x, 0i), vec4<bool>(true, false, true, true), vec4<i32>(21471i, u_input.d, -2147483647i, u_input.d)), vec4<u32>(u_input.c.x, var_0.x, u_input.c.x, 26575u))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1201f) + _wgslsmith_f_op_f32(max(1353f, -1685f)))), 258f), Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.e.x), firstLeadingBit(u_input.d), abs(1i), 28041i), ~(vec4<i32>(u_input.e.x, u_input.d, u_input.d, 2147483647i) | vec4<i32>(u_input.d, 1i, -2147483647i, -2147483647i))), Struct_1(vec3<f32>(-1306f, 1000f, _wgslsmith_f_op_f32(select(-1830f, 913f, false))), -619f, firstLeadingBit(u_input.e.zz), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), -select(vec4<i32>(72225i, -10449i, -39993i, u_input.d), vec4<i32>(-46978i, u_input.d, u_input.d, u_input.e.x), true)), Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1637f), _wgslsmith_div_f32(576f, -1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(413f)))), u_input.e.xz, vec4<bool>(true, true, true, true), _wgslsmith_add_vec4_i32(~vec4<i32>(-27777i, u_input.d, -9144i, u_input.e.x), ~vec4<i32>(u_input.e.x, -2147483647i, 2147483647i, u_input.d))), vec4<u32>(0u, var_0.x, 74365u, _wgslsmith_sub_u32(var_0.x, 47453u)) | reverseBits(~vec4<u32>(var_0.x, 34765u, 0u, 4294967295u))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.b))), _wgslsmith_f_op_f32(-var_2.b), true)) * var_2.a.x));
    var var_3 = vec2<i32>(countOneBits(_wgslsmith_sub_i32(u_input.e.x, ~var_2.c.x)), var_2.c.x);
    return !all(var_2.d.yx) | true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1();
    var var_1 = Struct_2(-_wgslsmith_add_i32(u_input.e.x, 1i), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1089f, 2077f, -1337f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1853f, 1273f, -396f)))) + vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(max(-278f, -1925f)), _wgslsmith_f_op_f32(1757f * -1902f))), 131f, u_input.e.xz, !select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), func_4(35464i, -1321f, Struct_2(13682i, Struct_1(vec3<f32>(-464f, -226f, 567f), 272f, vec2<i32>(u_input.e.x, 26933i), vec4<bool>(false, true, true, false), vec4<i32>(u_input.e.x, u_input.e.x, -7867i, u_input.d)), Struct_1(vec3<f32>(-199f, 1313f, -412f), 2067f, vec2<i32>(1i, u_input.e.x), vec4<bool>(true, false, true, true), vec4<i32>(u_input.e.x, 2147483647i, 18769i, 10440i)), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.b))).d, vec4<bool>(false, true, true, true)), vec4<i32>(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1565f, 634f) - vec2<f32>(1119f, -924f)), true, func_4(-1i, 610f, Struct_2(u_input.d, Struct_1(vec3<f32>(-841f, 1124f, 1000f), 1763f, u_input.e.yz, vec4<bool>(false, true, false, true), vec4<i32>(u_input.e.x, u_input.d, -41i, -1i)), Struct_1(vec3<f32>(-571f, -1446f, 1072f), 804f, vec2<i32>(0i, -12743i), vec4<bool>(false, true, false, true), vec4<i32>(u_input.e.x, u_input.e.x, u_input.d, -1i)), vec4<u32>(4294967295u, u_input.c.x, 1u, u_input.b))), Struct_2(u_input.d, Struct_1(vec3<f32>(635f, -608f, -1288f), 1094f, vec2<i32>(-1i, -2147483647i), vec4<bool>(true, false, true, true), vec4<i32>(-38416i, u_input.d, u_input.e.x, 2147483647i)), Struct_1(vec3<f32>(-871f, -1204f, -412f), -165f, u_input.e.zx, vec4<bool>(true, true, true, true), vec4<i32>(24963i, 1242i, u_input.d, -16305i)), vec4<u32>(36077u, 1u, 38349u, 4294967295u))), -_wgslsmith_add_i32(-2147483647i, 1i), u_input.d | func_4(22342i, -223f, Struct_2(u_input.e.x, Struct_1(vec3<f32>(-898f, -339f, -320f), -342f, u_input.e.xy, vec4<bool>(true, true, true, true), vec4<i32>(u_input.d, -1i, -2147483647i, -13505i)), Struct_1(vec3<f32>(1163f, -742f, -428f), -180f, u_input.e.xy, vec4<bool>(false, true, true, true), vec4<i32>(u_input.d, -17682i, -36423i, u_input.e.x)), vec4<u32>(1u, u_input.b, u_input.a.x, 19818u))).c.x, _wgslsmith_add_i32(-u_input.d, _wgslsmith_mod_i32(-1i, u_input.e.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-698f, -305f, -913f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(607f, -1152f, -1569f) * vec3<f32>(110f, -269f, -1000f)))))), func_4(_wgslsmith_mult_i32(~(-1i), 1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(157f, 1062f)), -889f)), Struct_2(~u_input.d, Struct_1(vec3<f32>(2919f, 1519f, -702f), 1750f, vec2<i32>(u_input.d, 13787i), vec4<bool>(true, false, false, false), vec4<i32>(u_input.e.x, -6062i, u_input.d, 2147483647i)), Struct_1(vec3<f32>(565f, 105f, -973f), -961f, u_input.e.yy, vec4<bool>(true, false, true, false), vec4<i32>(u_input.d, 9935i, 9547i, u_input.d)), ~vec4<u32>(6244u, u_input.b, 0u, 1u))).b, _wgslsmith_add_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(-34701i, 42517i), u_input.e.yy), _wgslsmith_add_vec2_i32(-u_input.e.zx, ~u_input.e.yy)), func_4(~_wgslsmith_dot_vec3_i32(u_input.e, u_input.e), _wgslsmith_f_op_f32(f32(-1f) * -668f), Struct_2(firstTrailingBit(u_input.e.x), func_4(u_input.d, 1809f, Struct_2(u_input.d, Struct_1(vec3<f32>(221f, 1483f, -1120f), -427f, u_input.e.yz, vec4<bool>(true, false, true, true), vec4<i32>(2147483647i, 2147483647i, u_input.d, 2147483647i)), Struct_1(vec3<f32>(644f, -490f, 622f), 593f, u_input.e.zy, vec4<bool>(false, true, true, false), vec4<i32>(21588i, u_input.e.x, u_input.e.x, u_input.e.x)), vec4<u32>(0u, u_input.a.x, u_input.a.x, 29182u))), Struct_1(vec3<f32>(-194f, -189f, 141f), -120f, u_input.e.yz, vec4<bool>(true, true, true, false), vec4<i32>(24568i, -2147483647i, 1i, u_input.e.x)), vec4<u32>(u_input.c.x, 35580u, u_input.c.x, 2374u) & vec4<u32>(2468u, u_input.c.x, 47770u, u_input.c.x))).d, ~abs(vec4<i32>(u_input.d, u_input.e.x, -16173i, -20006i))), vec4<u32>(42514u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(47262u, 22556u, u_input.b), vec3<u32>(u_input.b, u_input.c.x, u_input.c.x) | vec3<u32>(u_input.a.x, u_input.c.x, u_input.a.x)), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.a.x), vec3<u32>(0u, u_input.a.x, 68790u)))), _wgslsmith_add_u32(~(~u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c.x, 18713u), ~u_input.a.x)), 1u));
    var var_2 = Struct_2(abs(var_1.c.c.x ^ u_input.e.x), Struct_1(vec3<f32>(-769f, var_1.b.b, var_1.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1371f, 970f)))), vec2<i32>(-1i) * -select(vec2<i32>(29159i, var_1.a), u_input.e.zx, var_1.b.d.x), !vec4<bool>(true, true, select(var_1.c.d.x, false, var_1.b.d.x), true), var_1.c.e), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-168f, 1145f, -1500f), vec3<f32>(var_1.c.b, var_1.b.b, -600f))) - var_1.c.a)), var_1.c.b, _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(~u_input.e.zy, vec2<i32>(u_input.d, var_1.a) << (var_1.d.zw % vec2<u32>(32u))), vec2<i32>(var_1.a >> (73880u % 32u), i32(-1i) * -13860i), u_input.e.zx), vec4<bool>(!var_1.b.d.x, true, var_1.b.d.x, all(!vec2<bool>(var_1.c.d.x, false))), _wgslsmith_add_vec4_i32(-var_1.c.e, vec4<i32>(~(-13555i), 0i | u_input.e.x, u_input.e.x, 3999i))), var_1.d ^ var_1.d);
    var var_3 = 22120i;
    let var_4 = Struct_2(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(u_input.e.zz, vec2<i32>(var_1.a, 9982i ^ var_1.b.c.x))), func_4(_wgslsmith_add_i32(-2360i, u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(243f - -235f))), Struct_2(reverseBits(-var_2.b.c.x), func_4(u_input.e.x << (0u % 32u), var_1.c.a.x, Struct_2(0i, Struct_1(var_2.c.a, var_1.c.a.x, var_1.c.c, vec4<bool>(true, false, true, false), vec4<i32>(var_2.a, -19848i, u_input.d, var_2.b.c.x)), var_2.c, var_2.d)), var_2.b, min(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.d.x, 4294967295u, 0u, 44672u), vec4<u32>(var_2.d.x, 0u, 1u, 22828u)), var_2.d))), var_2.b, reverseBits(vec4<u32>(var_1.d.x, var_1.d.x, _wgslsmith_mult_u32(56205u, var_1.d.x) & _wgslsmith_add_u32(u_input.b, 67u), var_1.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2.d.x, var_4.d.x, 1u), ~max(0u, abs(0u)));
}

