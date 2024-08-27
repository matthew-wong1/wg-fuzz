struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1720f, -1508f, -366f)))), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1046f, -1000f, 2449f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(345f, 226f, -202f), vec3<f32>(-1370f, 924f, 963f), false)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-957f, 557f, _wgslsmith_f_op_f32(-263f + 2269f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-927f, -693f, -275f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(437f, 217f, 172f), vec3<f32>(-547f, 292f, -1663f)))))))), select(select(arg_0.zxx, !select(arg_0.zxx, arg_0.wzy, arg_0.wyw), any(vec3<bool>(true, arg_0.x, true))), vec3<bool>(true, true, arg_0.x), arg_0.x || arg_0.x)));
    let var_1 = any(vec4<bool>(select(false, _wgslsmith_f_op_f32(var_0.x - var_0.x) > _wgslsmith_f_op_f32(-var_0.x), !any(vec2<bool>(false, true))), (var_0.x <= 1319f) & all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x, any(select(vec2<bool>(arg_0.x, false), select(vec2<bool>(arg_0.x, false), arg_0.wz, false), any(vec4<bool>(false, true, true, true))))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 862f, var_0.x) * vec3<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.x))), 1000f));
    var var_2 = select(-19552i, u_input.d.x, true);
    var var_3 = firstTrailingBit(u_input.d);
    return ~arg_2.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec2<i32>) -> vec2<u32> {
    return u_input.a;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> vec3<f32> {
    var var_0 = func_4(u_input.a, Struct_4(~u_input.b | abs(func_3(arg_0.b, vec3<u32>(11629u, 1u, u_input.b), vec2<u32>(0u, arg_0.c.x)))), min(_wgslsmith_sub_vec2_i32(arg_0.d, _wgslsmith_add_vec2_i32(abs(u_input.d.zx), _wgslsmith_sub_vec2_i32(u_input.d.xz, vec2<i32>(arg_0.d.x, 0i)))), ~(~u_input.d.xx) & vec2<i32>(-2147483647i, u_input.d.x)));
    var_0 = u_input.a;
    let var_1 = arg_0.b.zzw;
    let var_2 = Struct_2(Struct_1(arg_0.b.zz, arg_0.b, ~(~select(arg_0.c, arg_0.c, vec3<bool>(var_1.x, arg_0.b.x, false))), arg_0.d), arg_0, ~func_3(vec4<bool>(all(arg_0.b.xwy), all(vec2<bool>(var_1.x, false)), arg_0.b.x, select(true, false, true)), arg_0.c, ~(u_input.a >> (vec2<u32>(arg_0.c.x, 1u) % vec2<u32>(32u)))), select(!arg_0.b, !vec4<bool>(arg_0.a.x, true, arg_0.b.x, var_1.x), select(vec4<bool>(any(arg_0.b.wxy), true, arg_0.a.x, 0i <= u_input.d.x), arg_0.b, !(!vec4<bool>(false, false, true, var_1.x)))), arg_0);
    var var_3 = select(~(~u_input.d), abs(min(-vec3<i32>(var_2.e.d.x, arg_0.d.x, -2147483647i), ~vec3<i32>(-41175i, var_2.e.d.x, -30573i))), true);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2360f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-303f, 1000f))))), arg_1, 187f);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = !all(vec3<bool>(false, true, true));
    var var_2 = Struct_4(u_input.b);
    let var_3 = Struct_2(Struct_1(!vec2<bool>(var_1, var_0.a || arg_0.a), vec4<bool>(var_0.a, var_0.a, !any(vec2<bool>(arg_3.a, true)), any(select(vec4<bool>(var_1, false, false, true), vec4<bool>(true, arg_0.a, var_0.a, arg_0.a), vec4<bool>(false, var_1, var_0.a, false)))), vec3<u32>(~var_2.a, 4294967295u, _wgslsmith_mult_u32(29830u, abs(42256u))), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.d.x) & vec2<i32>(u_input.d.x, -8082i), vec2<i32>(-48637i, u_input.d.x)), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-4154i, -2147483647i), u_input.d.zz, vec2<i32>(-1i, u_input.d.x)), vec2<i32>(u_input.d.x, u_input.d.x)))), Struct_1(select(vec2<bool>(false && var_0.a, all(vec4<bool>(var_0.a, false, arg_3.a, arg_3.a))), select(select(vec2<bool>(var_1, false), vec2<bool>(false, var_0.a), true), select(vec2<bool>(arg_3.a, arg_0.a), vec2<bool>(var_0.a, true), var_1), !var_0.a), false), select(vec4<bool>(arg_3.a, all(vec2<bool>(true, false)), arg_0.a && false, true), select(!vec4<bool>(arg_3.a, var_0.a, arg_3.a, arg_0.a), select(vec4<bool>(true, false, true, true), vec4<bool>(var_1, false, arg_0.a, false), vec4<bool>(true, var_1, false, var_1)), all(vec2<bool>(true, false))), (var_1 != var_0.a) && true), abs(~vec3<u32>(46238u, 1u, 47518u)) ^ vec3<u32>(var_2.a, arg_1.a, 1u), vec2<i32>((u_input.d.x & u_input.d.x) ^ ~u_input.d.x, -(~u_input.d.x))), ~(~u_input.a.x), !(!vec4<bool>(all(vec2<bool>(var_0.a, true)), arg_3.a, 1501f <= var_0.b.x, true)), Struct_1(!vec2<bool>(true, arg_3.a), select(select(vec4<bool>(true, arg_0.a, true, arg_0.a), !vec4<bool>(true, false, arg_3.a, true), true), !(!vec4<bool>(true, var_0.a, true, false)), vec4<bool>(true | var_1, true != arg_0.a, var_0.a, all(vec3<bool>(arg_0.a, false, arg_3.a)))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_2.a, arg_2, arg_2), reverseBits(vec3<u32>(0u, 4294967295u, arg_2) | vec3<u32>(4294967295u, arg_2, arg_1.a)), vec3<u32>(func_4(vec2<u32>(var_2.a, 0u), arg_1, vec2<i32>(u_input.d.x, u_input.d.x)).x, var_2.a, reverseBits(var_2.a))), firstLeadingBit(vec2<i32>(u_input.d.x, u_input.d.x) << (vec2<u32>(11505u, arg_1.a) % vec2<u32>(32u))) << (vec2<u32>(40455u, ~62545u) % vec2<u32>(32u))));
    var var_4 = 4294967295u;
    return Struct_3(true, var_0.b);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(297f, -866f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(_wgslsmith_f_op_f32(-542f * _wgslsmith_f_op_f32(-638f + 578f)), _wgslsmith_f_op_f32(845f - _wgslsmith_f_op_f32(abs(-139f))))));
    let var_1 = func_5(Struct_3(arg_0.d.x, _wgslsmith_f_op_vec3_f32(func_2(Struct_1(!vec2<bool>(arg_2.a.x, false), arg_2.b, countOneBits(vec3<u32>(arg_3.a, arg_3.a, arg_0.a.c.x)), min(u_input.d.xz, vec2<i32>(7121i, -2147483647i))), var_0.x, var_0))), arg_3, ~arg_1, Struct_3(any(select(select(arg_0.d, vec4<bool>(arg_0.a.a.x, true, true, arg_0.a.b.x), vec4<bool>(false, arg_2.b.x, true, false)), arg_0.e.b, vec4<bool>(arg_0.e.b.x, arg_0.d.x, arg_2.a.x, arg_2.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1400f, -539f, 977f) + vec3<f32>(var_0.x, var_0.x, -1823f))))));
    let var_2 = arg_0;
    let var_3 = var_2;
    var var_4 = arg_0.a.c;
    return Struct_2(var_3.a, Struct_1(!arg_0.a.b.zy, !(!select(vec4<bool>(var_3.e.b.x, var_3.e.a.x, false, true), arg_0.a.b, var_3.b.b)), vec3<u32>(_wgslsmith_dot_vec2_u32(var_3.e.c.xy, vec2<u32>(1u, 0u)) & (var_4.x << (var_4.x % 32u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(23213u, u_input.b, arg_1, arg_1)), ~vec4<u32>(0u, 1u, var_3.b.c.x, 4294967295u)), 1u), u_input.d.yz), 68093u, vec4<bool>(false, true, !select(true, all(arg_2.b.wxy), var_3.d.x && var_2.e.b.x), all(var_3.e.b.xw)), arg_0.b);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec4<u32>) -> bool {
    var var_0 = max(func_1(Struct_2(Struct_1(arg_1.a.b.wy, vec4<bool>(arg_0.x, false, false, arg_0.x), arg_2, arg_1.e.d), Struct_1(vec2<bool>(arg_1.a.b.x, arg_1.e.b.x), arg_1.b.b, arg_2, u_input.d.yy), u_input.c, vec4<bool>(arg_1.d.x, arg_0.x, false, false), arg_1.e), u_input.c, arg_1.e, Struct_4(~0u)).a.c & ~arg_3.xxy, vec3<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(71032u, select(arg_3.x, u_input.b, arg_1.d.x), u_input.b), arg_3.yxy), arg_2.x));
    var var_1 = func_5(func_5(Struct_3(!(!arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-259f, -653f, -519f) - vec3<f32>(-1173f, -614f, -1149f)))), Struct_4(select(92623u, abs(1u), arg_0.x)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(~arg_1.c, 1u >> (arg_1.b.c.x % 32u)), abs(~112264u)), Struct_3(arg_1.a.b.x, vec3<f32>(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(arg_0, arg_1.e.b, arg_1.e.c, u_input.d.yz), -547f, vec2<f32>(1000f, -584f))).x, _wgslsmith_div_f32(204f, 295f), -1274f))), Struct_4(1u), 4294967295u, Struct_3(arg_1.a.a.x, vec3<f32>(-363f, _wgslsmith_f_op_f32(f32(-1f) * -707f), -2081f)));
    let var_2 = Struct_4(func_1(arg_1, ~1u, func_1(Struct_2(func_1(Struct_2(Struct_1(vec2<bool>(false, arg_1.a.b.x), vec4<bool>(var_1.a, var_1.a, false, var_1.a), vec3<u32>(arg_1.e.c.x, var_0.x, 0u), vec2<i32>(-1732i, arg_1.a.d.x)), arg_1.b, 0u, vec4<bool>(arg_0.x, false, true, true), Struct_1(vec2<bool>(arg_1.d.x, arg_1.b.b.x), vec4<bool>(true, var_1.a, false, var_1.a), arg_1.b.c, arg_1.a.d)), var_0.x, Struct_1(arg_0, arg_1.a.b, arg_3.zxw, arg_1.b.d), Struct_4(0u)).e, arg_1.e, u_input.c & 30588u, arg_1.a.b, arg_1.a), reverseBits(~16580u), Struct_1(arg_0, func_1(Struct_2(arg_1.b, Struct_1(vec2<bool>(false, true), arg_1.d, vec3<u32>(0u, 0u, 12127u), vec2<i32>(37946i, u_input.d.x)), arg_1.c, arg_1.e.b, Struct_1(vec2<bool>(var_1.a, true), vec4<bool>(arg_0.x, var_1.a, arg_0.x, true), arg_3.wxx, vec2<i32>(arg_1.a.d.x, arg_1.e.d.x))), var_0.x, Struct_1(vec2<bool>(true, false), vec4<bool>(true, false, arg_1.a.a.x, true), vec3<u32>(0u, 60186u, 4294967295u), arg_1.a.d), Struct_4(u_input.b)).a.b, _wgslsmith_add_vec3_u32(vec3<u32>(arg_2.x, arg_3.x, 4294967295u), arg_3.yzy), u_input.d.xy), Struct_4(1u)).b, Struct_4((var_0.x & 24198u) ^ ~arg_1.c)).b.c.x);
    let var_3 = func_1(Struct_2(func_1(Struct_2(func_1(arg_1, arg_3.x, arg_1.a, Struct_4(var_0.x)).b, func_1(Struct_2(arg_1.b, Struct_1(arg_0, vec4<bool>(true, arg_1.e.b.x, arg_1.d.x, arg_0.x), arg_2, arg_1.b.d), 1u, vec4<bool>(arg_1.d.x, var_1.a, true, arg_1.d.x), arg_1.a), var_0.x, Struct_1(arg_1.d.yx, arg_1.e.b, arg_1.a.c, vec2<i32>(arg_1.e.d.x, 5240i)), var_2).a, var_0.x, arg_1.d, arg_1.e), 676u, arg_1.e, var_2).b, Struct_1(vec2<bool>(true, any(vec3<bool>(true, arg_1.a.b.x, arg_0.x))), func_1(func_1(arg_1, var_0.x, Struct_1(vec2<bool>(false, arg_0.x), arg_1.b.b, vec3<u32>(1u, 1u, arg_2.x), arg_1.e.d), Struct_4(11207u)), 1u, Struct_1(arg_1.e.a, arg_1.b.b, arg_1.b.c, vec2<i32>(arg_1.b.d.x, 36778i)), var_2).d, vec3<u32>(arg_1.c, ~60024u, ~17957u), func_1(Struct_2(arg_1.a, arg_1.e, 95393u, vec4<bool>(true, var_1.a, false, false), arg_1.b), abs(79197u), arg_1.b, var_2).a.d), arg_1.c << (~(var_0.x >> (0u % 32u)) % 32u), arg_1.d, Struct_1(!(!vec2<bool>(arg_1.b.b.x, true)), select(select(vec4<bool>(arg_1.d.x, arg_1.d.x, false, false), vec4<bool>(true, arg_1.b.a.x, arg_0.x, arg_1.b.b.x), vec4<bool>(true, true, true, var_1.a)), arg_1.d, true), countOneBits(vec3<u32>(83894u, u_input.b, var_0.x)), vec2<i32>(-arg_1.a.d.x, ~(-14800i)))), func_4(_wgslsmith_mult_vec2_u32(arg_1.b.c.xx, arg_1.b.c.yz), var_2, arg_1.e.d).x, func_1(func_1(Struct_2(Struct_1(vec2<bool>(var_1.a, var_1.a), vec4<bool>(var_1.a, false, arg_0.x, var_1.a), arg_3.yzw, vec2<i32>(-53595i, 2147483647i)), func_1(Struct_2(arg_1.e, arg_1.e, 66985u, vec4<bool>(arg_0.x, true, true, false), arg_1.b), 7721u, Struct_1(arg_1.a.b.zz, arg_1.a.b, arg_2, vec2<i32>(-2147483647i, -15399i)), var_2).a, 0u, select(arg_1.a.b, arg_1.a.b, vec4<bool>(true, true, true, false)), Struct_1(vec2<bool>(false, true), vec4<bool>(var_1.a, var_1.a, true, false), vec3<u32>(1u, 8084u, 1u), vec2<i32>(arg_1.e.d.x, arg_1.e.d.x))), 1u, func_1(Struct_2(Struct_1(vec2<bool>(arg_0.x, var_1.a), arg_1.d, arg_3.xzz, arg_1.a.d), arg_1.b, 4294967295u, vec4<bool>(arg_1.b.b.x, true, var_1.a, true), Struct_1(vec2<bool>(true, true), arg_1.a.b, arg_3.ywy, arg_1.e.d)), ~27478u, arg_1.a, Struct_4(arg_3.x)).b, var_2), 38693u, arg_1.b, Struct_4(min(var_2.a, var_2.a) | (12449u >> (arg_1.c % 32u)))).a, var_2);
    var var_4 = Struct_3(!(!var_3.d.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -289f), 345f) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.b), _wgslsmith_f_op_vec3_f32(abs(var_1.b))))))));
    return true;
}

fn func_7(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: i32) -> vec3<bool> {
    var var_0 = firstLeadingBit(vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(45981i, u_input.d.x, -17065i, u_input.d.x), vec4<i32>(arg_2, u_input.d.x, 2147483647i, u_input.d.x))) >> ((1u << ((u_input.a.x >> (64257u % 32u)) % 32u)) % 32u), -4687i, abs(-67990i), _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(arg_2, arg_2, u_input.d.x)), vec3<i32>(u_input.d.x, -25057i, -1i)))));
    var_0 = min(-(~(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, arg_2, -39714i), vec4<i32>(0i, var_0.x, -1i, var_0.x)))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(0i, -11742i, abs(arg_2)), firstLeadingBit(1i & var_0.x), ~u_input.d.x >> (~4294967295u % 32u), 1i), select((vec4<i32>(arg_2, arg_2, -15949i, 2147483647i) ^ vec4<i32>(arg_2, var_0.x, -38661i, 10232i)) >> (~vec4<u32>(5357u, u_input.c, u_input.a.x, 15696u) % vec4<u32>(32u)), -vec4<i32>(-26336i, 2147483647i, u_input.d.x, 2147483647i) << (~vec4<u32>(u_input.a.x, 16714u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(sign(-1806f)) >= _wgslsmith_f_op_f32(456f - 1437f))));
    let var_1 = -(u_input.d.zx & vec2<i32>(0i, reverseBits(-u_input.d.x)));
    var var_2 = i32(-1i) * -var_1.x;
    var var_3 = func_1(Struct_2(func_1(func_1(Struct_2(Struct_1(arg_1.xw, vec4<bool>(true, false, true, false), vec3<u32>(4294967295u, 17662u, u_input.b), u_input.d.zy), Struct_1(vec2<bool>(arg_0.x, arg_0.x), arg_1, vec3<u32>(48996u, u_input.c, u_input.c), var_0.xz), u_input.c, arg_1, Struct_1(vec2<bool>(true, arg_0.x), vec4<bool>(false, false, true, true), vec3<u32>(u_input.c, 0u, 57380u), vec2<i32>(var_0.x, 1i))), ~u_input.a.x, Struct_1(vec2<bool>(arg_1.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_1.x, arg_0.x), vec3<u32>(u_input.b, 139963u, u_input.c), var_0.xz), Struct_4(1u)), ~u_input.c << (1u % 32u), func_1(Struct_2(Struct_1(arg_1.zw, arg_1, vec3<u32>(u_input.b, u_input.a.x, u_input.a.x), u_input.d.yz), Struct_1(vec2<bool>(arg_1.x, arg_1.x), arg_1, vec3<u32>(u_input.b, 55088u, 4294967295u), var_0.wz), 12516u, arg_1, Struct_1(arg_1.yx, arg_1, vec3<u32>(1u, 2665u, u_input.a.x), var_1)), 0u, func_1(Struct_2(Struct_1(arg_0.yz, arg_1, vec3<u32>(1u, u_input.a.x, 1u), var_0.wx), Struct_1(arg_0.xy, arg_1, vec3<u32>(u_input.a.x, 4036u, u_input.a.x), u_input.d.zy), 48773u, arg_1, Struct_1(arg_1.zz, arg_1, vec3<u32>(4294967295u, u_input.a.x, u_input.c), vec2<i32>(2147483647i, var_1.x))), 12884u, Struct_1(vec2<bool>(true, true), vec4<bool>(false, true, false, true), vec3<u32>(47364u, 78393u, u_input.a.x), vec2<i32>(0i, 2147483647i)), Struct_4(1u)).e, Struct_4(u_input.c)).e, Struct_4(func_1(Struct_2(Struct_1(arg_0.yx, vec4<bool>(arg_1.x, arg_0.x, false, arg_1.x), vec3<u32>(31591u, u_input.a.x, 219u), vec2<i32>(-2147483647i, arg_2)), Struct_1(vec2<bool>(arg_1.x, arg_0.x), vec4<bool>(false, arg_1.x, arg_0.x, arg_1.x), vec3<u32>(1u, 4294967295u, 0u), vec2<i32>(1i, var_0.x)), u_input.c, vec4<bool>(false, false, arg_1.x, arg_0.x), Struct_1(vec2<bool>(arg_0.x, arg_0.x), arg_1, vec3<u32>(42342u, 1u, u_input.a.x), var_1)), u_input.c, Struct_1(arg_1.xy, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_1.x), vec3<u32>(55061u, u_input.a.x, u_input.c), u_input.d.xy), Struct_4(u_input.c)).c)).a, func_1(Struct_2(Struct_1(arg_1.zw, vec4<bool>(arg_0.x, arg_0.x, arg_1.x, true), vec3<u32>(u_input.b, u_input.c, u_input.c), var_0.zz), func_1(Struct_2(Struct_1(vec2<bool>(arg_1.x, arg_0.x), arg_1, vec3<u32>(80607u, 1u, 0u), vec2<i32>(13458i, var_0.x)), Struct_1(vec2<bool>(false, false), arg_1, vec3<u32>(1u, 12567u, 0u), u_input.d.zy), u_input.b, vec4<bool>(false, arg_0.x, arg_1.x, true), Struct_1(arg_1.zz, vec4<bool>(false, arg_0.x, false, false), vec3<u32>(u_input.b, 16272u, u_input.b), vec2<i32>(arg_2, -62504i))), u_input.a.x, Struct_1(arg_0.yx, vec4<bool>(true, true, arg_1.x, arg_0.x), vec3<u32>(0u, u_input.a.x, 21227u), vec2<i32>(0i, var_0.x)), Struct_4(u_input.b)).e, ~0u, arg_1, func_1(Struct_2(Struct_1(arg_0.zx, arg_1, vec3<u32>(u_input.a.x, 0u, u_input.b), vec2<i32>(var_0.x, 0i)), Struct_1(arg_0.xz, arg_1, vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec2<i32>(u_input.d.x, -77278i)), u_input.a.x, vec4<bool>(true, arg_1.x, arg_0.x, false), Struct_1(vec2<bool>(true, true), arg_1, vec3<u32>(u_input.b, 4294967295u, u_input.a.x), vec2<i32>(-2147483647i, 0i))), u_input.c, Struct_1(arg_0.zz, arg_1, vec3<u32>(1u, 1u, 0u), var_0.wx), Struct_4(0u)).b), ~0u, Struct_1(!vec2<bool>(arg_0.x, arg_0.x), func_1(Struct_2(Struct_1(arg_0.zz, arg_1, vec3<u32>(u_input.a.x, u_input.b, 1u), vec2<i32>(-1i, -68170i)), Struct_1(vec2<bool>(true, false), arg_1, vec3<u32>(u_input.a.x, u_input.c, 1u), vec2<i32>(-2147483647i, var_1.x)), u_input.c, vec4<bool>(arg_0.x, arg_0.x, false, false), Struct_1(vec2<bool>(false, arg_0.x), vec4<bool>(true, false, false, arg_0.x), vec3<u32>(u_input.c, 1u, 4294967295u), u_input.d.xx)), 4294967295u, Struct_1(arg_1.xx, arg_1, vec3<u32>(u_input.b, 38205u, 4294967295u), vec2<i32>(2147483647i, var_1.x)), Struct_4(u_input.a.x)).d, firstLeadingBit(vec3<u32>(4294967295u, 1u, 25993u)), u_input.d.xz), Struct_4(select(10547u, 29260u, false))).b, 4294967295u, vec4<bool>(true, any(func_1(Struct_2(Struct_1(vec2<bool>(false, arg_0.x), vec4<bool>(true, arg_0.x, arg_1.x, arg_1.x), vec3<u32>(u_input.b, u_input.b, 0u), vec2<i32>(u_input.d.x, var_1.x)), Struct_1(vec2<bool>(arg_0.x, false), arg_1, vec3<u32>(u_input.a.x, 4294967295u, 1u), vec2<i32>(-2147483647i, 66444i)), u_input.a.x, arg_1, Struct_1(arg_1.yw, vec4<bool>(true, false, true, false), vec3<u32>(u_input.c, 17926u, u_input.a.x), vec2<i32>(u_input.d.x, var_1.x))), 4294967295u, Struct_1(vec2<bool>(true, false), vec4<bool>(arg_0.x, arg_0.x, arg_1.x, arg_1.x), vec3<u32>(u_input.b, 943u, u_input.c), u_input.d.yx), Struct_4(u_input.b)).d), any(vec4<bool>(arg_0.x, true, true, false)), all(arg_1.xx)), func_1(Struct_2(Struct_1(vec2<bool>(false, true), vec4<bool>(false, arg_0.x, arg_1.x, arg_1.x), vec3<u32>(u_input.a.x, u_input.b, 0u), var_0.yw), func_1(Struct_2(Struct_1(arg_0.yy, vec4<bool>(false, arg_1.x, false, arg_0.x), vec3<u32>(u_input.b, u_input.c, u_input.b), vec2<i32>(-32424i, arg_2)), Struct_1(vec2<bool>(true, arg_1.x), arg_1, vec3<u32>(u_input.c, u_input.b, 2725u), var_1), u_input.c, arg_1, Struct_1(vec2<bool>(false, true), arg_1, vec3<u32>(u_input.b, 41958u, u_input.c), var_1)), u_input.b, Struct_1(vec2<bool>(true, arg_1.x), vec4<bool>(false, arg_1.x, arg_0.x, arg_1.x), vec3<u32>(0u, u_input.a.x, 36345u), vec2<i32>(-2147483647i, u_input.d.x)), Struct_4(u_input.a.x)).e, ~u_input.b, select(arg_1, arg_1, false), func_1(Struct_2(Struct_1(arg_0.yx, vec4<bool>(false, arg_0.x, true, false), vec3<u32>(u_input.a.x, u_input.c, u_input.c), var_1), Struct_1(vec2<bool>(false, arg_0.x), arg_1, vec3<u32>(u_input.b, u_input.b, u_input.a.x), vec2<i32>(var_0.x, 7672i)), 4294967295u, arg_1, Struct_1(arg_1.yw, vec4<bool>(false, arg_1.x, true, arg_0.x), vec3<u32>(1u, u_input.a.x, u_input.a.x), vec2<i32>(u_input.d.x, 19489i))), 0u, Struct_1(vec2<bool>(false, arg_1.x), arg_1, vec3<u32>(u_input.b, u_input.c, u_input.a.x), var_1), Struct_4(u_input.a.x)).a), u_input.b, func_1(Struct_2(Struct_1(arg_1.wz, vec4<bool>(arg_1.x, arg_0.x, false, true), vec3<u32>(u_input.a.x, 0u, u_input.c), var_0.xx), Struct_1(vec2<bool>(arg_0.x, arg_0.x), arg_1, vec3<u32>(6509u, u_input.b, 57802u), vec2<i32>(21628i, -2147483647i)), u_input.c, arg_1, Struct_1(arg_1.wz, vec4<bool>(arg_1.x, false, arg_1.x, false), vec3<u32>(47381u, u_input.b, 1u), vec2<i32>(18839i, var_0.x))), ~4294967295u, Struct_1(vec2<bool>(arg_0.x, arg_0.x), vec4<bool>(false, false, false, arg_1.x), vec3<u32>(u_input.c, 58072u, u_input.a.x), var_1), Struct_4(u_input.b)).a, Struct_4(u_input.a.x)).b), _wgslsmith_sub_u32(55122u, ~(~u_input.a.x | 34263u)), Struct_1(select(func_1(Struct_2(Struct_1(arg_1.zy, arg_1, vec3<u32>(738u, 4294967295u, u_input.b), var_1), Struct_1(vec2<bool>(arg_1.x, arg_1.x), vec4<bool>(arg_0.x, arg_1.x, false, arg_0.x), vec3<u32>(u_input.c, u_input.a.x, 44757u), var_0.zx), 23865u, vec4<bool>(arg_0.x, false, arg_1.x, true), Struct_1(vec2<bool>(arg_0.x, false), arg_1, vec3<u32>(0u, 0u, u_input.c), var_0.zz)), ~1u, func_1(Struct_2(Struct_1(vec2<bool>(arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_0.x, false, arg_1.x), vec3<u32>(u_input.b, 69660u, u_input.a.x), var_1), Struct_1(arg_1.yz, arg_1, vec3<u32>(u_input.c, 4294967295u, u_input.c), var_1), 0u, vec4<bool>(false, true, false, arg_0.x), Struct_1(vec2<bool>(arg_1.x, arg_0.x), vec4<bool>(true, false, false, true), vec3<u32>(20708u, u_input.a.x, 93458u), vec2<i32>(var_1.x, -2147483647i))), 1u, Struct_1(arg_1.xy, arg_1, vec3<u32>(u_input.c, 1u, u_input.a.x), u_input.d.yy), Struct_4(u_input.c)).b, Struct_4(0u)).a.b.zx, vec2<bool>(arg_1.x, true), true), vec4<bool>(arg_0.x, true | !arg_0.x, false, all(select(arg_0, vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(false, false, arg_0.x)))), vec3<u32>(abs(u_input.a.x) << ((1u ^ u_input.b) % 32u), u_input.c, u_input.a.x), _wgslsmith_div_vec2_i32(-u_input.d.yx, -u_input.d.yz) ^ (-vec2<i32>(var_1.x, u_input.d.x) ^ var_1)), Struct_4(~0u)).d;
    return func_1(Struct_2(func_1(func_1(func_1(Struct_2(Struct_1(var_3.xy, vec4<bool>(var_3.x, arg_1.x, false, var_3.x), vec3<u32>(u_input.b, 4294967295u, 8254u), var_1), Struct_1(vec2<bool>(arg_1.x, arg_1.x), arg_1, vec3<u32>(u_input.b, 86557u, 1u), vec2<i32>(var_1.x, u_input.d.x)), 102650u, vec4<bool>(false, true, false, true), Struct_1(vec2<bool>(var_3.x, false), arg_1, vec3<u32>(u_input.c, u_input.a.x, 47165u), u_input.d.xx)), u_input.a.x, Struct_1(vec2<bool>(arg_1.x, false), vec4<bool>(var_3.x, var_3.x, arg_1.x, arg_1.x), vec3<u32>(u_input.a.x, u_input.b, u_input.c), var_1), Struct_4(u_input.a.x)), ~1u, Struct_1(arg_0.yz, arg_1, vec3<u32>(2202u, u_input.a.x, 55600u), vec2<i32>(arg_2, var_1.x)), Struct_4(4294967295u)), u_input.a.x, func_1(Struct_2(Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, false, false), vec3<u32>(1u, 0u, 4294967295u), u_input.d.zy), Struct_1(vec2<bool>(arg_1.x, false), vec4<bool>(true, arg_1.x, var_3.x, arg_1.x), vec3<u32>(u_input.a.x, 3006u, 0u), vec2<i32>(2147483647i, var_1.x)), u_input.b, arg_1, Struct_1(arg_0.xz, vec4<bool>(arg_1.x, arg_0.x, false, var_3.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u), var_1)), u_input.b, Struct_1(vec2<bool>(var_3.x, var_3.x), arg_1, vec3<u32>(u_input.b, 0u, u_input.b), var_1), Struct_4(34395u)).e, Struct_4(~u_input.c)).b, func_1(Struct_2(func_1(Struct_2(Struct_1(arg_0.zz, arg_1, vec3<u32>(0u, u_input.a.x, u_input.a.x), var_1), Struct_1(arg_0.zz, vec4<bool>(var_3.x, arg_0.x, true, true), vec3<u32>(u_input.c, 29325u, 26654u), vec2<i32>(var_0.x, var_0.x)), 25228u, vec4<bool>(false, var_3.x, var_3.x, false), Struct_1(vec2<bool>(true, true), vec4<bool>(var_3.x, true, true, arg_1.x), vec3<u32>(u_input.c, u_input.b, u_input.b), u_input.d.zx)), u_input.b, Struct_1(arg_1.wx, arg_1, vec3<u32>(30228u, u_input.c, u_input.c), var_0.yz), Struct_4(4294967295u)).e, Struct_1(vec2<bool>(false, arg_1.x), vec4<bool>(true, true, false, var_3.x), vec3<u32>(1u, 4294967295u, 1u), u_input.d.zx), 1u, vec4<bool>(var_3.x, var_3.x, arg_0.x, false), func_1(Struct_2(Struct_1(vec2<bool>(arg_1.x, true), arg_1, vec3<u32>(u_input.c, 1u, u_input.b), vec2<i32>(-2147483647i, -2147483647i)), Struct_1(vec2<bool>(false, arg_0.x), vec4<bool>(true, false, var_3.x, false), vec3<u32>(u_input.a.x, u_input.c, 1482u), vec2<i32>(11086i, 13277i)), 1u, arg_1, Struct_1(vec2<bool>(var_3.x, true), arg_1, vec3<u32>(18049u, u_input.a.x, u_input.c), vec2<i32>(var_1.x, var_0.x))), u_input.a.x, Struct_1(arg_1.xx, vec4<bool>(arg_1.x, false, true, arg_1.x), vec3<u32>(1u, 8804u, 4294967295u), vec2<i32>(1i, -1i)), Struct_4(49186u)).a), ~func_1(Struct_2(Struct_1(vec2<bool>(false, false), arg_1, vec3<u32>(u_input.b, 5161u, 1308u), vec2<i32>(-3362i, 38142i)), Struct_1(arg_0.xy, vec4<bool>(var_3.x, arg_1.x, var_3.x, true), vec3<u32>(1u, 1u, 12773u), u_input.d.zy), 1u, vec4<bool>(var_3.x, arg_1.x, var_3.x, arg_1.x), Struct_1(var_3.yx, vec4<bool>(false, false, true, arg_0.x), vec3<u32>(u_input.a.x, 35704u, 65928u), var_1)), u_input.c, Struct_1(vec2<bool>(true, false), arg_1, vec3<u32>(u_input.b, u_input.c, u_input.a.x), var_0.xz), Struct_4(u_input.c)).a.c.x, Struct_1(vec2<bool>(true, false), !arg_1, ~vec3<u32>(0u, u_input.a.x, u_input.b), vec2<i32>(var_0.x, -2147483647i)), Struct_4(abs(u_input.a.x))).a, ~(~_wgslsmith_sub_u32(u_input.c, 4294967295u)), func_1(func_1(Struct_2(Struct_1(arg_0.xy, vec4<bool>(false, true, true, arg_1.x), vec3<u32>(1u, u_input.c, u_input.a.x), var_1), Struct_1(vec2<bool>(false, arg_1.x), arg_1, vec3<u32>(36220u, u_input.c, 1u), var_0.yx), u_input.b, vec4<bool>(true, arg_0.x, true, arg_1.x), Struct_1(var_3.yw, arg_1, vec3<u32>(64628u, 1u, u_input.b), vec2<i32>(29871i, var_1.x))), u_input.c, Struct_1(vec2<bool>(true, false), vec4<bool>(true, true, false, true), vec3<u32>(u_input.a.x, 39915u, 2215u), var_1), Struct_4(0u)), min(~u_input.c, 1u), func_1(Struct_2(Struct_1(vec2<bool>(var_3.x, false), arg_1, vec3<u32>(0u, 0u, u_input.c), vec2<i32>(-30946i, -1i)), Struct_1(vec2<bool>(true, false), vec4<bool>(var_3.x, false, var_3.x, true), vec3<u32>(18198u, u_input.b, 33384u), var_1), 28034u, vec4<bool>(true, arg_0.x, var_3.x, var_3.x), Struct_1(arg_0.xz, arg_1, vec3<u32>(4294967295u, u_input.c, u_input.c), vec2<i32>(var_1.x, u_input.d.x))), 1u, func_1(Struct_2(Struct_1(arg_1.wy, vec4<bool>(false, var_3.x, false, arg_1.x), vec3<u32>(16519u, 43807u, u_input.c), var_0.yy), Struct_1(vec2<bool>(true, false), arg_1, vec3<u32>(u_input.b, u_input.b, 0u), var_0.xx), u_input.b, arg_1, Struct_1(vec2<bool>(false, true), vec4<bool>(var_3.x, true, arg_1.x, true), vec3<u32>(u_input.c, 1u, u_input.c), var_0.zy)), 14678u, Struct_1(vec2<bool>(var_3.x, arg_1.x), vec4<bool>(true, true, var_3.x, true), vec3<u32>(0u, u_input.a.x, 4294967295u), u_input.d.yx), Struct_4(u_input.b)).e, Struct_4(u_input.c)).b, Struct_4(4294967295u | u_input.b)).e.b, func_1(func_1(Struct_2(Struct_1(vec2<bool>(arg_1.x, var_3.x), arg_1, vec3<u32>(u_input.a.x, u_input.a.x, 39401u), var_0.wx), Struct_1(vec2<bool>(arg_0.x, arg_1.x), arg_1, vec3<u32>(69591u, u_input.c, u_input.a.x), var_1), 2075u, arg_1, Struct_1(vec2<bool>(arg_1.x, true), vec4<bool>(true, true, arg_0.x, arg_0.x), vec3<u32>(u_input.c, u_input.c, 4294967295u), vec2<i32>(-29530i, 0i))), 1u, func_1(Struct_2(Struct_1(var_3.ww, arg_1, vec3<u32>(15404u, u_input.a.x, 4294967295u), vec2<i32>(-29743i, var_1.x)), Struct_1(arg_0.yy, vec4<bool>(true, false, false, true), vec3<u32>(u_input.a.x, u_input.a.x, u_input.b), var_1), 74474u, vec4<bool>(arg_0.x, arg_1.x, var_3.x, false), Struct_1(vec2<bool>(arg_0.x, var_3.x), vec4<bool>(false, false, true, arg_0.x), vec3<u32>(4294967295u, 38200u, 0u), vec2<i32>(var_0.x, var_1.x))), 4294967295u, Struct_1(vec2<bool>(false, var_3.x), vec4<bool>(true, arg_1.x, false, false), vec3<u32>(12081u, 13290u, 0u), var_0.xw), Struct_4(4294967295u)).b, Struct_4(61611u)), u_input.c, Struct_1(vec2<bool>(false, arg_1.x), select(vec4<bool>(true, false, false, arg_1.x), vec4<bool>(var_3.x, true, arg_1.x, true), true), vec3<u32>(u_input.c, 4294967295u, u_input.a.x), var_0.yw), Struct_4(u_input.a.x)).e), 0u, func_1(func_1(Struct_2(func_1(Struct_2(Struct_1(vec2<bool>(var_3.x, arg_1.x), vec4<bool>(arg_1.x, var_3.x, false, false), vec3<u32>(u_input.a.x, u_input.a.x, u_input.c), vec2<i32>(var_1.x, 16410i)), Struct_1(arg_1.wy, arg_1, vec3<u32>(43788u, 51040u, u_input.c), var_1), 4294967295u, vec4<bool>(arg_0.x, true, arg_0.x, false), Struct_1(vec2<bool>(arg_0.x, false), arg_1, vec3<u32>(u_input.a.x, u_input.a.x, u_input.b), vec2<i32>(-1i, arg_2))), u_input.a.x, Struct_1(vec2<bool>(true, true), vec4<bool>(true, arg_1.x, true, true), vec3<u32>(18130u, 65040u, u_input.a.x), var_0.ww), Struct_4(16692u)).b, Struct_1(vec2<bool>(arg_1.x, arg_1.x), arg_1, vec3<u32>(u_input.b, u_input.b, u_input.c), var_0.zy), max(u_input.c, 2253u), vec4<bool>(false, true, false, true), Struct_1(vec2<bool>(var_3.x, true), vec4<bool>(false, arg_0.x, true, arg_0.x), vec3<u32>(u_input.a.x, u_input.a.x, 0u), var_1)), u_input.c, Struct_1(!arg_1.yy, vec4<bool>(arg_0.x, arg_0.x, arg_1.x, var_3.x), _wgslsmith_div_vec3_u32(vec3<u32>(2151u, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, u_input.b)), vec2<i32>(arg_2, -21844i)), Struct_4(1u)), 39987u ^ u_input.a.x, func_1(Struct_2(Struct_1(vec2<bool>(true, arg_1.x), arg_1, vec3<u32>(91758u, 1u, u_input.a.x), vec2<i32>(-1i, 35076i)), func_1(Struct_2(Struct_1(vec2<bool>(var_3.x, true), vec4<bool>(arg_0.x, var_3.x, arg_0.x, var_3.x), vec3<u32>(4294967295u, u_input.c, u_input.a.x), vec2<i32>(-7145i, var_0.x)), Struct_1(var_3.xz, arg_1, vec3<u32>(1u, u_input.a.x, u_input.c), vec2<i32>(u_input.d.x, -2147483647i)), 0u, vec4<bool>(arg_0.x, false, false, true), Struct_1(arg_1.wy, vec4<bool>(true, var_3.x, var_3.x, true), vec3<u32>(u_input.b, 4294967295u, u_input.a.x), vec2<i32>(0i, -1i))), 4294967295u, Struct_1(var_3.wz, arg_1, vec3<u32>(u_input.a.x, u_input.c, u_input.c), var_1), Struct_4(u_input.c)).a, u_input.a.x, func_1(Struct_2(Struct_1(arg_1.xx, vec4<bool>(false, var_3.x, arg_0.x, true), vec3<u32>(4294967295u, u_input.a.x, u_input.b), var_1), Struct_1(vec2<bool>(arg_1.x, arg_0.x), arg_1, vec3<u32>(1u, 1u, 4294967295u), u_input.d.xy), u_input.c, vec4<bool>(false, false, var_3.x, arg_0.x), Struct_1(arg_1.zx, arg_1, vec3<u32>(u_input.c, u_input.a.x, 0u), var_1)), u_input.b, Struct_1(vec2<bool>(arg_1.x, arg_1.x), arg_1, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec2<i32>(7687i, var_0.x)), Struct_4(0u)).a.b, Struct_1(vec2<bool>(arg_1.x, false), arg_1, vec3<u32>(u_input.b, u_input.b, 1u), vec2<i32>(40353i, -1i))), ~4294967295u, Struct_1(!arg_1.yw, select(arg_1, vec4<bool>(arg_0.x, false, true, arg_1.x), arg_0.x), ~vec3<u32>(27930u, 55719u, u_input.b), vec2<i32>(0i, u_input.d.x)), Struct_4(20545u)).b, Struct_4(_wgslsmith_sub_u32(u_input.b, 48440u))).b, Struct_4(19033u)).a.b.yyw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(vec2<bool>(true, true)));
    let var_1 = any(!(!select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, true, true), var_0))) | var_0;
    var var_2 = !select(!select(!vec3<bool>(var_0, false, true), !vec3<bool>(var_1, true, var_1), false), !vec3<bool>(true, var_1, true), var_0);
    var_2 = func_7(!vec3<bool>(-u_input.d.x != (u_input.d.x >> (0u % 32u)), func_6(var_2.yz, func_1(Struct_2(Struct_1(vec2<bool>(true, var_2.x), vec4<bool>(var_1, false, var_0, var_2.x), vec3<u32>(33463u, u_input.c, 32343u), u_input.d.yz), Struct_1(vec2<bool>(var_2.x, var_2.x), vec4<bool>(true, false, var_0, var_1), vec3<u32>(u_input.c, 4294967295u, 16932u), vec2<i32>(u_input.d.x, u_input.d.x)), u_input.c, vec4<bool>(var_2.x, false, var_0, var_0), Struct_1(var_2.yz, vec4<bool>(var_1, false, var_2.x, true), vec3<u32>(u_input.a.x, 1u, 4294967295u), u_input.d.zy)), u_input.a.x, Struct_1(var_2.zx, vec4<bool>(var_2.x, false, var_1, false), vec3<u32>(67982u, 1u, u_input.b), vec2<i32>(u_input.d.x, u_input.d.x)), Struct_4(46555u)), ~vec3<u32>(u_input.c, 34964u, 8755u), vec4<u32>(0u, u_input.b, u_input.c, u_input.c) << (vec4<u32>(129797u, 20416u, 31069u, u_input.c) % vec4<u32>(32u))), var_2.x), select(vec4<bool>(select(true, !var_1, u_input.d.x >= u_input.d.x), true, !(!var_0), true), !func_1(func_1(Struct_2(Struct_1(var_2.zy, vec4<bool>(var_1, var_1, false, false), vec3<u32>(17152u, 0u, 10273u), vec2<i32>(55061i, u_input.d.x)), Struct_1(vec2<bool>(var_0, false), vec4<bool>(var_1, true, false, true), vec3<u32>(u_input.b, u_input.b, 33510u), vec2<i32>(0i, -1i)), u_input.a.x, vec4<bool>(false, var_2.x, var_0, var_2.x), Struct_1(vec2<bool>(false, var_1), vec4<bool>(true, true, var_1, var_2.x), vec3<u32>(1u, u_input.b, 4294967295u), vec2<i32>(u_input.d.x, 629i))), 1u, Struct_1(var_2.yy, vec4<bool>(false, true, var_2.x, var_1), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), u_input.d.xx), Struct_4(78786u)), u_input.a.x, func_1(Struct_2(Struct_1(var_2.xy, vec4<bool>(var_2.x, false, true, var_1), vec3<u32>(u_input.a.x, 1u, 97011u), vec2<i32>(u_input.d.x, 35199i)), Struct_1(vec2<bool>(var_0, true), vec4<bool>(false, var_2.x, true, var_1), vec3<u32>(1u, 4294967295u, 34445u), u_input.d.xy), 4294967295u, vec4<bool>(true, true, true, var_0), Struct_1(var_2.zy, vec4<bool>(var_1, true, var_0, var_0), vec3<u32>(u_input.b, 32143u, u_input.b), vec2<i32>(u_input.d.x, u_input.d.x))), u_input.a.x, Struct_1(var_2.yx, vec4<bool>(var_1, false, true, false), vec3<u32>(u_input.c, 4430u, 34827u), vec2<i32>(u_input.d.x, 54908i)), Struct_4(11989u)).e, Struct_4(u_input.b)).a.b, vec4<bool>(var_1, all(vec2<bool>(true, false)), var_2.x, false)), i32(-1i) * -2147483647i);
    var var_3 = -227f;
    let var_4 = -(vec3<i32>(1i, 1i, abs(_wgslsmith_mod_i32(-2147483647i, 9921i))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 74588u, 12052u) & vec3<u32>(u_input.b, u_input.c, u_input.b), ~vec3<u32>(0u, u_input.c, 0u)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-2147483647i), -1i, min(vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(u_input.d.x), firstLeadingBit(var_4.x)), i32(-1i) * -2147483647i), vec2<i32>(-1i) * -u_input.d.xy), 1761i, abs(-(~vec3<i32>(u_input.d.x, var_4.x, 0i))));
}

