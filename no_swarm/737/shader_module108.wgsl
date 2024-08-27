struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2806f, global0.x, 254f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-160f, global0.x, global0.x), vec3<f32>(313f, global0.x, -1567f)))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, -302f, global0.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f - -1841f), _wgslsmith_f_op_f32(-global0.x), 203f))));
    let var_0 = select(firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 82384u), vec4<u32>(0u, 29431u, 4294967295u, 1u) & vec4<u32>(u_input.a, u_input.a, u_input.a, 37157u))), ~vec4<u32>(9071u, 29090u, ~45832u, ~u_input.a), select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), 1002f >= global0.x), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), _wgslsmith_f_op_f32(sign(global0.x)) <= _wgslsmith_f_op_f32(2078f - global0.x))) >> (~(~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 30357u, 0u, u_input.a), vec4<u32>(u_input.a, 62259u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, 48150u, 41835u, 4294967295u))) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-527f, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(889f, global0.x, 1119f) + vec3<f32>(global0.x, 854f, global0.x)))))));
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(922f, -554f, 1100f) - vec3<f32>(global0.x, -1638f, global0.x)), vec3<f32>(1737f, -795f, -939f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, -531f, global0.x), vec3<f32>(global0.x, global0.x, -2282f), vec3<bool>(false, false, false))))))));
    var var_1 = 1u;
    return global0.x;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 671f, -1151f) * arg_0))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1796f, -1563f)) + arg_0))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1046f, -816f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 104f, -1803f)))));
    var var_0 = ~16672u;
    global0 = _wgslsmith_f_op_vec3_f32(arg_0 + arg_0);
    let var_1 = _wgslsmith_mult_i32(-1i, firstTrailingBit(u_input.b.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-789f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(global0.x, -490f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1760f + arg_0.x) - 1348f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, global0.x, arg_1) - vec3<f32>(742f, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(441f, global0.x, -475f))))) + vec3<f32>(_wgslsmith_f_op_f32(global0.x - arg_1), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-global0.x))))));
    let var_1 = vec3<u32>(~1u, ~(~0u), ~u_input.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1489f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, arg_1)))), -1424f, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(949f, -1237f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, var_0))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_1)))), var_0, _wgslsmith_f_op_f32(func_2(vec3<f32>(global0.x, arg_1, global0.x))), arg_1), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1765f, var_0, 741f) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(191f, arg_1, global0.x, 917f), vec4<f32>(-285f, -238f, -725f, 622f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1183f, var_0, arg_1, 392f))))))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))))) + _wgslsmith_f_op_f32(arg_1 + -304f));
    let var_4 = u_input.b.zz;
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -497f), ~vec4<i32>(-_wgslsmith_div_i32(-2147483647i, -2147483647i), ~abs(-1i), -(-1i ^ var_4.x), ~(-1i)));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    var var_0 = vec3<f32>(-1196f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(floor(1803f)));
    var var_1 = arg_0.b.x;
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-852f, _wgslsmith_f_op_f32(max(var_0.x, 211f)), 1f));
    let var_2 = Struct_1(select(select(vec2<bool>(select(false, true, false), true), vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, false, true, false)))), vec2<bool>(true, true), false), !select(vec2<bool>(true, true), vec2<bool>(true, var_0.x >= -693f), true), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(71075u, 53510u, 46385u) >> (firstTrailingBit(vec3<u32>(1u, u_input.a, u_input.a)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(55739u, 608u, 9136u), vec3<u32>(u_input.a, 0u, 14887u)), firstTrailingBit(vec3<u32>(u_input.a, 9810u, 3212u)), _wgslsmith_mod_vec3_u32(vec3<u32>(7257u, 61386u, 1u), vec3<u32>(4294967295u, 1u, u_input.a)))), 28231u, max(u_input.a, 3679u)));
    var_1 = 0i;
    return func_1(vec3<i32>(~(-arg_0.b.x), arg_0.b.x, abs(u_input.b.x)), -1063f);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec3_f32(-arg_3);
    global0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)) - arg_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 234f)) * _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_1.x)), global0.x, true)) - 372f))));
    var var_0 = -53717i;
    var var_1 = !select(true, any(vec4<bool>(true, true, true, true)), !any(vec4<bool>(true, true, true, true)));
    let var_2 = ~vec4<u32>(((u_input.a >> (u_input.a % 32u)) << (abs(2894u) % 32u)) | ~u_input.a, u_input.a, 4294967295u, 66387u);
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.yyx))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_div_f32(global0.x, 1008f)), arg_3.x, global0.x)), arg_1.wyy, Struct_1(vec2<bool>(true, true), vec2<bool>(true, true), vec3<u32>(_wgslsmith_add_u32(~u_input.a, _wgslsmith_sub_u32(u_input.a, var_2.x)), var_2.x, _wgslsmith_mult_u32(~u_input.a, 27433u))), vec2<bool>(!(!all(vec3<bool>(false, false, true))), all(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -1i, u_input.b.x), u_input.b, vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)), global0.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, global0.x))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(295f, global0.x, false)))))), func_1(vec3<i32>(_wgslsmith_mult_i32(-1i, u_input.b.x), -1i, u_input.b.x & -30547i) >> (firstTrailingBit(vec3<u32>(1u, u_input.a, 1u)) % vec3<u32>(32u)), -511f).b.zy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(918f, 1034f, -409f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1312f, -1000f, 925f)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(532f - _wgslsmith_div_f32(global0.x, var_0.b.x)))), var_0.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(1065f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    global0 = var_0.b;
    var var_2 = _wgslsmith_add_vec2_u32(~abs(abs(var_0.c.c.yz) << ((vec2<u32>(17758u, 0u) >> (var_0.c.c.yz % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(var_0.c.c.xz, ~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(19495u, 84803u) >> (vec2<u32>(64335u, u_input.a) % vec2<u32>(32u)))));
    var var_3 = _wgslsmith_clamp_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(-6669i, u_input.b.x)), u_input.b.yy, vec2<i32>(5855i, 37879i) ^ u_input.b.xy), _wgslsmith_clamp_vec2_i32(-vec2<i32>(-61970i, -26226i), u_input.b.xy, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x))))), _wgslsmith_add_vec2_i32(min(abs(~u_input.b.zz), abs(u_input.b.yy) & vec2<i32>(22943i, u_input.b.x)), -u_input.b.yy), -vec2<i32>(u_input.b.x, _wgslsmith_div_i32(-1i, ~23930i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(select(59938i, -18775i, true), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 82337i, var_3.x), vec4<i32>(var_3.x, -3454i, 1i, u_input.b.x) ^ vec4<i32>(u_input.b.x, -22510i, -19063i, 7497i)))), _wgslsmith_f_op_vec2_f32(-var_1.zz), var_1.x, var_0.c.c);
}

