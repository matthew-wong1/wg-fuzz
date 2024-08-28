struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<f32> = vec3<f32>(-1634f, 581f, -448f);

var<private> global2: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> f32 {
    let var_0 = vec2<u32>(_wgslsmith_add_u32(select(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 31397u), vec2<u32>(4294967295u, u_input.b.x)), 1u, select(global2.a == -1970f, true, true)), ~(13887u >> (u_input.b.x % 32u))), 4294967295u & _wgslsmith_add_u32(u_input.b.x, 20134u));
    let var_1 = ~select(select(~(~vec3<u32>(var_0.x, 1u, 0u)), vec3<u32>(~var_0.x, 50613u, u_input.b.x & 0u), true), vec3<u32>(var_0.x ^ 9482u, ~u_input.b.x, 38837u) | vec3<u32>(u_input.b.x, 19650u & var_0.x, _wgslsmith_add_u32(0u, u_input.b.x)), false);
    var var_2 = Struct_3(var_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-268f, 1311f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)) - arg_1.a) * 409f))), min(1u, min(~u_input.b.x, reverseBits(16550u)) & _wgslsmith_mod_u32(4294967295u, var_1.x & 72185u)));
    global2 = Struct_2(486f);
    let var_3 = _wgslsmith_f_op_f32(-global1.x);
    return global2.a;
}

fn func_2() -> f32 {
    global0 = true;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))));
    global2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.a, _wgslsmith_f_op_f32(func_3(var_0, var_0, vec4<f32>(-1142f, 877f, 1769f, -1159f))))) + 101f)));
    var var_1 = vec3<bool>(any(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))), false, select(_wgslsmith_div_u32(~18509u, ~28000u), u_input.b.x, ~u_input.a == max(u_input.a, -2147483647i)) == ~abs(~4294967295u));
    let var_2 = reverseBits(_wgslsmith_add_i32(-21818i, _wgslsmith_div_i32(firstTrailingBit(-1i), -49619i)));
    return var_0.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = -2913i;
    global2 = Struct_2(_wgslsmith_f_op_f32(func_2()));
    global0 = true;
    let var_1 = u_input.b.x << (4294967295u % 32u);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(max(-1471f, 850f))), 1f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - 391f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-406f - global2.a) + _wgslsmith_f_op_f32(global1.x - -1387f)), true)), global2.a, -569f), vec3<bool>(_wgslsmith_clamp_i32(countOneBits(1i), arg_2, min(u_input.a, arg_2)) >= -(~15158i), true, -(~arg_1.x) == _wgslsmith_clamp_i32(arg_1.x << (u_input.b.x % 32u), 54260i, -48620i))));
    return Struct_1(_wgslsmith_f_op_f32(select(-201f, -319f, any(vec2<bool>(true, true)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), global1.x, !select(true, all(vec2<bool>(false, true)), true))));
    let var_1 = -1000f;
    let var_2 = ~(~_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, arg_2, 34645u, 802u), vec4<u32>(1u, 1u, 4294967295u, 16879u)), ~select(vec4<u32>(arg_2, arg_2, 4294967295u, 4294967295u), vec4<u32>(arg_2, u_input.b.x, arg_2, 0u), true)));
    let var_3 = vec3<bool>(true, true, true);
    var var_4 = arg_3.a;
    return Struct_3(~vec3<u32>(1u, u_input.b.x, select(var_2, 1u, var_3.x) | ~var_2), _wgslsmith_f_op_f32(sign(arg_3.a)), _wgslsmith_add_u32(_wgslsmith_div_u32(57706u, _wgslsmith_mod_u32(u_input.b.x, 56220u)), _wgslsmith_add_u32(1u, 61145u)));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), global2.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(2283f, arg_0.b, 671f) - vec3<f32>(global1.x, -1000f, 292f)), vec3<f32>(-1113f, 1166f, arg_0.b), false)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(766f, 915f, -851f))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)))))));
    let var_0 = arg_0;
    var var_1 = max(vec4<u32>(42709u, _wgslsmith_div_u32(arg_0.c, _wgslsmith_div_u32(max(0u, arg_0.a.x), 10398u)), var_0.c, var_0.a.x), vec4<u32>(8754u, ~_wgslsmith_mod_u32(var_0.a.x, var_0.c), ~func_4(vec4<i32>(u_input.a, u_input.a, 15215i, u_input.a), Struct_1(global2.a), 4294967295u, Struct_1(177f)).c, abs(reverseBits(u_input.b.x))) & ~_wgslsmith_mult_vec4_u32(select(vec4<u32>(25989u, 0u, u_input.b.x, 28306u), vec4<u32>(4294967295u, 36449u, var_0.a.x, var_0.a.x), true), vec4<u32>(4294967295u, 40151u, arg_0.a.x, arg_0.c)));
    var var_2 = reverseBits(reverseBits(-_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(0i, -22664i, -1i, 1i)), vec4<i32>(44751i, u_input.a, u_input.a, u_input.a))));
    var var_3 = -14020i;
    return Struct_2(-2013f);
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = all(arg_0);
    var var_1 = max(max(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(77265u, 15582u, u_input.b.x))), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), vec3<u32>(1u, min(~30814u, abs(1u)), u_input.b.x)) & (abs(vec3<u32>(abs(u_input.b.x), u_input.b.x, 1u)) >> (~vec3<u32>(0u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)));
    global2 = arg_1;
    var_0 = !(!select(false, 1576i >= u_input.a, arg_0.x) || (any(arg_0.xyy) | true));
    let var_2 = true;
    return Struct_2(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-930f + global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1.x);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-113f)))));
    global2 = func_6(!(!vec4<bool>(true, true, true, select(false, true, true))), func_5(func_4(vec4<i32>(1i, select(u_input.a, 1i, false), -5500i, _wgslsmith_sub_i32(-40564i, u_input.a)), func_1(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(u_input.a, -2147483647i, 25434i), _wgslsmith_add_i32(-63743i, u_input.a)), ~4294967295u, Struct_1(_wgslsmith_div_f32(var_1.a, -530f)))));
    var var_2 = _wgslsmith_clamp_i32(-u_input.a, -1i, _wgslsmith_div_i32(abs(_wgslsmith_mod_i32(-2147483647i, 5253i) >> ((u_input.b.x >> (104061u % 32u)) % 32u)), u_input.a));
    let var_3 = vec4<u32>(u_input.b.x, abs(1u), ~u_input.b.x, 47503u) >> (vec4<u32>(_wgslsmith_mult_u32(~27872u & (1u << (u_input.b.x % 32u)), u_input.b.x), u_input.b.x, ~(~32672u), reverseBits(u_input.b.x)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

