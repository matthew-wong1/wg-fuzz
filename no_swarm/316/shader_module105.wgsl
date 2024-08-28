struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<i32>,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: vec2<u32>) -> vec3<i32> {
    let var_0 = -61905i;
    var var_1 = var_0;
    var_1 = 1i;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1315f * _wgslsmith_div_f32(1837f, 517f))), !all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(ceil(107f)), true));
    var_1 = -1i;
    return abs(vec3<i32>(u_input.c, select(-34062i, var_0, -1000f < _wgslsmith_f_op_f32(select(266f, 1890f, false))), -abs(~var_0)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(min(~(-arg_0.xxy), _wgslsmith_mod_vec3_i32(vec3<i32>(max(-2147483647i, arg_0.x), ~arg_2.c.x, i32(-1i) * -20647i), arg_0.zyw)), arg_2.b, arg_2.c, min(-_wgslsmith_div_i32(52447i, u_input.b), -2147483647i) << (_wgslsmith_add_u32(~arg_1, abs(u_input.e.x)) % 32u), arg_2.e);
    let var_1 = var_0.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(-1535f, 857f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-706f * 1470f))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.x, var_2.x)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x) + vec4<f32>(var_2.x, -2081f, var_2.x, -562f))))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(trunc(-994f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - var_2.x))));
    return Struct_1(arg_2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2150f), _wgslsmith_f_op_f32(max(648f, var_2.x)))))) != var_2.x, arg_0.xyx ^ vec3<i32>(19393i, _wgslsmith_dot_vec4_i32(-arg_0, arg_0 & arg_0), var_0.c.x), arg_0.x, !vec2<bool>(arg_2.e.x, !(!arg_2.b)));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = func_3(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.d, -1i, arg_1, u_input.d), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.b, u_input.a), vec3<i32>(u_input.b, -1i, 10673i)), u_input.a, ~arg_1, u_input.a)), vec4<i32>(-1i, 2147483647i, u_input.a, ~(-arg_1))), ~_wgslsmith_sub_u32(~countOneBits(48894u), _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(u_input.e.x, 15202u))), Struct_1(vec3<i32>(0i, ~arg_1, -(u_input.a & 9476i)), true, ~(-vec3<i32>(-2147483647i, arg_1, u_input.d)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, arg_1, 1i) << (vec3<u32>(0u, 9351u, u_input.e.x) % vec3<u32>(32u)), func_2(vec2<u32>(1u, 4294967295u))), u_input.b, !(!(!vec2<bool>(arg_0.x, arg_0.x)))));
    let var_1 = var_0.a.x;
    let var_2 = ~countOneBits(vec2<u32>(~u_input.e.x, _wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(u_input.e.yww, u_input.e.xzz))));
    var_0 = func_3(vec4<i32>(-40774i, _wgslsmith_mod_i32(i32(-1i) * -arg_1, -firstLeadingBit(u_input.a)), -19239i, var_0.c.x), 11919u, Struct_1(func_3(vec4<i32>(_wgslsmith_add_i32(1i, arg_1), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, var_0.c.x, u_input.d), vec3<i32>(arg_1, 43324i, 2147483647i)), countOneBits(-29168i)), 1u, func_3(vec4<i32>(arg_1, arg_1, var_0.c.x, arg_1) << (vec4<u32>(4294967295u, 4294967295u, u_input.e.x, var_2.x) % vec4<u32>(32u)), reverseBits(var_2.x), func_3(vec4<i32>(1i, var_0.a.x, arg_1, arg_1), 1u, Struct_1(var_0.a, true, var_0.a, 27907i, vec2<bool>(arg_0.x, var_0.b))))).c, select(var_0.b, true, select(var_0.b, select(var_0.e.x, arg_0.x, var_0.b), arg_0.x)), vec3<i32>(-2147483647i, _wgslsmith_div_i32(var_0.d, arg_1) << (max(u_input.e.x, 1u) % 32u), -(~2147483647i)), ~(~(-1066i)), !(!vec2<bool>(arg_0.x, false))));
    var var_3 = func_3(firstTrailingBit(-vec4<i32>(abs(u_input.d), _wgslsmith_clamp_i32(-2147483647i, 2147483647i, var_0.d), -var_0.c.x, 2147483647i)), ~min(13231u, 2485u), Struct_1(vec3<i32>(_wgslsmith_clamp_i32(arg_1 | 1i, ~arg_1, _wgslsmith_add_i32(var_0.d, var_0.c.x)), 1i, ~reverseBits(-18790i)), all(vec3<bool>(select(false, arg_0.x, var_0.e.x), any(vec4<bool>(false, arg_0.x, true, arg_0.x)), arg_0.x)), -var_0.c, var_0.c.x, select(func_3(vec4<i32>(-2147483647i, var_0.d, var_0.a.x, var_0.a.x) | vec4<i32>(2147483647i, u_input.d, 15435i, 17739i), 72827u, func_3(vec4<i32>(var_0.c.x, var_0.c.x, arg_1, u_input.a), u_input.e.x, Struct_1(vec3<i32>(-1i, -41176i, 0i), var_0.e.x, vec3<i32>(-15504i, 14976i, 20388i), 2147483647i, vec2<bool>(var_0.b, var_0.e.x)))).e, !func_3(vec4<i32>(var_0.c.x, arg_1, u_input.a, -4348i), var_2.x, Struct_1(var_0.a, true, vec3<i32>(arg_1, 0i, 6936i), 14190i, var_0.e)).e, true)));
    return Struct_1(max(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(17930i, 2147483647i), var_0.c.xz | vec2<i32>(arg_1, 59183i)), var_3.d, -u_input.c), var_0.a), true, vec3<i32>(var_0.c.x, func_3(vec4<i32>(arg_1, -32847i, 2147483647i, var_0.a.x), u_input.e.x, Struct_1(vec3<i32>(arg_1, arg_1, arg_1), var_0.e.x, vec3<i32>(arg_1, arg_1, 0i), arg_1, var_0.e)).a.x << (_wgslsmith_dot_vec3_u32(u_input.e.zxw, u_input.e.xxw) % 32u), -32005i) ^ ~(-countOneBits(vec3<i32>(arg_1, var_3.c.x, 39649i))), 1i, !(!var_3.e));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 66853u;
    let var_1 = Struct_1(firstLeadingBit(select(reverseBits(vec3<i32>(u_input.c, 2147483647i, arg_0.d)), -abs(vec3<i32>(-21869i, arg_0.d, arg_0.d)), select(select(vec3<bool>(true, false, arg_0.e.x), vec3<bool>(arg_0.e.x, arg_0.b, arg_0.e.x), arg_0.b), vec3<bool>(arg_0.b, false, arg_0.e.x), 1u <= var_0))), !func_1(select(!vec3<bool>(arg_0.b, false, true), vec3<bool>(arg_0.b, true, arg_0.b), vec3<bool>(false, false, true)), -34563i).e.x, vec3<i32>(-793i >> ((var_0 << (62468u % 32u)) % 32u), abs(~(-2147483647i)), -_wgslsmith_mod_i32(-1i, u_input.d)), ~arg_0.c.x, arg_0.e);
    let var_2 = !select(select(select(vec3<bool>(var_1.b, true, true), !vec3<bool>(true, var_1.b, arg_0.e.x), select(vec3<bool>(false, var_1.b, false), vec3<bool>(false, arg_0.b, var_1.e.x), var_1.e.x)), vec3<bool>(arg_0.b, arg_0.e.x & true, u_input.e.x > u_input.e.x), !vec3<bool>(true, false, arg_0.b)), vec3<bool>(all(func_3(vec4<i32>(-2147483647i, u_input.b, u_input.c, u_input.a), 7065u, arg_0).e), true, true), !select(!vec3<bool>(var_1.e.x, true, var_1.e.x), select(vec3<bool>(arg_0.b, true, var_1.b), vec3<bool>(false, var_1.b, var_1.b), false), true));
    let var_3 = ~(abs(1u ^ (var_0 & var_0)) >> (31286u % 32u));
    var var_4 = Struct_1(-(_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.b, 6110i), _wgslsmith_sub_vec3_i32(var_1.c, arg_0.a)) & vec3<i32>(select(1i, 1i, true), -19630i, i32(-1i) * -20577i)), false, -var_1.a ^ _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(arg_0.c, vec3<i32>(var_1.a.x, -56151i, -2147483647i)), 0i, i32(-1i) * -2147483647i), max(vec3<i32>(-2147483647i, -19025i, -54755i) | arg_0.a, func_2(vec2<u32>(50584u, u_input.e.x)))), _wgslsmith_add_i32(-2147483647i, reverseBits(select(arg_0.d, var_1.c.x, var_2.x))), vec2<bool>(!(!(var_1.d == 62715i)), false));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), u_input.b));
    let var_1 = var_0;
    let var_2 = ~52035u;
    var var_3 = u_input.e;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(251f, -339f)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, -63694i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1045f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(960f, 827f)))), func_3(-vec4<i32>(-2582i, 36679i, 1i, -13890i), _wgslsmith_add_u32(1u, var_3.x), func_3(vec4<i32>(u_input.d, -2147483647i, -1i, u_input.a), 0u, var_1)).e.x)) + 2227f), var_1.c.x);
}

