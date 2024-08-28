struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(4294967295u, 0u, 13048u, 22133u), 1401f, -806f, -1319f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = Struct_1(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 26703u)), global0.a, firstTrailingBit(~global0.a)) << (~vec4<u32>(global0.a.x, global0.a.x, reverseBits(global0.a.x), ~0u) % vec4<u32>(32u)), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(667f + _wgslsmith_f_op_f32(-global0.d)) + _wgslsmith_f_op_f32(798f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(106f * -568f), _wgslsmith_f_op_f32(exp2(global0.c)), 4789u <= global0.a.x)))));
    let var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))) != global0.c);
    var var_1 = global0.a.yxy << (min(abs(abs(select(global0.a.zyw, vec3<u32>(global0.a.x, global0.a.x, global0.a.x), false))), select(vec3<u32>(global0.a.x, global0.a.x, 18502u) >> (global0.a.xyy % vec3<u32>(32u)), firstLeadingBit(~global0.a.xzy), !select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, true, var_0)))) % vec3<u32>(32u));
    let var_2 = global0.a.yxx;
    let var_3 = abs(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 11576i, -51470i, 1i), vec4<i32>(2147483647i, u_input.a.x, 0i, u_input.a.x))), ~vec3<i32>(2147483647i, 1i, 0i)), countOneBits(u_input.a.x)));
    return global0.b;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = arg_2;
    global0 = arg_1;
    global0 = Struct_1(arg_1.a, -309f, arg_1.c, _wgslsmith_f_op_f32(select(arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d)) - _wgslsmith_div_f32(-843f, _wgslsmith_div_f32(arg_1.b, global0.c))), !(var_0 && (645f < arg_1.c)))));
    var var_1 = Struct_1(vec4<u32>(arg_0, 1u, arg_1.a.x, global0.a.x), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(996f, -722f)), _wgslsmith_f_op_f32(global0.d - arg_1.d)))))), -490f);
    let var_2 = ~(~vec4<u32>(157494u, firstLeadingBit(~var_1.a.x), 1u, abs(_wgslsmith_dot_vec3_u32(arg_1.a.yxw, vec3<u32>(arg_0, 30053u, global0.a.x)))));
    return 1971f;
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(global0.a, global0.b, _wgslsmith_f_op_f32(func_2(countOneBits(66517u), Struct_1(~min(global0.a, vec4<u32>(global0.a.x, global0.a.x, 7409u, global0.a.x)), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c))), global0.c), global0.c > 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(-global0.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))));
    global0 = Struct_1(~global0.a, -1258f, global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1183f))) + _wgslsmith_f_op_f32(f32(-1f) * -496f)));
    var var_0 = Struct_3(45904u <= ~(~(~global0.a.x)));
    var_0 = Struct_3(true);
    var var_1 = Struct_3(true);
    return Struct_1(vec4<u32>(~global0.a.x, countOneBits(_wgslsmith_mult_u32(~global0.a.x, 0u)), global0.a.x, _wgslsmith_dot_vec2_u32(global0.a.zx, global0.a.xw)), global0.c, _wgslsmith_f_op_f32(576f * global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -799f), _wgslsmith_f_op_f32(-global0.d), !var_0.a)) - _wgslsmith_f_op_f32(-global0.c)) + global0.d));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<i32>) -> vec2<i32> {
    let var_0 = ~_wgslsmith_mod_u32(~1719u, _wgslsmith_dot_vec3_u32(global0.a.wyw, firstLeadingBit(vec3<u32>(arg_2.a.a.x, arg_2.a.a.x, 0u))) >> (arg_2.a.a.x % 32u));
    global0 = Struct_1(vec4<u32>(func_1().a.x, ~var_0, ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(global0.a, vec4<u32>(56942u, 4294967295u, arg_2.a.a.x, 1u)), vec4<u32>(arg_2.a.a.x, arg_2.a.a.x, 4294967295u, arg_2.a.a.x) & vec4<u32>(arg_2.a.a.x, 4214u, 0u, 51870u)), reverseBits(arg_2.a.a.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2005f)), _wgslsmith_div_f32(func_1().d, _wgslsmith_f_op_f32(step(-123f, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -243f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.d)) - -1224f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1124f + 447f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.a.b))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.b, global0.d, arg_2.a.c, global0.c))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.a.c, 1845f, -1901f, -814f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(172f, arg_2.a.c, 1175f, -406f)))))));
    global0 = Struct_1(arg_2.a.a, var_1.x, 265f, global0.c);
    global0 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(reverseBits(var_0), ~4294967295u), abs(_wgslsmith_sub_u32(4294967295u, 14817u)), var_0, abs(global0.a.x)), ~min(_wgslsmith_add_vec4_u32(arg_2.a.a, arg_2.a.a), vec4<u32>(arg_2.a.a.x, var_0, global0.a.x, 31680u))), 553f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-109f, arg_2.a.c)), _wgslsmith_f_op_f32(func_2(4294967295u, arg_2.a, true))) * arg_2.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d, arg_2.a.d))))));
    return vec2<i32>(reverseBits(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) << (var_0 % 32u), -(~arg_3.x))), countOneBits(7177i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1969f;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2382f);
    var_1 = 1370f;
    let var_2 = Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(global0.a, vec4<u32>(_wgslsmith_dot_vec3_u32(global0.a.wyz, vec3<u32>(45784u, 27634u, 0u)), 1u, global0.a.x, 10365u)), var_0, -1317f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(sign(904f)))))), ~func_4(Struct_3(true), vec3<bool>(true, true, true), Struct_2(func_1(), vec2<i32>(-1i, -1i)), ~vec2<i32>(u_input.a.x, u_input.a.x)));
    global0 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2.a.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-697f - global0.b))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1623f, var_0))))), -1i, ~u_input.a.x, vec3<i32>(u_input.a.x, func_4(Struct_3(false), vec3<bool>(true, true, true), var_2, func_4(Struct_3(false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), Struct_2(Struct_1(global0.a, 1136f, -1303f, -133f), vec2<i32>(u_input.a.x, 2147483647i)), min(vec2<i32>(u_input.a.x, -18781i), var_2.b))).x, var_2.b.x), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(0i, u_input.a.x, 22642i, var_2.b.x) ^ firstLeadingBit(vec4<i32>(-3461i, u_input.a.x, 0i, var_2.b.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.a.x), u_input.a.xzy, vec3<i32>(-2147483647i, 2147483647i, 8985i)), u_input.a.yyy), -2147483647i, 0i >> (var_2.a.a.x % 32u), ~(i32(-1i) * -27489i)), abs(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a) | -vec4<i32>(10222i, -1i, -1i, var_2.b.x))));
}

