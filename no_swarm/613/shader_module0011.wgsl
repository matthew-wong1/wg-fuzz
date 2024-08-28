struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
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

var<private> global0: Struct_1;

var<private> global1: array<u32, 25>;

var<private> global2: array<vec4<f32>, 32>;

var<private> global3: vec2<u32>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<f32>, arg_3: bool) -> i32 {
    let var_0 = Struct_1(15123u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(888f, arg_2.x, 1086f, 477f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(global0.b, vec4<f32>(arg_2.x, global4.b.x, global0.b.x, 196f)))))), abs(~global0.c), ~(~vec2<u32>(global1[_wgslsmith_index_u32(global0.d.x, 25u)], u_input.a) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(global4.a, global1[_wgslsmith_index_u32(1u, 25u)]), ~global4.d, countOneBits(vec2<u32>(global0.a, global3.x))) % vec2<u32>(32u))));
    var var_1 = var_0;
    var var_2 = ~_wgslsmith_sub_vec2_i32(var_0.c, var_0.c | abs(vec2<i32>(global4.c.x, var_0.c.x)));
    global4 = var_0;
    var var_3 = var_0;
    return var_3.c.x;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: i32, arg_3: u32) -> bool {
    var var_0 = Struct_1(~global3.x, global2[_wgslsmith_index_u32(min(~4294967295u, global1[_wgslsmith_index_u32(arg_3, 25u)]), 32u)], vec2<i32>(0i, -func_3(true, -46760i, _wgslsmith_f_op_vec3_f32(max(global4.b.yzx, global0.b.xxx)), true)), _wgslsmith_div_vec2_u32(~firstLeadingBit(vec2<u32>(u_input.d, 56402u)), global4.d));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1130f)));
    global0 = Struct_1(18918u, _wgslsmith_f_op_vec4_f32(-global4.b), u_input.b, select(_wgslsmith_mult_vec2_u32(~global4.d, ~(~vec2<u32>(var_0.a, 4294967295u))), ~global0.d, !(!select(vec2<bool>(false, false), vec2<bool>(false, true), true))));
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(max(vec3<u32>(min(16631u, 1u), ~global1[_wgslsmith_index_u32(0u, 25u)], 1u), vec3<u32>(global4.a, global3.x, global1[_wgslsmith_index_u32(10162u, 25u)]) | ~vec3<u32>(28349u, 53831u, arg_3)), max(~countOneBits(vec3<u32>(arg_3, 4294967295u, global4.d.x)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(global4.a, global1[_wgslsmith_index_u32(global0.d.x, 25u)], u_input.a), reverseBits(vec3<u32>(arg_3, var_0.d.x, 0u)), reverseBits(vec3<u32>(var_0.d.x, 18626u, global1[_wgslsmith_index_u32(1u, 25u)]))))), ~vec3<u32>(4294967295u, global3.x, countOneBits(_wgslsmith_sub_u32(global4.d.x, 4296u))));
    return select(abs(u_input.b.x), global4.c.x | ~_wgslsmith_mult_i32(-1i, -8933i), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))))) <= (u_input.b.x >> (global1[_wgslsmith_index_u32(global3.x, 25u)] % 32u));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = countOneBits(_wgslsmith_sub_vec4_u32(min(~select(vec4<u32>(u_input.a, 61305u, 0u, 1u), vec4<u32>(global1[_wgslsmith_index_u32(global0.a, 25u)], 100645u, 4294967295u, 0u), false), ~(~vec4<u32>(arg_2.a, 1u, 57137u, 58936u))), vec4<u32>(_wgslsmith_add_u32(33967u, 70501u), _wgslsmith_clamp_u32(26913u, 209u, 5245u), ~global3.x, global4.d.x) & firstTrailingBit(~vec4<u32>(u_input.d, 4294967295u, 0u, u_input.d))));
    global2 = array<vec4<f32>, 32>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4.b.x - -1243f), _wgslsmith_div_f32(global4.b.x, global0.b.x))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.b.x))), _wgslsmith_f_op_f32(-global4.b.x), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b.x) * _wgslsmith_div_f32(877f, -711f)))) - -314f));
    global0 = Struct_1(1u, vec4<f32>(-1034f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(314f - global4.b.x) - _wgslsmith_f_op_f32(floor(global0.b.x))), -1152f, 2438f), (countOneBits(vec2<i32>(19273i, global0.c.x)) ^ vec2<i32>(~global4.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-17935i, -29488i, 15067i, -1501i), vec4<i32>(1i, global4.c.x, u_input.b.x, global0.c.x)))) ^ vec2<i32>(-9047i, ~_wgslsmith_sub_i32(global0.c.x, global4.c.x)), ~countOneBits(~(vec2<u32>(4742u, global4.a) & vec2<u32>(global1[_wgslsmith_index_u32(57672u, 25u)], arg_0))));
    var_0 = ~vec4<u32>(global3.x, _wgslsmith_dot_vec2_u32(select(vec2<u32>(4503u, global3.x), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(var_0.x, arg_2.d.x)), u_input.d < 4294967295u), vec2<u32>(4294967295u, arg_0 | 5771u)), arg_2.a << (var_0.x % 32u), _wgslsmith_div_u32(45174u, 4294967295u) | firstLeadingBit(global3.x));
    return arg_2;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-653f, _wgslsmith_f_op_f32(max(477f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1081f))))))), 1000f, false));
    let var_1 = global0.c.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.x * global4.b.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-797f * global4.b.x))))));
    global1 = array<u32, 25>();
    let var_2 = func_4(24927u, func_2(_wgslsmith_f_op_f32(sign(-551f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -516f), global4.b.x), -1i, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(68606u, 25u)], 57052u) << (countOneBits(1u) % 32u)) & (true || all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), Struct_1(global1[_wgslsmith_index_u32((~1u & (global4.a >> (global1[_wgslsmith_index_u32(global3.x, 25u)] % 32u))) >> (u_input.a % 32u), 25u)], _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-589f, 851f, 366f, 1000f) * _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(global0.d.x, 32u)] + vec4<f32>(global0.b.x, global4.b.x, global0.b.x, global0.b.x))))), min(_wgslsmith_mod_vec2_i32(global0.c << (vec2<u32>(global4.a, global1[_wgslsmith_index_u32(44499u, 25u)]) % vec2<u32>(32u)), -global4.c), _wgslsmith_add_vec2_i32(min(vec2<i32>(-29074i, global0.c.x), vec2<i32>(global0.c.x, 26683i)), -global0.c)), ~abs(vec2<u32>(u_input.d, 66879u))));
    return 25519u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, 4294967295u), func_1()) ^ 73994u, min(~global1[_wgslsmith_index_u32(0u >> (global1[_wgslsmith_index_u32(2368u, 25u)] % 32u), 25u)], global4.d.x));
    global4 = func_4(select(_wgslsmith_add_u32(countOneBits(2568u), 43759u), ~(4294967295u ^ global3.x), false) ^ ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 0u, 65232u, 0u), vec4<u32>(global0.d.x, 4247u, global1[_wgslsmith_index_u32(global0.a, 25u)], 2211u)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(func_1(), 25u)], 25u)]), false, Struct_1(~global0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b.x, global4.b.x, false))), _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(global0.b.x * -2163f)), -660f, _wgslsmith_f_op_f32(-1543f - -503f)), ~vec2<i32>(func_4(global0.a, false, Struct_1(4294967295u, global0.b, global4.c, vec2<u32>(global3.x, 12448u))).c.x, global0.c.x << (1u % 32u)), _wgslsmith_div_vec2_u32(global0.d, ~_wgslsmith_mod_vec2_u32(global4.d, vec2<u32>(82962u, global3.x)))));
    let var_0 = func_4(17358u, any(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true))), Struct_1(func_1(), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(global0.b.x, -923f, true)), _wgslsmith_f_op_f32(step(global4.b.x, -641f)), _wgslsmith_f_op_f32(abs(global0.b.x)), _wgslsmith_f_op_f32(abs(1027f))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.b.x, 1105f, global4.b.x, 434f), global2[_wgslsmith_index_u32(32859u, 32u)], vec4<bool>(false, true, false, true))), global0.b))), global4.c, firstTrailingBit(_wgslsmith_add_vec2_u32(global0.d, vec2<u32>(1u, 52254u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_4(_wgslsmith_div_u32(global4.a, global0.a), all(vec2<bool>(false, false)), func_4(4294967295u, false, var_0)).b)));
    global1 = array<u32, 25>();
    let var_2 = var_0;
    let var_3 = ~(~0i);
    global1 = array<u32, 25>();
    let var_4 = Struct_1(~var_0.d.x, global4.b, ~vec2<i32>(var_0.c.x, select(global4.c.x, 3113i, false)) >> ((vec2<u32>(global4.a, reverseBits(27939u)) >> (vec2<u32>(reverseBits(var_0.a), _wgslsmith_dot_vec2_u32(var_2.d, global4.d)) % vec2<u32>(32u))) % vec2<u32>(32u)), max(select(vec2<u32>(var_0.a, 0u), func_4(1u, true, var_0).d, vec2<bool>(true, true)), vec2<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(116949u, 12271u, global4.d.x), vec3<u32>(1u, 4294967295u, u_input.a))) | ~_wgslsmith_add_vec2_u32(global4.d, vec2<u32>(0u, 45339u))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.c.x);
}

