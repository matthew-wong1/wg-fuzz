struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)) * arg_1.x), arg_1.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1 * vec2<f32>(arg_1.x, -997f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(156f, arg_1.x), vec2<f32>(arg_1.x, arg_1.x))) + arg_1))))));
    var_0 = _wgslsmith_f_op_vec2_f32(round(arg_1));
    var var_1 = vec2<bool>(0u != _wgslsmith_div_u32(_wgslsmith_sub_u32(~arg_0.x, ~u_input.a.x), _wgslsmith_add_u32(~4294967295u, 22863u)), select(true, !any(vec2<bool>(false, true)), false));
    var var_2 = 1f;
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_1.x, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1247f, 440f) - vec3<f32>(var_0.x, 1604f, -177f))) * vec3<f32>(-970f, _wgslsmith_f_op_f32(var_0.x + 1274f), _wgslsmith_f_op_f32(-765f + -1478f)))), select(select(vec4<u32>(4294967295u, select(u_input.a.x, 4294967295u, true), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_0.x, 32971u), vec3<u32>(arg_0.x, u_input.a.x, 14931u))), vec4<u32>(arg_0.x, _wgslsmith_mod_u32(arg_0.x, u_input.a.x), ~u_input.a.x, 1u >> (arg_0.x % 32u)), !var_1.x), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, 23851u, u_input.a.x, 0u), vec4<u32>(4294967295u, arg_0.x, 36395u, 1u)), select(max(vec4<u32>(u_input.a.x, 76324u, u_input.a.x, u_input.a.x), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, arg_0.x, u_input.a.x, 5467u), !vec4<bool>(var_1.x, var_1.x, true, var_1.x))), !(!select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x), true))), Struct_1(!(!select(vec2<bool>(true, var_1.x), vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_1.x)))));
    return abs(_wgslsmith_mod_vec3_u32(var_3.b.zwy, ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(26449u, u_input.a.x, u_input.a.x), abs(var_3.b.zxz), var_3.b.wxx)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1137f * -540f), 136f, _wgslsmith_div_f32(arg_2.c, -613f)));
    var var_1 = ~func_3(~arg_2.b, vec2<f32>(_wgslsmith_div_f32(197f, arg_2.c), _wgslsmith_f_op_f32(-318f * 371f))) ^ ~_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(func_3(u_input.a, vec2<f32>(var_0.x, -1000f)), ~vec3<u32>(u_input.a.x, arg_2.b.x, 34163u)), ~vec3<u32>(1797u, arg_2.b.x, u_input.a.x) << (~vec3<u32>(arg_2.b.x, arg_2.b.x, arg_2.b.x) % vec3<u32>(32u)));
    var var_2 = ~(vec2<u32>(arg_2.b.x, _wgslsmith_sub_u32(48296u, arg_2.b.x | 1u)) | countOneBits(arg_2.b));
    let var_3 = arg_0;
    var_2 = ~vec2<u32>(~_wgslsmith_add_u32(u_input.a.x, 48519u) | countOneBits(firstLeadingBit(1u)), 4294967295u & select(1u, 0u >> (0u % 32u), arg_1));
    return Struct_3(var_3, ~_wgslsmith_div_vec2_u32(vec2<u32>(1u >> (arg_2.b.x % 32u), _wgslsmith_mult_u32(u_input.a.x, var_1.x)), vec2<u32>(88264u, 4294967295u)), arg_2.c, ~_wgslsmith_mod_vec3_i32(vec3<i32>(43527i & arg_2.d.x, _wgslsmith_mod_i32(-48888i, arg_3.x), 2147483647i >> (var_1.x % 32u)), arg_2.d), arg_0);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = select(func_2(Struct_1(!(!arg_0.e.a)), any(select(!vec3<bool>(false, arg_0.e.a.x, true), select(vec3<bool>(false, arg_0.e.a.x, true), vec3<bool>(arg_0.e.a.x, arg_0.e.a.x, false), true), any(vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, true)))), arg_0, vec4<i32>(_wgslsmith_sub_i32(1i, 34361i), ~(-1i), arg_0.d.x, 1i) >> (vec4<u32>(func_2(Struct_1(arg_0.a.a), arg_0.a.a.x, Struct_3(Struct_1(vec2<bool>(arg_0.e.a.x, true)), u_input.a, 221f, vec3<i32>(75922i, u_input.b, -2147483647i), arg_0.a), vec4<i32>(0i, 2147483647i, u_input.b, -1i)).b.x, ~16103u, _wgslsmith_add_u32(arg_0.b.x, u_input.a.x), ~0u) % vec4<u32>(32u))).a.a.x, arg_0.a.a.x, !arg_0.a.a.x);
    let var_1 = _wgslsmith_mult_i32(u_input.b >> (22772u % 32u), _wgslsmith_div_i32(-2147483647i, abs(5194i)));
    var var_2 = vec2<i32>(_wgslsmith_mod_i32(var_1, -_wgslsmith_dot_vec4_i32(vec4<i32>(-18264i, u_input.b, -2147483647i, -15093i) & vec4<i32>(-718i, var_1, u_input.b, arg_0.d.x), vec4<i32>(arg_0.d.x, 28669i, -1242i, -2147483647i) & vec4<i32>(-589i, 0i, u_input.b, var_1))), _wgslsmith_add_i32(19984i, -1i));
    var var_3 = arg_0;
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c, arg_0.c, 498f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-991f, var_3.c, var_3.c))), !(!var_0)))), min(~vec4<u32>(arg_0.b.x, 4294967295u, 4294967295u, 0u) & ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, var_3.b.x, 24630u, var_3.b.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, var_3.b.x)), ((vec4<u32>(var_3.b.x, arg_0.b.x, 91342u, 1u) & vec4<u32>(arg_0.b.x, 74947u, 9388u, 0u)) | firstLeadingBit(vec4<u32>(1u, u_input.a.x, 26756u, var_3.b.x))) ^ ~max(vec4<u32>(3460u, 61859u, var_3.b.x, 0u), vec4<u32>(12997u, u_input.a.x, 4294967295u, u_input.a.x))), func_2(func_2(var_3.a, true, Struct_3(func_2(Struct_1(arg_0.e.a), true, Struct_3(Struct_1(var_3.e.a), var_3.b, -377f, arg_0.d, Struct_1(arg_0.e.a)), vec4<i32>(31480i, -51402i, var_2.x, var_2.x)).a, vec2<u32>(var_3.b.x, 0u), arg_0.c, var_3.d, var_3.e), ~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 17208i, -1i, arg_0.d.x), vec4<i32>(41977i, var_1, -2147483647i, var_2.x))).a, !arg_0.e.a.x, Struct_3(Struct_1(!var_3.a.a), ~vec2<u32>(60u, u_input.a.x) << (~var_3.b % vec2<u32>(32u)), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_add_vec3_i32(vec3<i32>(var_3.d.x, arg_0.d.x, u_input.b) << (vec3<u32>(arg_0.b.x, u_input.a.x, 1u) % vec3<u32>(32u)), vec3<i32>(var_3.d.x, -2147483647i, -2147483647i)), arg_0.a), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(65668i, -2147483647i, -25549i, var_2.x) | vec4<i32>(-1i, var_1, -2147483647i, var_3.d.x), vec4<i32>(11827i, 2147483647i, u_input.b, var_1)))).a);
    return var_4.c;
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.c, arg_0.c, arg_0.c, 672f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c, 1150f, -606f, -1834f), vec4<f32>(arg_0.c, -1000f, arg_0.c, arg_0.c), vec4<bool>(arg_0.e.a.x, arg_0.e.a.x, arg_0.e.a.x, arg_0.e.a.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-860f, arg_0.c, 243f, 975f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, 314f, arg_0.c, arg_0.c) - vec4<f32>(1051f, -976f, -1080f, -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -471f), _wgslsmith_f_op_f32(step(-374f, 1853f)), 579f, arg_0.c))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-214f, arg_0.c, -436f, -1350f), vec4<f32>(136f, 449f, -1000f, arg_0.c))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-424f, 579f, -1263f, arg_0.c))))))));
    var var_1 = !(!(!select(vec2<bool>(arg_0.e.a.x, true), vec2<bool>(arg_0.a.a.x, arg_0.e.a.x), !vec2<bool>(true, arg_0.e.a.x))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(var_0.yyx)), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(742u, arg_0.b.x, arg_0.b.x, 1343u) | (vec4<u32>(35568u, 51509u, 0u, arg_0.b.x) & vec4<u32>(u_input.a.x, u_input.a.x, 0u, 20149u)), ~(~vec4<u32>(arg_0.b.x, arg_0.b.x, 9919u, u_input.a.x)), vec4<u32>(arg_0.b.x, ~arg_0.b.x, _wgslsmith_mod_u32(arg_0.b.x, 4294967295u), ~arg_0.b.x))), func_4(Struct_3(Struct_1(arg_0.a.a), ~(~u_input.a), _wgslsmith_div_f32(arg_0.c, arg_0.c), vec3<i32>(2147483647i, -14881i, -60703i), Struct_1(vec2<bool>(true, true)))));
    var var_3 = ~1u;
    var var_4 = arg_0;
    return func_4(func_2(Struct_1(!func_4(Struct_3(Struct_1(vec2<bool>(true, true)), var_4.b, -543f, arg_0.d, var_4.e)).a), all(!(!var_2.c.a)), arg_0, ~_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, arg_0.d.x, 2147483647i, -33474i), vec4<i32>(-1i, var_4.d.x, 69955i, -53787i)), vec4<i32>(25301i, -1i, var_4.d.x, 1i))));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = func_2(Struct_1(arg_0.a), (-1i >> (firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) % 32u)) < 2147483647i, Struct_3(arg_0, ~u_input.a, 1f, min(-func_2(Struct_1(vec2<bool>(arg_0.a.x, arg_0.a.x)), arg_0.a.x, Struct_3(Struct_1(arg_0.a), u_input.a, 1000f, arg_1.xxz, Struct_1(arg_0.a)), arg_1).d, vec3<i32>(u_input.b, -5748i, -39057i)), Struct_1(arg_0.a)), ~arg_1);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(303f, 1250f), _wgslsmith_div_f32(1577f, 222f), 1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1327f, var_0.c, var_0.c))))))), ~max(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.x, 4294967295u, 1u, var_0.b.x), vec4<u32>(4294967295u, var_0.b.x, 94083u, u_input.a.x), vec4<u32>(u_input.a.x, var_0.b.x, u_input.a.x, 47644u)) & ~vec4<u32>(8218u, u_input.a.x, 21776u, var_0.b.x), firstLeadingBit(vec4<u32>(var_0.b.x, var_0.b.x, u_input.a.x, 13703u))), var_0.a);
    let var_2 = _wgslsmith_add_vec2_i32(func_2(var_1.c, all(select(vec4<bool>(arg_0.a.x, var_0.a.a.x, arg_0.a.x, true), vec4<bool>(var_1.c.a.x, true, false, true), false)) | !(var_1.c.a.x == arg_0.a.x), Struct_3(func_5(func_2(Struct_1(vec2<bool>(false, false)), var_0.a.a.x, var_0, vec4<i32>(-21934i, var_0.d.x, var_0.d.x, arg_1.x))), u_input.a, var_1.a.x, vec3<i32>(~u_input.b, u_input.b, u_input.b), var_1.c), vec4<i32>(i32(-1i) * -2147483647i, arg_1.x, _wgslsmith_mult_i32(1i, 32901i), 1i) >> ((max(vec4<u32>(0u, var_0.b.x, var_0.b.x, var_0.b.x), var_1.b) | vec4<u32>(var_1.b.x, u_input.a.x, 59232u, 30280u)) % vec4<u32>(32u))).d.zy, arg_1.wy);
    var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-553f))))), var_0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))))), _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(_wgslsmith_sub_u32(var_1.b.x, u_input.a.x)), _wgslsmith_clamp_u32(1u, ~1u, var_0.b.x), _wgslsmith_add_u32(u_input.a.x & 4294967295u, ~var_1.b.x), _wgslsmith_clamp_u32(~u_input.a.x, 4294967295u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(4294967295u, var_0.b.x), ~4294967295u, 10618u), vec4<u32>(~0u, u_input.a.x, max(0u, 0u), u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 594u, var_1.b.x, var_1.b.x) << (vec4<u32>(4294967295u, var_0.b.x, 14121u, u_input.a.x) % vec4<u32>(32u)), var_1.b << (var_1.b % vec4<u32>(32u)))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, var_1.b.x), _wgslsmith_mod_vec4_u32(var_1.b, var_1.b))), func_5(var_0));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(276f, 1486f, var_0.c)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-577f, 464f, var_0.c)))))), firstLeadingBit(_wgslsmith_div_vec4_u32(firstTrailingBit(reverseBits(var_1.b)), vec4<u32>(func_3(vec2<u32>(var_1.b.x, 4294967295u), var_1.a.zx).x, var_0.b.x, u_input.a.x, ~var_1.b.x))), func_2(func_2(var_1.c, func_5(var_0).a.x, func_2(func_2(var_0.a, var_1.c.a.x, var_0, arg_1).a, any(vec2<bool>(var_0.a.a.x, true)), var_0, -arg_1), arg_1).a, true, var_0, arg_1).a);
    return Struct_2(var_1.a, ~(~firstTrailingBit(vec4<u32>(1u, 4294967295u, 1u, 25582u))), func_4(var_0));
}

fn func_1() -> Struct_1 {
    let var_0 = func_6(func_5(Struct_3(Struct_1(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), vec2<u32>(~88472u, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-705f, 1000f))), ~vec3<i32>(u_input.b, -1i, 18886i), func_4(func_2(Struct_1(vec2<bool>(true, false)), true, Struct_3(Struct_1(vec2<bool>(true, true)), u_input.a, 1861f, vec3<i32>(u_input.b, u_input.b, u_input.b), Struct_1(vec2<bool>(false, true))), vec4<i32>(-14787i, 1i, -2147483647i, -2147483647i))))), -(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 32283i), vec2<i32>(-21327i, 18573i)), 13869i, ~(-25791i), 1i)));
    let var_1 = func_6(Struct_1(!var_0.c.a), vec4<i32>(u_input.b, -69194i, u_input.b, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, -38225i), vec2<i32>(-31283i, u_input.b)) | u_input.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1792f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - 1057f) - 159f), func_6(Struct_1(var_0.c.a), vec4<i32>(u_input.b, 19936i, u_input.b, u_input.b) >> (vec4<u32>(1200u, u_input.a.x, var_0.b.x, 0u) % vec4<u32>(32u))).a.x, var_0.a.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x, _wgslsmith_f_op_f32(ceil(func_6(var_1.c, vec4<i32>(u_input.b, 2147483647i, u_input.b, -2147483647i)).a.x)), _wgslsmith_f_op_f32(f32(-1f) * -349f)), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-431f * _wgslsmith_div_f32(1297f, 351f)), func_2(var_0.c, any(var_1.c.a), func_2(var_0.c, false, Struct_3(var_0.c, vec2<u32>(55505u, u_input.a.x), var_1.a.x, vec3<i32>(u_input.b, -1i, 24137i), Struct_1(vec2<bool>(var_0.c.a.x, var_0.c.a.x))), vec4<i32>(17535i, -17141i, -2147483647i, u_input.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, -15413i), vec4<i32>(-3614i, 1i, u_input.b, u_input.b))).c, -1030f), vec4<bool>(false, all(vec4<bool>(true, true, var_0.c.a.x, var_0.c.a.x)), func_4(func_2(var_0.c, false, Struct_3(var_0.c, vec2<u32>(u_input.a.x, 1u), var_0.a.x, vec3<i32>(u_input.b, u_input.b, u_input.b), var_0.c), vec4<i32>(u_input.b, u_input.b, -2147483647i, -2147483647i))).a.x, var_0.c.a.x))), !(!select(select(vec4<bool>(true, var_0.c.a.x, false, var_0.c.a.x), vec4<bool>(var_1.c.a.x, true, var_1.c.a.x, var_1.c.a.x), vec4<bool>(false, true, var_1.c.a.x, true)), !vec4<bool>(var_0.c.a.x, var_0.c.a.x, var_1.c.a.x, false), select(vec4<bool>(true, true, var_0.c.a.x, var_1.c.a.x), vec4<bool>(var_0.c.a.x, false, var_1.c.a.x, var_0.c.a.x), false)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(exp2(var_0.a.x)), -495f) * _wgslsmith_f_op_vec3_f32(round(var_0.a)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1205f, var_1.a.x, var_1.a.x))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -458f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1.a.x)))), 154f)));
    let var_4 = Struct_3(func_4(Struct_3(Struct_1(var_1.c.a), var_0.b.xy, _wgslsmith_f_op_f32(f32(-1f) * -1021f), vec3<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), _wgslsmith_add_i32(0i, u_input.b), u_input.b), func_2(func_6(Struct_1(vec2<bool>(true, var_1.c.a.x)), vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b)).c, true, Struct_3(Struct_1(var_1.c.a), var_0.b.zw, var_1.a.x, vec3<i32>(u_input.b, u_input.b, 2147483647i), Struct_1(var_1.c.a)), vec4<i32>(u_input.b, 30904i, -2147483647i, 1i)).e)), firstTrailingBit(_wgslsmith_mult_vec2_u32(var_0.b.wz, var_0.b.xy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -734f) * _wgslsmith_f_op_f32(-var_1.a.x)), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(22744i, -1i, u_input.b), vec3<i32>(_wgslsmith_add_i32(38243i, u_input.b), 0i, 1i))), func_5(func_2(func_4(Struct_3(var_0.c, vec2<u32>(var_0.b.x, 1u), 1000f, vec3<i32>(u_input.b, 1i, -17662i), Struct_1(var_0.c.a))), var_1.c.a.x && true, func_2(func_4(Struct_3(var_1.c, vec2<u32>(5154u, 48109u), 163f, vec3<i32>(-2147483647i, u_input.b, u_input.b), Struct_1(var_0.c.a))), var_0.b.x >= 4294967295u, Struct_3(var_0.c, vec2<u32>(var_1.b.x, var_0.b.x), 445f, vec3<i32>(u_input.b, -5723i, 43430i), Struct_1(vec2<bool>(true, var_0.c.a.x))), vec4<i32>(74921i, u_input.b, -13683i, 1i)), vec4<i32>(select(u_input.b, 2147483647i, var_0.c.a.x), 1i, u_input.b, u_input.b))));
    return func_2(var_4.e, (-_wgslsmith_mult_i32(-18181i, var_4.d.x) >> ((_wgslsmith_dot_vec2_u32(var_0.b.wx, vec2<u32>(var_1.b.x, 29615u)) << (var_0.b.x % 32u)) % 32u)) != u_input.b, var_4, vec4<i32>(27903i, -22334i, 1i, 1i)).e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = select(!vec2<bool>(true | all(vec3<bool>(true, false, false)), true), vec2<bool>(true, true), false);
    let var_2 = Struct_3(Struct_1(select(vec2<bool>(4294967295u != var_0, true), vec2<bool>(false, false), _wgslsmith_div_u32(var_0, u_input.a.x) > _wgslsmith_add_u32(18009u, 42964u))), select(reverseBits(vec2<u32>(34874u, ~22240u)), u_input.a, var_1.x), -730f, vec3<i32>(_wgslsmith_mod_i32(reverseBits(-u_input.b), _wgslsmith_mod_i32(u_input.b, -8254i)), -2147483647i, -u_input.b), func_1());
    var var_3 = ~(~(select(~vec4<u32>(5732u, var_2.b.x, var_0, u_input.a.x), vec4<u32>(u_input.a.x, var_2.b.x, 4294967295u, var_2.b.x) ^ vec4<u32>(1u, 62273u, var_0, var_0), select(vec4<bool>(var_2.a.a.x, var_1.x, var_1.x, var_2.e.a.x), vec4<bool>(false, true, false, var_2.a.a.x), var_1.x)) | firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(8859u, var_2.b.x, 0u, 40032u), vec4<u32>(var_2.b.x, var_0, 9460u, var_0)))));
    let var_4 = var_2;
    var_3 = countOneBits(vec4<u32>(40538u, _wgslsmith_add_u32(~(~86539u), ~43994u | _wgslsmith_add_u32(var_2.b.x, var_4.b.x)), var_3.x, var_0));
    let x = u_input.a;
    s_output = StorageBuffer(10524u, ~_wgslsmith_clamp_u32(var_3.x, ~_wgslsmith_div_u32(0u, 4294967295u), var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1376f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.c + var_2.c))), _wgslsmith_f_op_f32(step(var_4.c, _wgslsmith_f_op_f32(388f * 979f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1149f, 490f, true))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c, var_4.c, -178f, 1000f))), var_4.c);
}

