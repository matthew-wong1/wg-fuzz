struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<u32>, arg_3: u32) -> u32 {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(max(reverseBits(arg_2.x), _wgslsmith_sub_u32(arg_2.x, 4294967295u)), 20717u, 25674u, ~arg_3), vec4<u32>(arg_0.x, arg_2.x, arg_0.x, 12724u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1042f))), _wgslsmith_f_op_f32(select(299f, 417f, !var_0.x))))), var_0.x, vec2<u32>(arg_2.x, arg_2.x >> (35312u % 32u)) << (vec2<u32>(~arg_0.x ^ 0u, ~0u) % vec2<u32>(32u)), ~(~vec4<i32>(reverseBits(3752i), arg_1, abs(arg_1), u_input.a)));
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(var_1.a.x), _wgslsmith_mult_u32(arg_3, _wgslsmith_add_u32(~15860u, arg_3))), _wgslsmith_dot_vec2_u32(countOneBits(firstTrailingBit(vec2<u32>(30541u, 14109u))), (vec2<u32>(1u, 4294967295u) | vec2<u32>(arg_0.x, 4294967295u)) ^ ~arg_2), _wgslsmith_div_u32(~(17918u ^ arg_3), arg_2.x | (arg_3 ^ arg_2.x)) << (_wgslsmith_div_u32(arg_3, ~arg_3) % 32u), min(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 1u, var_1.d.x, arg_2.x), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, 1u, 0u, 5644u), var_1.a)), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, arg_3, 4294967295u), ~arg_0) | ~0u));
    var var_3 = !(arg_1 >= max(max(_wgslsmith_div_i32(-1i, u_input.a), _wgslsmith_dot_vec2_i32(var_1.e.xz, var_1.e.yx)), abs(i32(-1i) * -27544i)));
    var_1 = Struct_1(var_1.a, var_1.b, !any(select(select(var_0, vec3<bool>(true, false, var_0.x), vec3<bool>(var_1.c, var_0.x, var_0.x)), vec3<bool>(true, false, var_0.x), !vec3<bool>(true, var_1.c, var_0.x))), vec2<u32>(_wgslsmith_div_u32(arg_3, 3620u), ~var_2.x), _wgslsmith_div_vec4_i32(vec4<i32>(~(-21645i), 1i, -1i | var_1.e.x, -23221i) ^ -(~var_1.e), select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -52554i, -15048i, u_input.a), var_1.e), ~var_1.e, false) ^ var_1.e));
    return arg_2.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    let var_0 = Struct_1(vec4<u32>(~(~111191u >> (firstLeadingBit(1u) % 32u)), ~func_3(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_i32(u_input.a, u_input.a), select(vec2<u32>(3708u, 0u), vec2<u32>(21851u, 13137u), true), _wgslsmith_div_u32(4294967295u, 4294967295u)), reverseBits(1u), 0u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1073f, _wgslsmith_f_op_f32(f32(-1f) * -281f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1083f - -525f))))), all(select(!select(vec2<bool>(false, arg_1), vec2<bool>(true, false), arg_1), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true)) != false)), select(~(~vec2<u32>(50055u, 1u)), ~vec2<u32>(0u, 46319u), false) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), (vec4<i32>(abs(-1i), -2147483647i, _wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_mod_i32(arg_0.x, 0i)) >> (reverseBits(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))) & ~(_wgslsmith_div_vec4_i32(vec4<i32>(11132i, u_input.a, 46308i, 2147483647i), vec4<i32>(-6941i, arg_0.x, u_input.a, -1i)) << (vec4<u32>(4294967295u, 0u, 79322u, 114094u) % vec4<u32>(32u))));
    let var_1 = select(!(!vec4<bool>(76118u >= var_0.a.x, var_0.c, all(vec3<bool>(arg_1, false, true)), var_0.a.x > 57913u)), vec4<bool>(true, all(vec2<bool>(arg_1, arg_1 && true)), arg_1, true), !var_0.c);
    let var_2 = Struct_2(Struct_1(var_0.a, 458f, !arg_1, ~(_wgslsmith_clamp_vec2_u32(var_0.a.xw, vec2<u32>(var_0.d.x, var_0.a.x), vec2<u32>(var_0.a.x, var_0.a.x)) << (firstLeadingBit(vec2<u32>(var_0.d.x, var_0.a.x)) % vec2<u32>(32u))), _wgslsmith_add_vec4_i32(-(~vec4<i32>(0i, -1i, var_0.e.x, var_0.e.x)), var_0.e)), var_0.a.x, var_0, ~_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 1i, 2843i), var_0.e.xyw));
    var var_3 = var_2.c.e.wx;
    let var_4 = vec4<bool>(any(!var_1), true, false, false);
    return _wgslsmith_clamp_u32(reverseBits(_wgslsmith_add_u32(var_0.a.x, _wgslsmith_add_u32(var_0.a.x, 37677u))) & ~73451u, _wgslsmith_add_u32(min(_wgslsmith_dot_vec3_u32(var_2.a.a.xwz, vec3<u32>(0u, 4294967295u, var_2.b)), countOneBits(4863u)), func_3(abs(var_2.a.a.zwx), _wgslsmith_div_i32(var_3.x, 46953i), vec2<u32>(5768u, var_2.b), _wgslsmith_dot_vec3_u32(var_0.a.zwz, vec3<u32>(4294967295u, var_2.c.d.x, var_2.b)))) >> (firstLeadingBit(var_0.a.x) % 32u), ~_wgslsmith_dot_vec3_u32(~(~var_0.a.wxx), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.d.x, 1u, var_2.c.a.x), var_0.a.wzz)));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: u32) -> vec2<bool> {
    var var_0 = max(vec3<u32>(countOneBits(arg_2) >> (7068u % 32u), ~abs(1u), _wgslsmith_add_u32(~arg_2, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(31504u, ~42587u, func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, 58327i), vec4<i32>(25781i, u_input.a, -1i, u_input.a)), false)), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_2, 7078u, arg_2) | vec3<u32>(arg_2, arg_2, 24372u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_2, arg_2), vec3<u32>(arg_2, arg_2, arg_2), vec3<u32>(4294967295u, 0u, 4294967295u)))));
    var var_1 = Struct_2(Struct_1(~reverseBits(~vec4<u32>(58873u, 4294967295u, 4294967295u, arg_2)), arg_0, arg_1.x, ~(vec2<u32>(var_0.x, 0u) ^ ~vec2<u32>(var_0.x, 0u)), vec4<i32>(0i, u_input.a, ~(~8965i), _wgslsmith_div_i32(~u_input.a, u_input.a))), _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(~arg_2), _wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_2, 31853u), ~arg_2), var_0.x), select(~_wgslsmith_sub_vec3_u32(vec3<u32>(3066u, 4294967295u, arg_2), vec3<u32>(60345u, 0u, 7528u)), vec3<u32>(var_0.x, 4756u, var_0.x) << (~vec3<u32>(var_0.x, 4294967295u, 0u) % vec3<u32>(32u)), arg_1)), Struct_1(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 4294967295u), 1u), var_0.x, _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(29582u, var_0.x)), var_0.x), 1009f, false, vec2<u32>(_wgslsmith_clamp_u32(var_0.x, 1u >> (arg_2 % 32u), 0u), select(31480u, _wgslsmith_dot_vec3_u32(vec3<u32>(47587u, var_0.x, arg_2), vec3<u32>(var_0.x, arg_2, 29869u)), all(arg_1.xx))), _wgslsmith_mult_vec4_i32(vec4<i32>(-45506i, -2147483647i, 0i, u_input.a), _wgslsmith_mod_vec4_i32(-vec4<i32>(-46899i, u_input.a, u_input.a, u_input.a), max(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 27350i))))), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(~min(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(u_input.a, -27905i, -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 2147483647i), vec3<i32>(2147483647i, -2147483647i, 2147483647i), vec3<i32>(u_input.a, 1i, u_input.a)) >> (vec3<u32>(0u, var_0.x, 1u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(vec3<i32>(max(-2147483647i, 28079i), ~u_input.a, 1i), vec3<i32>(firstTrailingBit(-6694i), u_input.a, 28780i))));
    let var_2 = Struct_3(!(7683u < _wgslsmith_mod_u32(var_0.x, ~arg_2)), var_1.c.e.zyw, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(0i, u_input.a), var_1.d.yy), i32(-1i) * -33154i), vec2<bool>(true, false));
    var_0 = _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(arg_2, var_1.c.a.x, firstTrailingBit(0u))), select(var_1.c.a.yxy, countOneBits(~vec3<u32>(var_0.x, var_0.x, arg_2)), arg_0 >= -529f)) & var_1.c.a.ywz;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2056f, -1206f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(floor(-280f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.b, var_1.a.b) + vec2<f32>(var_1.c.b, 1349f))))));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(all(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true))), countOneBits(vec3<i32>(~(-52448i), i32(-1i) * -14094i, _wgslsmith_add_i32(-16083i, u_input.a))), 0i, select(vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), !func_1(1000f, vec3<bool>(true, false, false), 0u))));
    let var_1 = Struct_2(Struct_1(abs(vec4<u32>(_wgslsmith_mult_u32(36866u, 30585u), ~0u, countOneBits(3567u), ~4294967295u)), _wgslsmith_f_op_f32(abs(1000f)), !(var_0.c >= _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, 2147483647i), vec3<i32>(0i, 2147483647i, u_input.a))), ~vec2<u32>(50231u, 1u), _wgslsmith_mult_vec4_i32(abs(firstTrailingBit(vec4<i32>(u_input.a, -3948i, u_input.a, var_0.b.x))), vec4<i32>(-15213i, max(-1i, -2147483647i), u_input.a, _wgslsmith_mod_i32(var_0.c, var_0.b.x)))), 94534u, Struct_1(reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(13152u, 0u, 8785u, 43513u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-712f - _wgslsmith_f_op_f32(abs(-968f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(177f)) + 135f)), true, ~vec2<u32>(1u, 4294967295u) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 47319u), vec2<u32>(1u, 82335u)), vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, u_input.a, -8379i, 0i) ^ _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 19877i, var_0.b.x, -38478i), vec4<i32>(1i, u_input.a, var_0.b.x, 44710i)), vec4<i32>(_wgslsmith_mod_i32(var_0.c, 82571i), -22945i, -3469i >> (0u % 32u), _wgslsmith_mod_i32(-2147483647i, -2147483647i)))), -vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0.b.x, -51121i), -1i, 1i), 1i, -var_0.c));
    var var_2 = var_1;
    let var_3 = var_1.c;
    let var_4 = select(var_1.a.e.zyz, vec3<i32>(var_3.e.x, abs(-u_input.a), ~reverseBits(~26147i)), true);
    var_2 = var_1;
    let var_5 = var_2.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.b, _wgslsmith_f_op_f32(abs(var_3.b)), 1830f, _wgslsmith_f_op_f32(floor(var_3.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1250f, var_1.c.b, var_3.b) + vec4<f32>(-1274f, var_2.a.b, -400f, 573f)) - vec4<f32>(var_2.a.b, -1078f, 1279f, -913f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.b - _wgslsmith_f_op_f32(floor(var_2.c.b))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1975f, _wgslsmith_f_op_f32(var_1.a.b - -1317f)) + var_1.a.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1334f, var_2.a.b, var_2.a.b), vec3<f32>(var_1.c.b, 2101f, var_1.c.b), var_0.a))))))), -57055i);
}

