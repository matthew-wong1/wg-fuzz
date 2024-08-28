struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(33973u, 44214u, 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<u32> {
    global0 = _wgslsmith_sub_vec3_u32(~(_wgslsmith_div_vec3_u32(abs(vec3<u32>(global0.x, global0.x, global0.x)), ~vec3<u32>(19356u, global0.x, 0u)) >> (((vec3<u32>(41416u, global0.x, 9666u) & vec3<u32>(global0.x, 4294967295u, 4294967295u)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, global0.x), vec3<u32>(global0.x, global0.x, global0.x)) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(abs(vec3<u32>(global0.x, global0.x, 9179u))), ~abs(vec3<u32>(0u, global0.x, 1u))), ~(max(vec3<u32>(1u, global0.x, 5814u), vec3<u32>(4294967295u, 4294967295u, global0.x)) >> (vec3<u32>(49685u, global0.x, global0.x) % vec3<u32>(32u))), ~max(vec3<u32>(4294967295u, global0.x, global0.x), ~vec3<u32>(global0.x, 4294967295u, global0.x))));
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a.x, u_input.b), u_input.c, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.b, 15967i, u_input.c), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, 2147483647i, 998i), vec4<i32>(u_input.a.x, 14276i, -2147483647i, -1i))), -30819i)), ~(-abs(-u_input.c)));
    let var_1 = Struct_1(-756f, (u_input.c << (abs(_wgslsmith_mult_u32(global0.x, global0.x)) % 32u)) >> (_wgslsmith_clamp_u32(1u, (global0.x ^ global0.x) << ((global0.x & 4294967295u) % 32u), 21612u) % 32u), min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.b, u_input.c, 15603i), max(vec4<i32>(-50407i, u_input.b, u_input.a.x, u_input.a.x), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.a.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x) ^ vec4<i32>(0i, 36012i, u_input.c, -22792i), vec4<i32>(u_input.a.x, u_input.b, -1i, u_input.c))) ^ vec4<i32>(u_input.c << (firstTrailingBit(30713u) % 32u), u_input.c, _wgslsmith_dot_vec2_i32(u_input.a.xz, -vec2<i32>(u_input.a.x, 1i)), 0i), vec3<f32>(660f, _wgslsmith_f_op_f32(f32(-1f) * -734f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-733f, 143f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(346f, 277f)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(267f, 1056f)), _wgslsmith_f_op_f32(f32(-1f) * -2122f), _wgslsmith_f_op_f32(step(-1000f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1013f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1021f, 1322f, -258f))))));
    var_0 = -2147483647i;
    var_0 = max(abs(_wgslsmith_add_i32(var_1.c.x, min(max(var_1.b, 5934i), 3923i))), ~var_1.c.x);
    return ~global0.zy;
}

fn func_2() -> u32 {
    global0 = vec3<u32>(10437u, _wgslsmith_dot_vec2_u32(~func_3(), global0.yy), 131380u);
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(723f))), 1i, firstLeadingBit(select(~vec4<i32>(u_input.a.x, 2147483647i, -1i, u_input.b), -vec4<i32>(u_input.b, 0i, -16295i, -2147483647i), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2202f, -2047f, -251f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-672f, -150f, -406f, 663f) - vec4<f32>(-1447f, -728f, 1000f, 1319f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(806f, 464f, -642f, 1000f) * vec4<f32>(-1000f, 739f, 1000f, -713f)))))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2066f), 1000f, -u_input.b != max(u_input.a.x, 0i))), ~(-11531i), abs(~reverseBits(vec4<i32>(u_input.a.x, u_input.b, 53364i, u_input.b))), vec3<f32>(-1873f, -369f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(598f + -1161f) + -446f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, _wgslsmith_div_f32(1767f, -1508f), -1048f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(581f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(select(-466f, var_0.a.d.x, false))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_f_op_f32(f32(-1f) * -205f))))))), ~u_input.b, var_0.a.c, vec3<f32>(var_0.a.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(489f - -1068f) + 1312f), 788f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1181f, 1517f, -1640f, var_0.a.d.x) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(116f, var_0.b.d.x, var_0.a.e.x, -1143f), vec4<f32>(1442f, var_0.b.e.x, var_0.b.a, var_0.b.a))))))));
    var_1 = var_0.b;
    let var_2 = ~(-vec4<i32>(-min(u_input.a.x, var_0.a.b), u_input.a.x, 1i, u_input.b));
    return abs(firstLeadingBit(~0u >> (global0.x % 32u)) | firstLeadingBit(_wgslsmith_mult_u32(~global0.x, global0.x)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -988f), arg_0.c.x, reverseBits(vec4<i32>(abs(-arg_0.b), -1i, select(u_input.b, arg_0.b, any(vec2<bool>(false, true))), _wgslsmith_sub_i32(arg_0.c.x, ~arg_0.c.x))), vec3<f32>(2719f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1204f, arg_0.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) * arg_0.e.x) * -425f)), _wgslsmith_div_vec4_f32(vec4<f32>(-120f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -442f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -652f) - _wgslsmith_f_op_f32(ceil(1078f)))), vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-600f * arg_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1010f * -490f) - -715f), _wgslsmith_f_op_f32(sign(-1601f)))));
    let var_2 = select(vec3<u32>(reverseBits(1u), ~(~61395u), _wgslsmith_add_u32(global0.x, _wgslsmith_mult_u32(global0.x, var_0))) << ((vec3<u32>(global0.x, ~global0.x, var_0 | var_0) ^ abs(vec3<u32>(global0.x, var_0, var_0))) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, 1u, global0.x) << (vec3<u32>(global0.x, global0.x, global0.x) % vec3<u32>(32u)), countOneBits(vec3<u32>(0u, 23985u, global0.x))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0, var_0, var_0), countOneBits(vec3<u32>(global0.x, 0u, 1u)), ~vec3<u32>(0u, 93904u, global0.x))), any(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<bool>(true, true), true)));
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(-69085i, abs(_wgslsmith_sub_i32(~var_1.b, abs(var_1.c.x))), _wgslsmith_mult_i32(max(_wgslsmith_div_i32(64961i, 36181i), _wgslsmith_mult_i32(-1i, var_1.b)), 1i)), var_1.c.zwx);
    global0 = select(var_2, _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(var_2, max(vec3<u32>(global0.x, var_0, global0.x), var_2 | vec3<u32>(4294967295u, 1u, 4294967295u))), min(~var_2, ~vec3<u32>(var_0, var_0, var_2.x))), any(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)))));
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    global0 = ~(~(~vec3<u32>(~global0.x, global0.x, 64809u)));
    global0 = vec3<u32>(~0u, ~_wgslsmith_mod_u32(~39696u, abs(global0.x)), global0.x) ^ max(~_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, global0.x, 1u), vec3<u32>(global0.x, 4294967295u, global0.x) >> (vec3<u32>(global0.x, 1u, 4294967295u) % vec3<u32>(32u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global0.x, global0.x), vec3<u32>(global0.x, global0.x, global0.x) & vec3<u32>(0u, global0.x, global0.x)));
    var var_0 = select(vec3<bool>(true, true, true), select(!vec3<bool>(any(vec4<bool>(false, true, false, false)), true, true), select(vec3<bool>(true, true, arg_1.b.d.x < 449f), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, all(vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), true)), all(vec4<bool>(~arg_0 == arg_0, 4294967295u > ~global0.x, false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false)))));
    let var_1 = select(firstTrailingBit(~min(vec4<u32>(38669u, global0.x, global0.x, global0.x), ~vec4<u32>(8607u, 1u, 1u, 64195u))), _wgslsmith_mult_vec4_u32(vec4<u32>(19422u, _wgslsmith_sub_u32(118817u >> (global0.x % 32u), 4294967295u << (global0.x % 32u)), 1u, _wgslsmith_add_u32(global0.x | 23721u, countOneBits(8178u))), countOneBits(_wgslsmith_mult_vec4_u32(select(vec4<u32>(11885u, 4294967295u, 1u, global0.x), vec4<u32>(78551u, 4294967295u, global0.x, global0.x), var_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(130420u, 4294967295u, global0.x, 0u), vec4<u32>(global0.x, global0.x, 0u, global0.x))))), vec4<bool>(false, true, !select(arg_1.b.a < arg_1.a.d.x, false, var_0.x), _wgslsmith_div_f32(arg_1.b.d.x, _wgslsmith_div_f32(arg_1.a.e.x, arg_1.b.a)) > arg_1.a.d.x));
    let var_2 = vec4<i32>(~(~(abs(1i) << (1u % 32u))), -28634i, arg_0, _wgslsmith_dot_vec4_i32(arg_1.b.c, arg_1.a.c));
    return func_1(Struct_1(_wgslsmith_f_op_f32(arg_1.b.d.x - func_1(func_1(Struct_1(648f, arg_1.b.b, var_2, arg_1.a.d, arg_1.a.e))).a), ~max(~1i, -var_2.x), _wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(var_2.x), 1i, select(var_2.x, -1i, var_0.x), -arg_0), _wgslsmith_mult_vec4_i32(arg_1.b.c | vec4<i32>(-55638i, 1i, var_2.x, -2147483647i), vec4<i32>(47468i, -700i, -13424i, arg_1.b.b) & vec4<i32>(-8706i, 0i, 2147483647i, var_2.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(378f, -225f, 841f) - _wgslsmith_f_op_vec3_f32(min(arg_1.a.e.yzy, vec3<f32>(arg_1.b.a, -1320f, arg_1.a.d.x)))))), vec4<f32>(1000f, 834f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.a.a)) * _wgslsmith_div_f32(arg_1.b.d.x, 1377f)), 1311f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -17210i;
    var var_1 = -u_input.a.xz;
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1694f, 543f) * 930f), 1964f), u_input.c, vec4<i32>(var_1.x, var_1.x, -(~0i), -2147483647i << (_wgslsmith_clamp_u32(global0.x, global0.x, 0u) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1074f, -173f, -509f) * vec3<f32>(-2061f, -1295f, 180f)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1341f, 120f, 201f) + vec3<f32>(-615f, -1566f, -1342f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-850f, 388f, -306f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -601f, -188f, -126f) * vec4<f32>(733f, -1141f, 1321f, -1310f))))), func_4(-u_input.b, Struct_2(func_1(Struct_1(1566f, -2147483647i, vec4<i32>(u_input.c, var_1.x, 0i, u_input.b), vec3<f32>(446f, 1000f, 583f), vec4<f32>(-967f, 154f, -100f, -1434f))), func_1(Struct_1(-1136f, 1i, vec4<i32>(0i, -16898i, -1i, 0i), vec3<f32>(-367f, 330f, -1861f), vec4<f32>(1378f, -117f, -1000f, 807f))))));
    let var_3 = -1337f;
    var var_4 = Struct_1(var_3, -_wgslsmith_add_i32(-_wgslsmith_sub_i32(var_1.x, var_1.x), u_input.c), -_wgslsmith_sub_vec4_i32(~vec4<i32>(10911i, 1i, -89398i, var_2.a.c.x), var_2.a.c) ^ (~func_1(var_2.a).c ^ var_2.b.c), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(func_4(u_input.b, Struct_2(var_2.a, Struct_1(var_2.a.e.x, u_input.b, var_2.b.c, vec3<f32>(var_2.b.a, var_3, var_3), var_2.b.e))).d)))), var_2.b.e);
    var_1 = _wgslsmith_clamp_vec2_i32(~func_1(Struct_1(var_3, 2147483647i, vec4<i32>(-1i, u_input.b, -1i, 0i), vec3<f32>(var_3, var_4.d.x, -106f), vec4<f32>(var_2.a.a, var_2.a.d.x, -513f, 504f))).c.yw, vec2<i32>(var_2.b.b, 2147483647i), var_2.a.c.yw) ^ select(abs(var_2.a.c.xy), vec2<i32>(var_2.b.b, -40196i), false);
    var_0 = 11402i;
    var var_5 = abs(vec3<u32>(67812u, 106562u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 33913u, global0.x, global0.x), vec4<u32>(global0.x, global0.x, 0u, 15225u)))) << (vec3<u32>(global0.x, 44685u, global0.x) % vec3<u32>(32u));
    var var_6 = abs(_wgslsmith_sub_u32(~var_5.x, min(~func_2(), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1591f))), var_3, var_2.b.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(506f, var_2.b.d.x, false)), _wgslsmith_f_op_f32(-1000f - var_3))))), reverseBits(vec3<u32>(global0.x, global0.x, _wgslsmith_sub_u32(~var_5.x, global0.x))), var_1.x, ~_wgslsmith_sub_vec3_u32(vec3<u32>(99495u, var_5.x, global0.x), min(reverseBits(vec3<u32>(4294967295u, var_5.x, global0.x)), vec3<u32>(var_5.x, global0.x, 78873u) | vec3<u32>(global0.x, var_5.x, var_5.x))), var_4.c.wyx);
}

