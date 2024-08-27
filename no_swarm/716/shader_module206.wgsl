struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: Struct_4) -> f32 {
    let var_0 = arg_3.c.b.yx;
    var var_1 = Struct_3(Struct_2(arg_0.c, _wgslsmith_add_u32(arg_2.a.b, ~arg_2.b.b)), false, Struct_1(_wgslsmith_clamp_i32(-5626i, ~firstLeadingBit(arg_2.b.a.a), firstTrailingBit(~(-1i))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, var_0.x, arg_3.c.c), arg_3.c.b, arg_3.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-491f * arg_0.d)))), arg_1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1897f, arg_0.c.b.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(139f, -1381f, -231f))))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(529f - -833f), _wgslsmith_f_op_f32(arg_3.d + 329f), arg_2.a.a.c)))), Struct_1(1i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1171f, -556f, -1267f), vec3<f32>(var_0.x, arg_0.d, -382f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c.b.x, -993f, 391f)), all(vec2<bool>(false, false)) == true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-141f, 625f), _wgslsmith_f_op_f32(max(-1297f, 633f)), all(vec3<bool>(arg_3.c.d, arg_0.a, arg_2.b.a.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * _wgslsmith_f_op_f32(var_0.x * arg_0.c.c))), any(!vec4<bool>(true, arg_3.a, arg_0.b.x, true))));
    var var_2 = var_1.a;
    let var_3 = ~(vec2<u32>(~1126u, ~_wgslsmith_add_u32(arg_2.b.b, 53614u)) >> (vec2<u32>(_wgslsmith_mod_u32(4294967295u, 50049u), _wgslsmith_mod_u32(4294967295u, 4294967295u)) % vec2<u32>(32u)));
    var_2 = Struct_2(arg_0.c, 4294967295u);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(916f, arg_2.c.x)) - var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(560f, 1000f)) * _wgslsmith_f_op_f32(trunc(arg_3.d))) * _wgslsmith_f_op_f32(f32(-1f) * -728f))), true));
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = vec4<i32>(reverseBits(_wgslsmith_sub_i32(~(-u_input.a.x), 2147483647i)), max(-24662i, 0i), -(~select(5747i, u_input.a.x, true)) >> (~abs(8135u) % 32u), 84719i);
    let var_1 = countOneBits(u_input.a);
    var var_2 = arg_0;
    var_2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(971f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-714f - -398f))));
    let var_3 = 1u;
    return Struct_3(Struct_2(Struct_1(-max(-1i, -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1483f, -803f, 869f) - vec3<f32>(-1240f, 167f, -749f))), _wgslsmith_f_op_f32(func_3(Struct_4(false, vec3<bool>(false, arg_0, true), Struct_1(u_input.a.x, vec3<f32>(408f, -1000f, -287f), 1000f, arg_0), -2256f), vec2<bool>(arg_0, arg_0), Struct_5(Struct_2(Struct_1(var_0.x, vec3<f32>(-840f, -1060f, -490f), -842f, arg_0), var_3), Struct_2(Struct_1(var_1.x, vec3<f32>(-857f, -705f, 440f), -139f, false), var_3), vec2<f32>(-734f, 319f)), Struct_4(arg_0, vec3<bool>(arg_0, true, arg_0), Struct_1(0i, vec3<f32>(-668f, -157f, 863f), -936f, true), -1728f))), false), min(min(0u, 1u), var_3)), all(vec3<bool>(true, true, true)), Struct_1(~var_1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1471f, -1827f, 1807f) * vec3<f32>(-1325f, -1045f, 1950f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-634f, -1122f, 908f) + vec3<f32>(1614f, 1951f, -1230f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-827f, 635f, 1081f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -477f)))), arg_0), vec3<f32>(-190f, _wgslsmith_f_op_f32(abs(-1704f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -449f))), Struct_1(2147483647i, vec3<f32>(2230f, _wgslsmith_f_op_f32(func_3(Struct_4(arg_0, vec3<bool>(true, arg_0, false), Struct_1(u_input.a.x, vec3<f32>(-897f, -301f, 797f), 2416f, true), -903f), !vec2<bool>(arg_0, false), Struct_5(Struct_2(Struct_1(-1i, vec3<f32>(525f, -673f, 777f), 1105f, arg_0), var_3), Struct_2(Struct_1(u_input.a.x, vec3<f32>(1000f, 646f, -1844f), 140f, false), var_3), vec2<f32>(-402f, -1976f)), Struct_4(arg_0, vec3<bool>(arg_0, false, arg_0), Struct_1(u_input.a.x, vec3<f32>(-1755f, -692f, 1666f), -885f, false), 392f))), -1215f), -2107f, false));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a.a.c * 386f), -1094f)) - -785f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-286f, arg_0.e.b.x) + _wgslsmith_f_op_f32(-1816f - 1647f))), !(!select(!vec3<bool>(false, arg_1.a.d, arg_0.a.a.d), vec3<bool>(true, true, true), arg_1.a.d & arg_1.a.d)), arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.c * _wgslsmith_f_op_f32(select(-1431f, -475f, arg_1.a.d)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.b.x, -189f))))));
    var var_1 = var_0.b.xy;
    var_1 = select(!(!var_0.b.xz), select(select(vec2<bool>(func_2(true).c.d, arg_0.e.d && var_0.c.d), !vec2<bool>(arg_0.c.d, true), vec2<bool>(arg_1.a.d | false, var_0.b.x)), !vec2<bool>(true, any(var_0.b)), arg_1.a.d), var_0.b.yy);
    var var_2 = max(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.x, -1i, var_0.c.a << (0u % 32u)), select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 62689i, var_0.c.a), vec3<i32>(var_0.c.a, arg_2.x, 3792i)), ~vec3<i32>(arg_1.a.a, 2789i, -2147483647i), arg_0.a.b == 0u)), ~(-(vec3<i32>(arg_2.x, arg_0.a.a.a, 37424i) << (vec3<u32>(arg_0.a.b, 4294967295u, arg_1.b) % vec3<u32>(32u))))) ^ ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(0i, -1i), -arg_0.e.a), ~vec3<i32>(-1i, var_0.c.a, var_0.c.a));
    let var_3 = _wgslsmith_mult_u32(~(~arg_1.b & ~31060u) << (4294967295u % 32u), _wgslsmith_add_u32(0u >> (arg_0.a.b % 32u), ~arg_1.b));
    return func_2(arg_0.a.a.d).e;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> vec3<u32> {
    let var_0 = Struct_5(Struct_2(Struct_1(_wgslsmith_add_i32(~arg_1, 2147483647i | u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b) * _wgslsmith_f_op_vec3_f32(-arg_0.b)), func_2(false).e.b.x, func_2(select(true, arg_0.d, true)).b), 42955u), func_2((_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.a, arg_1, arg_1), vec4<i32>(u_input.a.x, -1i, arg_1, 38785i)) | 0i) > 34340i).a, arg_0.b.yz);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(func_2(false && arg_0.d).c.b.yy, var_0.a.a.b.yy, select(select(vec2<bool>(var_0.a.a.d, false), vec2<bool>(false, false), arg_0.d), vec2<bool>(true, true), select(vec2<bool>(false, var_0.b.a.d), vec2<bool>(arg_0.d, false), var_0.a.a.d))))) + var_0.a.a.b.xy);
    let var_2 = Struct_4(any(!vec4<bool>(false, true, all(vec2<bool>(true, arg_0.d)), any(vec3<bool>(false, true, true)))), !select(vec3<bool>(false, true, !arg_0.d), select(!vec3<bool>(false, true, arg_0.d), vec3<bool>(false, var_0.b.a.d, var_0.b.a.d), true), vec3<bool>(!var_0.a.a.d, select(false, true, true), true)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.a.a, -2147483647i << (0u % 32u), _wgslsmith_mult_i32(-44812i, -9315i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-16255i, -1i, -2147483647i), vec3<i32>(arg_0.a, 2147483647i, u_input.a.x) | vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x))), vec3<f32>(arg_0.c, -1145f, 2223f), -554f, any(vec4<bool>(any(vec4<bool>(arg_0.d, false, true, arg_0.d)), true, true, var_0.a.a.a <= arg_0.a))), -1590f);
    return ~(~vec3<u32>(var_0.a.b, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.b, 1u), vec2<u32>(4294967295u, 22658u)), _wgslsmith_mod_u32(1u, 2549u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>) -> vec3<u32> {
    let var_0 = ~(~(~(~(~4294967295u))));
    var var_1 = all(vec4<bool>(true, !any(!vec2<bool>(arg_0.x, arg_0.x)), (any(vec4<bool>(arg_0.x, arg_0.x, true, true)) || arg_0.x) || false, arg_0.x));
    let var_2 = 22100u;
    let var_3 = _wgslsmith_sub_u32(arg_1.x, min(5492u, _wgslsmith_clamp_u32(~1u, var_0, arg_1.x)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-839f)));
    return arg_1.zwx | _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, ~_wgslsmith_mod_u32(arg_1.x, 114u), _wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(var_2, var_3))), vec3<u32>(3307u, _wgslsmith_mult_u32(arg_1.x, ~14338u), 4294967295u), func_5(func_4(func_2(arg_0.x), Struct_2(Struct_1(3792i, vec3<f32>(249f, var_4, var_4), var_4, false), arg_1.x), u_input.a), func_4(func_2(arg_0.x), func_2(false).a, u_input.a ^ u_input.a).a));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(-1000f + func_4(Struct_3(Struct_2(arg_1.a, arg_1.b), !arg_1.a.d, arg_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.c, arg_1.a.c, arg_1.a.c)), func_2(arg_1.a.d).a.a), Struct_2(arg_1.a, 23565u), arg_0.zx).c) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.b.x - -1978f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b.x)))));
    var var_1 = arg_1.a.b;
    var_1 = _wgslsmith_f_op_vec3_f32(-arg_1.a.b);
    return Struct_5(Struct_2(arg_1.a, ~_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, arg_1.b), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.b, arg_1.b, arg_1.b), vec4<u32>(55392u, arg_1.b, arg_1.b, arg_1.b)))), func_2(all(vec4<bool>(func_2(false).e.d, arg_1.a.d, false, arg_1.a.d && arg_1.a.d))).a, var_1.zy);
}

fn func_7(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = 119f;
    var var_1 = Struct_3(Struct_2(arg_0.b.a, func_5(func_2(true).e, ~abs(arg_2.x)).x), any(!select(!vec3<bool>(arg_0.a.a.d, true, arg_3.x), vec3<bool>(arg_0.a.a.d, arg_0.b.a.d, true), vec3<bool>(false, true, arg_3.x))), Struct_1(1i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_1.xzy)), _wgslsmith_div_vec3_f32(arg_1.zyw, vec3<f32>(-1180f, 1020f, 393f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1210f - arg_1.x))), arg_0.b.a.d), arg_0.a.a.b, func_6(min(firstLeadingBit(arg_2.xxw), max(arg_2.xzw, arg_2.xzw)), func_6(reverseBits(vec3<i32>(41799i, u_input.a.x, arg_0.a.a.a) ^ vec3<i32>(u_input.a.x, arg_0.b.a.a, -2147483647i)), Struct_2(Struct_1(41818i, arg_1.yyy, 1000f, false), _wgslsmith_div_u32(arg_0.b.b, 36892u))).b).a.a);
    let var_2 = !(!func_4(func_2(arg_3.x), var_1.a, countOneBits(u_input.a)).d);
    var_1 = Struct_3(func_6(-firstLeadingBit(select(vec3<i32>(0i, 0i, -692i), vec3<i32>(1i, arg_0.b.a.a, var_1.e.a), vec3<bool>(var_1.e.d, var_2, true))), Struct_2(func_6(arg_2.zxx, arg_0.a).a.a, ~1u & func_5(arg_0.a.a, arg_0.b.a.a).x)).a, false || var_2, func_6(~vec3<i32>(~(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.a.a, 2147483647i), arg_2.yx), min(-3847i, 16511i)), func_6(min(vec3<i32>(118i, 44171i, arg_0.b.a.a), arg_2.ywz) | -arg_2.xzx, func_2(false).a).b).b.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(-var_1.c.b.x), _wgslsmith_f_op_f32(arg_0.b.a.c - arg_0.c.x)))), var_1.e);
    var var_3 = -(arg_2 | vec4<i32>(69137i, -arg_0.b.a.a, _wgslsmith_mult_i32(func_4(Struct_3(Struct_2(Struct_1(arg_0.a.a.a, vec3<f32>(var_1.c.b.x, 268f, var_1.d.x), 224f, true), 0u), arg_3.x, var_1.a.a, var_1.a.a.b, Struct_1(arg_0.a.a.a, vec3<f32>(644f, 1186f, arg_1.x), var_1.c.b.x, true)), arg_0.a, arg_2.wz).a, select(28693i, 16154i, var_1.e.d)), -1i));
    return func_2(arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(countOneBits(-vec3<i32>(85692i, u_input.a.x, u_input.a.x)) << (select(_wgslsmith_mod_vec3_u32(vec3<u32>(18538u, 4294967295u, 36521u), vec3<u32>(4294967295u, 1u, 87247u)), func_1(vec3<bool>(false, true, false), vec4<u32>(8354u, 4294967295u, 4294967295u, 0u)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))) % vec3<u32>(32u)), func_2(true).a), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(590f, -995f, -397f, 554f)), vec4<f32>(1516f, -734f, 546f, -235f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -236f), _wgslsmith_f_op_f32(abs(3240f)), 1f, -1698f), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false), true))))), vec4<i32>(u_input.a.x, 2147483647i, 1i >> (1u % 32u), u_input.a.x), select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(false, true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), false)), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), true)), all(vec3<bool>(true, true, true)) == true));
    var_0 = func_7(func_6(abs(vec3<i32>(-31495i, -15122i, var_0.c.a)), func_7(func_6(~vec3<i32>(0i, -2147483647i, 0i), Struct_2(var_0.a.a, var_0.a.b)), vec4<f32>(_wgslsmith_f_op_f32(144f + 871f), _wgslsmith_f_op_f32(-var_0.e.c), -1219f, var_0.a.a.c), ~(-vec4<i32>(2147483647i, -19487i, -2147483647i, u_input.a.x)), vec2<bool>(true, select(false, var_0.c.d, var_0.a.a.d))).a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.a.c, 909f, -538f, 187f))) + vec4<f32>(var_0.e.b.x, -1060f, var_0.c.c, -1571f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1701f, 1166f, var_0.c.b.x, 1333f) - _wgslsmith_div_vec4_f32(vec4<f32>(541f, -1074f, -467f, var_0.d.x), vec4<f32>(var_0.e.c, var_0.c.b.x, -535f, var_0.d.x))))), max(vec4<i32>(countOneBits(-1i), _wgslsmith_mult_i32(u_input.a.x, 0i), var_0.a.a.a, u_input.a.x) ^ -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 0i, var_0.c.a), vec4<i32>(u_input.a.x, var_0.a.a.a, u_input.a.x, -2147483647i)), _wgslsmith_div_vec4_i32(-(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(20270u, var_0.a.b, var_0.a.b, var_0.a.b) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a.x, 0i, var_0.a.a.a, u_input.a.x), ~vec4<i32>(-2147483647i, var_0.a.a.a, var_0.e.a, u_input.a.x)))), select(!vec2<bool>(var_0.c.d, !var_0.c.d), vec2<bool>(func_2(true).a.a.d, (true || var_0.b) & true), !select(!vec2<bool>(var_0.b, true), select(vec2<bool>(var_0.a.a.d, var_0.e.d), vec2<bool>(var_0.e.d, var_0.a.a.d), vec2<bool>(true, true)), true)));
    let var_1 = Struct_4(any(vec2<bool>(var_0.c.d, any(select(vec3<bool>(var_0.a.a.d, true, true), vec3<bool>(var_0.c.d, var_0.e.d, true), vec3<bool>(var_0.a.a.d, true, false))))), vec3<bool>(true, true, true), Struct_1(-_wgslsmith_mod_i32(u_input.a.x << (19842u % 32u), _wgslsmith_mult_i32(u_input.a.x, var_0.a.a.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c, var_0.c.b.x, 392f)))), func_4(Struct_3(func_6(vec3<i32>(2147483647i, u_input.a.x, -1i), var_0.a).a, func_7(Struct_5(Struct_2(var_0.c, 1u), Struct_2(var_0.a.a, 4294967295u), vec2<f32>(415f, var_0.c.b.x)), vec4<f32>(var_0.a.a.c, -506f, 1147f, var_0.e.b.x), vec4<i32>(var_0.c.a, -22785i, var_0.e.a, -1i), vec2<bool>(false, var_0.c.d)).c.d, func_2(var_0.e.d).c, vec3<f32>(var_0.c.b.x, 1041f, 356f), var_0.a.a), var_0.a, _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(var_0.e.a, 0i)), vec2<i32>(u_input.a.x, 0i))).b.x, false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-279f)))));
    var var_2 = var_0.e;
    let var_3 = !(!select(vec4<bool>(true, true, true, true), !(!vec4<bool>(var_2.d, true, false, false)), var_1.c.d));
    var var_4 = ~vec4<u32>(var_0.a.b, _wgslsmith_div_u32(0u, ~(~20273u)), func_2(var_1.c.d).a.b, var_0.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~4294967295u, var_0.a.b, _wgslsmith_sub_u32(var_4.x, 0u)), _wgslsmith_f_op_vec2_f32(floor(var_0.e.b.yz)), vec2<i32>(~u_input.a.x, 25621i));
}

