struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<bool> {
    global0 = select(vec4<bool>(true, true, !(!(arg_0.b >= u_input.a)), (_wgslsmith_f_op_f32(arg_1.x - arg_1.x) > arg_1.x) | (25029u == _wgslsmith_div_u32(u_input.a, 1u))), !select(select(!vec4<bool>(arg_0.a.x, false, global0.x, false), !vec4<bool>(false, false, arg_0.a.x, true), vec4<bool>(global0.x, arg_0.a.x, false, arg_0.a.x)), vec4<bool>(true, any(arg_0.a), arg_0.a.x, true), !all(vec4<bool>(false, global0.x, arg_0.a.x, global0.x))), false);
    global0 = select(vec4<bool>(arg_0.a.x, global0.x, !((arg_0.b >= u_input.a) | global0.x), arg_0.a.x), !select(!vec4<bool>(global0.x, global0.x, false, true), !vec4<bool>(false, true, arg_0.a.x, arg_0.a.x), !(!vec4<bool>(arg_0.a.x, true, global0.x, global0.x))), global0.x);
    global0 = select(select(!(!(!vec4<bool>(true, true, arg_0.a.x, global0.x))), !(!(!vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x))), any(vec2<bool>(true, true))), select(!(!vec4<bool>(global0.x, global0.x, true, global0.x)), select(!select(vec4<bool>(arg_0.a.x, true, global0.x, true), vec4<bool>(global0.x, true, arg_0.a.x, arg_0.a.x), vec4<bool>(true, false, global0.x, true)), vec4<bool>(global0.x, true, global0.x, all(vec2<bool>(true, arg_0.a.x))), vec4<bool>(global0.x != arg_0.a.x, false, any(arg_0.a), true)), any(vec3<bool>(true, arg_1.x > -448f, arg_0.a.x))), !(!select(!vec4<bool>(true, true, arg_0.a.x, true), select(vec4<bool>(global0.x, arg_0.a.x, true, true), vec4<bool>(true, global0.x, arg_0.a.x, arg_0.a.x), vec4<bool>(global0.x, true, global0.x, false)), select(vec4<bool>(global0.x, arg_0.a.x, false, false), vec4<bool>(true, true, true, false), global0.x))));
    let var_0 = Struct_1(global0.www, _wgslsmith_mod_u32(arg_0.b, ~(~4294967295u)));
    let var_1 = ~abs(~var_0.b);
    return vec4<bool>(false || global0.x, false, any(global0.yxx), true);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    global0 = !(!func_3(Struct_1(vec3<bool>(arg_1.c.a.x, false, arg_0.c.a.x), 6293u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1205f, -769f))));
    global0 = vec4<bool>(any(select(vec4<bool>(true, arg_1.c.a.x, all(vec3<bool>(true, arg_0.c.a.x, false)), select(arg_1.c.a.x, true, true)), select(select(vec4<bool>(true, arg_1.a.a.x, global0.x, arg_0.c.a.x), vec4<bool>(arg_1.a.a.x, false, false, false), vec4<bool>(true, false, false, arg_1.c.a.x)), vec4<bool>(global0.x, arg_1.c.a.x, true, false), select(vec4<bool>(arg_2.a.x, global0.x, true, arg_2.a.x), vec4<bool>(false, true, global0.x, false), arg_0.c.a.x)), func_3(Struct_1(vec3<bool>(global0.x, arg_1.a.a.x, true), arg_1.c.b), vec2<f32>(-1207f, 1229f)))), func_3(Struct_1(!(!arg_2.a), 12170u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1001f, -580f), vec2<f32>(121f, -401f)))))))).x, (12642u <= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 8102u, arg_1.a.b, 4294967295u), ~vec4<u32>(arg_2.b, 4294967295u, 0u, arg_2.b))) != true, arg_2.a.x);
    let var_0 = Struct_2(arg_2, arg_3.yzx, arg_2);
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(-1028f, _wgslsmith_f_op_f32(trunc(-520f))), _wgslsmith_f_op_f32(f32(-1f) * -929f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -918f), -350f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1205f, -274f, 2276f) + vec3<f32>(-325f, -639f, -272f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(952f, 1297f, 602f), vec3<f32>(-452f, -862f, 735f)), vec3<f32>(-363f, -1730f, -1123f))))))));
    var var_2 = var_0.b.yy;
    return Struct_1(func_3(Struct_1(!arg_1.a.a, abs(arg_2.b ^ 42975u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yy))).xzz, arg_0.c.b);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = ~arg_1;
    global0 = vec4<bool>(true, any(global0.xx), !(all(!vec4<bool>(true, global0.x, false, global0.x)) | any(vec3<bool>(true, true, arg_3.a.x))), !arg_3.a.x);
    global0 = vec4<bool>(true, true, true, true);
    return var_0.x == (var_0.x >> (~(~(0u & arg_3.b)) % 32u));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> Struct_1 {
    global0 = !(!vec4<bool>(false, func_4(vec3<i32>(arg_0, arg_0, arg_0) | vec3<i32>(2147483647i, -2147483647i, 28910i), vec4<i32>(-21077i, 18568i, 2147483647i, arg_0), arg_0, func_2(Struct_2(Struct_1(global0.xwz, u_input.a), vec3<i32>(arg_0, arg_0, arg_0), Struct_1(global0.zyy, u_input.a)), Struct_2(Struct_1(global0.wzw, 75860u), vec3<i32>(arg_0, 0i, 2147483647i), Struct_1(global0.www, u_input.a)), Struct_1(vec3<bool>(false, global0.x, global0.x), 4294967295u), vec4<i32>(39194i, 0i, -71398i, arg_0))), true, -583f == _wgslsmith_f_op_f32(round(868f))));
    var var_0 = func_2(Struct_2(Struct_1(global0.wzz, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, 1i, arg_0), min(vec3<i32>(28183i, 2147483647i, -10674i), vec3<i32>(-2147483647i, arg_0, arg_0))) & min(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, arg_0, arg_0), vec3<i32>(0i, arg_0, arg_0)), _wgslsmith_add_vec3_i32(vec3<i32>(11839i, -1i, arg_0), vec3<i32>(-29466i, -31012i, arg_0))), Struct_1(func_3(func_2(Struct_2(Struct_1(global0.xxw, u_input.a), vec3<i32>(arg_0, 1i, arg_0), Struct_1(global0.zwz, u_input.a)), Struct_2(Struct_1(global0.wzx, 4294967295u), vec3<i32>(arg_0, 2147483647i, arg_0), Struct_1(vec3<bool>(false, true, global0.x), u_input.a)), Struct_1(global0.xyy, u_input.a), vec4<i32>(arg_0, 2264i, 6832i, 4503i)), vec2<f32>(493f, 1000f)).zxw, 0u)), Struct_2(Struct_1(vec3<bool>(false, true, global0.x), _wgslsmith_mult_u32(u_input.a, ~60391u)), vec3<i32>(-arg_0, arg_0, firstLeadingBit(1i)) ^ -vec3<i32>(-46223i, 1i, arg_0), Struct_1(!vec3<bool>(global0.x, false, false), max(0u, u_input.a) >> (49355u % 32u))), func_2(Struct_2(func_2(Struct_2(Struct_1(global0.zyw, u_input.a), vec3<i32>(arg_0, 0i, 7158i), Struct_1(global0.yzx, u_input.a)), Struct_2(Struct_1(vec3<bool>(global0.x, global0.x, arg_1.x), u_input.a), vec3<i32>(arg_0, arg_0, 17800i), Struct_1(vec3<bool>(global0.x, true, true), 1u)), Struct_1(vec3<bool>(true, false, global0.x), u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_0, arg_0, arg_0), vec4<i32>(arg_0, arg_0, -1i, 28208i))), ~abs(vec3<i32>(22817i, -1i, arg_0)), func_2(Struct_2(Struct_1(global0.yxy, u_input.a), vec3<i32>(2147483647i, arg_0, arg_0), Struct_1(vec3<bool>(false, false, global0.x), u_input.a)), Struct_2(Struct_1(global0.xxz, u_input.a), vec3<i32>(arg_0, 2188i, 2147483647i), Struct_1(global0.wwx, u_input.a)), func_2(Struct_2(Struct_1(global0.xyy, 1u), vec3<i32>(-246i, 0i, 6271i), Struct_1(vec3<bool>(false, global0.x, false), 1u)), Struct_2(Struct_1(vec3<bool>(true, true, arg_1.x), u_input.a), vec3<i32>(-2147483647i, -27009i, 1i), Struct_1(vec3<bool>(global0.x, true, arg_1.x), u_input.a)), Struct_1(vec3<bool>(true, global0.x, false), u_input.a), vec4<i32>(2147483647i, -2993i, 57062i, arg_0)), _wgslsmith_div_vec4_i32(vec4<i32>(-10724i, 0i, arg_0, -9712i), vec4<i32>(1i, 17515i, arg_0, 1i)))), Struct_2(func_2(Struct_2(Struct_1(global0.wxw, 1u), vec3<i32>(-1i, arg_0, arg_0), Struct_1(global0.yxx, 4294967295u)), Struct_2(Struct_1(global0.yzy, u_input.a), vec3<i32>(17557i, -2147483647i, arg_0), Struct_1(global0.zzx, u_input.a)), Struct_1(vec3<bool>(global0.x, global0.x, false), 228u), firstLeadingBit(vec4<i32>(arg_0, -14296i, arg_0, -40408i))), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, -2147483647i, 2147483647i), vec3<i32>(arg_0, arg_0, arg_0))), Struct_1(!global0.xzw, 4294967295u)), Struct_1(!select(global0.yxz, vec3<bool>(false, global0.x, true), arg_1.x), u_input.a), vec4<i32>(arg_0, ~(-15362i ^ arg_0), ~max(24266i, 0i), ~(~(-1i)))), vec4<i32>(arg_0, 1i, 22230i, _wgslsmith_add_i32(1i, ~2451i >> (select(u_input.a, u_input.a, true) % 32u))));
    var var_1 = vec3<i32>(-43166i, -13106i, _wgslsmith_dot_vec4_i32(-(vec4<i32>(1i, arg_0, 1i, 1i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-52991i, arg_0, arg_0, arg_0), vec4<i32>(0i, -2147483647i, arg_0, arg_0))), abs(select(-vec4<i32>(15546i, 1i, 19021i, arg_0), -vec4<i32>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, false, true, true)))));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(~(vec4<i32>(-25487i, 0i, arg_0, -14557i) ^ vec4<i32>(1i, 48508i, var_1.x, arg_0)), ~(~vec4<i32>(var_1.x, 0i, arg_0, arg_0))), 18136i | countOneBits(var_1.x), arg_0), vec3<i32>(arg_0, countOneBits(-65371i), 0i));
    var var_3 = func_2(Struct_2(Struct_1(vec3<bool>(!global0.x, arg_1.x, !arg_1.x), 62949u), vec3<i32>(arg_0, _wgslsmith_add_i32(var_2, -29966i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 0i, var_1.x) ^ vec3<i32>(var_2, 25452i, 1i), ~vec3<i32>(var_2, 85190i, var_1.x))), Struct_1(var_0.a, ~select(4294967295u, u_input.a, var_0.a.x))), Struct_2(func_2(Struct_2(Struct_1(var_0.a, 1u), vec3<i32>(17515i, var_1.x, var_2), Struct_1(global0.xyx, u_input.a)), Struct_2(func_2(Struct_2(Struct_1(vec3<bool>(var_0.a.x, arg_1.x, var_0.a.x), var_0.b), vec3<i32>(-1628i, var_2, 1i), Struct_1(global0.wyw, 1u)), Struct_2(Struct_1(vec3<bool>(var_0.a.x, arg_1.x, true), u_input.a), vec3<i32>(54123i, var_2, var_2), Struct_1(global0.zyw, 4294967295u)), Struct_1(vec3<bool>(false, true, true), u_input.a), vec4<i32>(59947i, 9720i, var_2, -68901i)), vec3<i32>(arg_0, var_1.x, arg_0), Struct_1(global0.zwx, 1u)), Struct_1(vec3<bool>(false, var_0.a.x, global0.x), reverseBits(u_input.a)), vec4<i32>(firstTrailingBit(2147483647i), -1i, 0i, max(-95122i, -2147483647i))), -(~(vec3<i32>(-12270i, var_1.x, -1i) | vec3<i32>(-6193i, 1i, var_2))), func_2(Struct_2(Struct_1(global0.ywx, 4294967295u), vec3<i32>(var_2, var_1.x, var_1.x) >> (vec3<u32>(8691u, var_0.b, 46974u) % vec3<u32>(32u)), func_2(Struct_2(Struct_1(vec3<bool>(false, arg_1.x, false), var_0.b), vec3<i32>(-2147483647i, 0i, var_1.x), Struct_1(var_0.a, u_input.a)), Struct_2(Struct_1(vec3<bool>(var_0.a.x, true, false), 0u), vec3<i32>(arg_0, -8604i, var_1.x), Struct_1(vec3<bool>(global0.x, arg_1.x, arg_1.x), 1u)), Struct_1(var_0.a, var_0.b), vec4<i32>(-3806i, var_2, var_2, 40274i))), Struct_2(Struct_1(global0.wzx, u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(37240i, 2147483647i, 2147483647i), vec3<i32>(var_1.x, var_1.x, var_1.x)), Struct_1(vec3<bool>(false, false, var_0.a.x), u_input.a)), Struct_1(func_3(Struct_1(vec3<bool>(true, var_0.a.x, false), 25156u), vec2<f32>(390f, -694f)).yzz, u_input.a), vec4<i32>(~(-27320i), -61000i, -6226i, var_2))), Struct_1(global0.wxw, reverseBits(36559u) & select(73831u ^ u_input.a, ~25016u, false)), -vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_1.x, -16393i), select(var_2, arg_0, arg_1.x)), var_1.x, 1i, i32(-1i) * -2147483647i));
    return func_2(Struct_2(func_2(Struct_2(func_2(Struct_2(Struct_1(vec3<bool>(true, true, true), u_input.a), vec3<i32>(var_1.x, arg_0, var_1.x), Struct_1(var_0.a, var_0.b)), Struct_2(Struct_1(vec3<bool>(false, var_0.a.x, global0.x), 21725u), vec3<i32>(arg_0, 2147483647i, -2147483647i), Struct_1(vec3<bool>(global0.x, var_3.a.x, true), 53547u)), Struct_1(vec3<bool>(arg_1.x, true, true), var_3.b), vec4<i32>(var_1.x, -43039i, arg_0, -2147483647i)), vec3<i32>(var_1.x, 2147483647i, var_2), func_2(Struct_2(Struct_1(global0.yxz, 8203u), vec3<i32>(var_2, 0i, -2606i), Struct_1(var_0.a, u_input.a)), Struct_2(Struct_1(vec3<bool>(true, var_3.a.x, var_0.a.x), 4294967295u), vec3<i32>(-53629i, arg_0, var_1.x), Struct_1(vec3<bool>(var_0.a.x, var_3.a.x, var_3.a.x), var_0.b)), Struct_1(vec3<bool>(global0.x, false, false), 4294967295u), vec4<i32>(var_2, var_2, var_2, var_1.x))), Struct_2(func_2(Struct_2(Struct_1(var_3.a, 68512u), vec3<i32>(arg_0, 2147483647i, 1i), Struct_1(var_3.a, 33252u)), Struct_2(Struct_1(vec3<bool>(arg_1.x, true, false), 0u), vec3<i32>(var_1.x, arg_0, 0i), Struct_1(var_3.a, 71128u)), Struct_1(global0.yzw, 0u), vec4<i32>(var_2, var_2, -2147483647i, var_2)), ~vec3<i32>(arg_0, arg_0, var_1.x), func_2(Struct_2(Struct_1(vec3<bool>(true, global0.x, false), 4294967295u), vec3<i32>(var_2, -2147483647i, 11981i), Struct_1(vec3<bool>(var_3.a.x, true, var_3.a.x), u_input.a)), Struct_2(Struct_1(vec3<bool>(global0.x, true, var_0.a.x), 11200u), vec3<i32>(arg_0, var_2, 1i), Struct_1(global0.wxw, 20630u)), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, true), var_3.b), vec4<i32>(-2147483647i, var_1.x, arg_0, 15514i))), func_2(Struct_2(Struct_1(vec3<bool>(arg_1.x, arg_1.x, var_3.a.x), 62956u), vec3<i32>(var_2, 23626i, arg_0), Struct_1(vec3<bool>(true, true, global0.x), u_input.a)), Struct_2(Struct_1(vec3<bool>(var_3.a.x, global0.x, true), u_input.a), vec3<i32>(var_2, 21081i, 8127i), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, arg_1.x), 0u)), func_2(Struct_2(Struct_1(var_3.a, var_0.b), vec3<i32>(var_1.x, -21602i, -28655i), Struct_1(var_0.a, 0u)), Struct_2(Struct_1(vec3<bool>(true, false, var_0.a.x), var_0.b), vec3<i32>(0i, 20578i, 51623i), Struct_1(vec3<bool>(arg_1.x, true, false), var_0.b)), Struct_1(var_0.a, 92103u), vec4<i32>(var_2, -2147483647i, 10332i, 0i)), vec4<i32>(2147483647i, 2147483647i, arg_0, arg_0) ^ vec4<i32>(arg_0, 20923i, arg_0, -44198i)), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(arg_0, var_1.x, var_1.x, var_1.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, 0i, var_2, -37435i), vec4<i32>(-2147483647i, var_2, -1i, -3221i), vec4<i32>(arg_0, 14172i, var_2, var_2)))), _wgslsmith_mod_vec3_i32((vec3<i32>(arg_0, 0i, 23663i) & vec3<i32>(var_1.x, arg_0, 0i)) & firstLeadingBit(vec3<i32>(arg_0, -9104i, 0i)), ~firstTrailingBit(vec3<i32>(arg_0, arg_0, var_1.x))), Struct_1(func_2(Struct_2(Struct_1(vec3<bool>(global0.x, false, var_0.a.x), 35427u), vec3<i32>(-4845i, arg_0, var_2), Struct_1(var_3.a, 14056u)), Struct_2(Struct_1(vec3<bool>(global0.x, false, false), u_input.a), vec3<i32>(var_1.x, arg_0, arg_0), Struct_1(var_0.a, 18591u)), func_2(Struct_2(Struct_1(var_0.a, 1u), vec3<i32>(arg_0, 6126i, -50969i), Struct_1(vec3<bool>(true, global0.x, true), 4294967295u)), Struct_2(Struct_1(vec3<bool>(var_3.a.x, true, var_3.a.x), var_0.b), vec3<i32>(-66187i, var_2, 0i), Struct_1(var_3.a, 4294967295u)), Struct_1(var_3.a, var_3.b), vec4<i32>(var_1.x, -3939i, var_2, 52407i)), vec4<i32>(var_2, var_2, 34816i, var_2)).a, ~var_3.b)), Struct_2(Struct_1(vec3<bool>(global0.x, u_input.a != u_input.a, true), u_input.a), vec3<i32>(firstTrailingBit(1i), var_1.x, ~reverseBits(arg_0)), Struct_1(vec3<bool>(true == arg_1.x, true, true), u_input.a)), func_2(Struct_2(Struct_1(!var_3.a, 0u), reverseBits(vec3<i32>(var_1.x, var_1.x, 0i)), Struct_1(select(vec3<bool>(var_0.a.x, true, var_3.a.x), vec3<bool>(global0.x, false, var_3.a.x), global0.x), ~var_3.b)), Struct_2(Struct_1(!var_0.a, _wgslsmith_add_u32(var_0.b, 6109u)), _wgslsmith_div_vec3_i32(vec3<i32>(-20821i, 2147483647i, var_1.x), -vec3<i32>(38897i, var_1.x, -21569i)), func_2(Struct_2(Struct_1(var_0.a, 4294967295u), vec3<i32>(37025i, 16686i, var_2), Struct_1(vec3<bool>(true, true, var_3.a.x), 0u)), Struct_2(Struct_1(global0.xyx, 0u), vec3<i32>(-1i, arg_0, var_1.x), Struct_1(vec3<bool>(var_0.a.x, global0.x, var_0.a.x), 28399u)), func_2(Struct_2(Struct_1(global0.xxx, var_0.b), vec3<i32>(35112i, arg_0, -50748i), Struct_1(vec3<bool>(arg_1.x, false, true), 4294967295u)), Struct_2(Struct_1(vec3<bool>(true, var_0.a.x, false), u_input.a), vec3<i32>(19400i, 1i, -18781i), Struct_1(vec3<bool>(false, arg_1.x, true), 0u)), Struct_1(vec3<bool>(var_0.a.x, arg_1.x, true), 40959u), vec4<i32>(1105i, var_2, var_2, -1i)), vec4<i32>(arg_0, 2147483647i, var_2, -2147483647i))), func_2(Struct_2(func_2(Struct_2(Struct_1(vec3<bool>(true, arg_1.x, var_3.a.x), 0u), vec3<i32>(-1i, 1i, 15599i), Struct_1(vec3<bool>(var_3.a.x, true, global0.x), var_0.b)), Struct_2(Struct_1(var_0.a, 58791u), vec3<i32>(arg_0, var_1.x, var_1.x), Struct_1(vec3<bool>(false, global0.x, global0.x), var_3.b)), Struct_1(global0.xxx, u_input.a), vec4<i32>(arg_0, var_1.x, var_2, arg_0)), -vec3<i32>(arg_0, 98i, -1i), Struct_1(global0.xyx, 1u)), Struct_2(Struct_1(vec3<bool>(arg_1.x, global0.x, global0.x), 1u), vec3<i32>(0i, 23089i, arg_0), Struct_1(var_3.a, var_3.b)), func_2(Struct_2(Struct_1(vec3<bool>(true, true, true), var_3.b), vec3<i32>(-19335i, 1i, 13856i), Struct_1(vec3<bool>(false, false, true), 65118u)), Struct_2(Struct_1(vec3<bool>(true, true, true), var_3.b), vec3<i32>(var_2, var_2, -1i), Struct_1(var_3.a, 4526u)), func_2(Struct_2(Struct_1(vec3<bool>(false, false, true), 6291u), vec3<i32>(arg_0, 0i, var_1.x), Struct_1(vec3<bool>(arg_1.x, true, false), var_0.b)), Struct_2(Struct_1(var_3.a, u_input.a), vec3<i32>(31621i, arg_0, var_1.x), Struct_1(vec3<bool>(true, var_3.a.x, arg_1.x), 44040u)), Struct_1(vec3<bool>(true, true, false), var_0.b), vec4<i32>(-19622i, var_1.x, 2147483647i, var_2)), vec4<i32>(var_2, 0i, 25503i, -8066i)), ~vec4<i32>(23393i, arg_0, arg_0, var_2)), vec4<i32>(countOneBits(-var_2), 0i, -2147483647i, var_1.x)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(0i, arg_0, 42817i, var_1.x)) ^ ~select(vec4<i32>(2147483647i, -25583i, 4998i, var_2), vec4<i32>(0i, 0i, 16649i, 2147483647i), vec4<bool>(true, global0.x, true, false)), -(~abs(vec4<i32>(0i, var_1.x, 1i, -4488i)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<bool> {
    let var_0 = arg_1;
    let var_1 = arg_2;
    var var_2 = func_1(firstLeadingBit(min(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(50804i, 26289i, -24126i, 2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)), ~_wgslsmith_sub_i32(-2147483647i, 0i))), !func_1(firstLeadingBit(i32(-1i) * -4547i), select(!vec2<bool>(false, arg_1), vec2<bool>(var_0, arg_1), false)).a.yx);
    global0 = !arg_3;
    var var_3 = func_3(func_2(Struct_2(func_2(Struct_2(Struct_1(arg_3.wwz, arg_2.b), vec3<i32>(-20340i, -1i, 10039i), arg_2), Struct_2(Struct_1(vec3<bool>(true, arg_1, true), 1u), vec3<i32>(-1i, 0i, 1i), arg_2), var_1, vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)), func_2(Struct_2(var_1, vec3<i32>(1i, 93171i, 2147483647i), Struct_1(arg_2.a, 4294967295u)), Struct_2(arg_2, vec3<i32>(-14367i, 32863i, 25569i), arg_2), Struct_1(var_2.a, 57693u), vec4<i32>(-20564i, -1i, 65240i, 1i))), Struct_2(func_2(Struct_2(Struct_1(global0.yww, 1u), vec3<i32>(-1i, 0i, -2147483647i), arg_2), Struct_2(Struct_1(vec3<bool>(var_2.a.x, arg_1, var_1.a.x), var_2.b), vec3<i32>(-2147483647i, -1i, 2147483647i), var_1), var_1, ~vec4<i32>(30685i, 1i, 0i, -6506i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, -14204i, -1i), -vec3<i32>(-16549i, -2316i, 2147483647i)), func_1(i32(-1i) * -1i, vec2<bool>(true, true))), Struct_1(!(!var_2.a), var_1.b << (~arg_2.b % 32u)), vec4<i32>(1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(-47551i, -19253i), 22451i), firstTrailingBit(0i), i32(-1i) * -547i)), arg_0);
    return !arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(abs(~(~_wgslsmith_add_u32(u_input.a, 1u))), firstLeadingBit(_wgslsmith_dot_vec4_u32(firstTrailingBit(max(vec4<u32>(54912u, 4294967295u, u_input.a, 31125u), vec4<u32>(4294967295u, 4294967295u, u_input.a, 1u))), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(63168u, u_input.a, 4294967295u, 4294967295u)), select(vec4<u32>(u_input.a, 1u, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, 1u, 1u), global0.x)))), u_input.a, ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, u_input.a), ~u_input.a), 13777u));
    global0 = !(!select(vec4<bool>(global0.x, true, true, global0.x), func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-171f, -1939f) + vec2<f32>(547f, -1315f)), false, func_1(-1265i, vec2<bool>(global0.x, false)), !vec4<bool>(global0.x, global0.x, global0.x, true)), vec4<bool>(!global0.x, false, global0.x, !global0.x)));
    var var_1 = vec3<u32>(_wgslsmith_div_u32(0u, u_input.a | _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0, vec4<u32>(var_0.x, 96497u, 0u, u_input.a), vec4<u32>(u_input.a, 4294967295u, var_0.x, var_0.x)), reverseBits(var_0))), _wgslsmith_sub_u32(~(~(~0u)), u_input.a), 0u);
    var var_2 = Struct_1(!(!(!global0.xww)), ~4294967295u);
    var var_3 = _wgslsmith_add_u32(~var_1.x, ~firstTrailingBit(~var_1.x)) ^ _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.b, var_0.x), vec2<u32>(var_0.x, var_1.x), vec2<u32>(4294967295u, 67107u)), vec2<u32>(max(0u, var_1.x), var_1.x)), _wgslsmith_clamp_u32(firstLeadingBit(u_input.a), ~var_0.x, countOneBits(var_0.x)) >> (_wgslsmith_mod_u32(u_input.a, 4294967295u << (u_input.a % 32u)) % 32u));
    var var_4 = true;
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(910f, 1504f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(191f, -2286f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1440f, 160f) + vec2<f32>(340f, 1000f)))), global0.wz)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-705f * 574f), 1448f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~83033u | _wgslsmith_add_u32(u_input.a, var_2.b), 1u) | (~(~var_1.xy) ^ vec2<u32>(countOneBits(4294967295u), _wgslsmith_mult_u32(var_2.b, var_0.x))), ~(-7312i ^ _wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, -30790i), -1i, ~16872i)), vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(7596i, -6721i, -2147483647i), select(vec3<i32>(0i, 0i, -1i), vec3<i32>(3675i, 0i, 0i), vec3<bool>(var_2.a.x, true, true))), max(select(-23960i, 0i, false), -1i), _wgslsmith_add_i32(reverseBits(-1i), 1i), -1i >> (1u % 32u)) ^ abs(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -2147483647i, 34125i, -18809i)));
}

