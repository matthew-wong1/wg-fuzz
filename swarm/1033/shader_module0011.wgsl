struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false));

var<private> global1: i32;

var<private> global2: Struct_2 = Struct_2(true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_1) -> vec3<bool> {
    global0 = array<Struct_1, 26>();
    global1 = -70647i;
    let var_0 = select(!(!vec2<bool>(select(arg_1.a.a, true, arg_2.a), arg_2.a | true)), !(!select(select(vec2<bool>(arg_1.d.a, arg_2.a), vec2<bool>(global2.a, false), vec2<bool>(false, arg_1.a.a)), vec2<bool>(arg_2.a, true), !vec2<bool>(arg_1.b.a, arg_2.a))), vec2<bool>(true, any(vec3<bool>(all(vec3<bool>(true, true, global2.a)), !arg_1.b.a, true))));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(reverseBits(~u_input.a), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(32180u, 1u, arg_1.e, 4294967295u)), ~vec4<u32>(u_input.a, 17582u, 1743u, 84999u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 0u), 4294967295u & u_input.a)), _wgslsmith_add_u32(~(45552u >> (arg_1.e % 32u)), ~0u)), 26u)];
    let var_2 = select(vec4<i32>(~_wgslsmith_mult_i32(arg_0.x << (u_input.a % 32u), ~arg_0.x), ~(_wgslsmith_clamp_i32(arg_0.x, arg_0.x, arg_0.x) | ~(-34894i)), -50998i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0.x, arg_0.x >> (0u % 32u)), 37443i)), vec4<i32>(1i, -(arg_0.x | (8915i | arg_0.x)), max(1i, ~(-2147483647i << (u_input.a % 32u))), 1i), any(select(vec4<bool>(global2.a, arg_0.x <= arg_0.x, true, false), vec4<bool>(!arg_1.d.a, false, !global2.a, var_0.x), select(select(vec4<bool>(global2.a, arg_2.a, global2.a, arg_1.d.a), vec4<bool>(var_1.a, arg_1.b.a, global2.a, false), vec4<bool>(arg_2.a, false, true, var_0.x)), select(vec4<bool>(global2.a, true, false, var_1.a), vec4<bool>(true, global2.a, false, var_1.a), var_0.x), select(vec4<bool>(var_1.a, false, var_1.a, var_0.x), vec4<bool>(global2.a, arg_2.a, false, true), vec4<bool>(global2.a, arg_1.b.a, global2.a, false))))));
    return select(vec3<bool>(arg_1.d.a | all(vec3<bool>(false, false, global2.a)), true, false), !(!(!select(vec3<bool>(arg_1.a.a, var_1.a, true), vec3<bool>(false, true, true), vec3<bool>(global2.a, var_1.a, false)))), true);
}

fn func_2() -> i32 {
    let var_0 = !select(!func_3(firstTrailingBit(vec2<i32>(-10850i, -1i)), Struct_3(Struct_2(true), Struct_2(global2.a), vec4<f32>(-699f, 101f, 563f, 1008f), Struct_1(global2.a), 28724u), global0[_wgslsmith_index_u32(u_input.a, 26u)]), !(!vec3<bool>(true, global2.a, false)), global2.a);
    let var_1 = select(countOneBits(_wgslsmith_add_vec4_u32(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 36238u, u_input.a), vec4<u32>(3161u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 44426u)), ~vec4<u32>(110294u, u_input.a, u_input.a, u_input.a)), reverseBits(vec4<u32>(601u, u_input.a, u_input.a, u_input.a) << (vec4<u32>(1u, 36131u, 12066u, 46168u) % vec4<u32>(32u))))), ~(~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))), select(!(!(!vec4<bool>(global2.a, var_0.x, true, global2.a))), select(vec4<bool>(any(var_0.yy), false, true, true), vec4<bool>(true, !global2.a, all(var_0.xx), all(var_0)), select(!vec4<bool>(var_0.x, var_0.x, true, true), !vec4<bool>(false, true, var_0.x, false), true)), !vec4<bool>(var_0.x, global2.a, all(var_0), any(var_0.xx))));
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(1i, ~(~(-1i))), ~1i, select(~1i, _wgslsmith_mod_i32(1i, 53323i), global2.a), 1i), abs(select(abs(-vec4<i32>(-11944i, -31801i, 31473i, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-9694i, -7299i, -25054i, -21799i)), true)));
    var var_2 = !(!select(select(select(vec2<bool>(false, true), vec2<bool>(true, global2.a), var_0.x), !var_0.yx, vec2<bool>(true, global2.a)), vec2<bool>(true, true), false));
    let var_3 = Struct_2(all(vec4<bool>(false, !(var_0.x && global2.a), var_2.x, true)));
    return -(~_wgslsmith_div_i32(-1i, 1i));
}

fn func_4(arg_0: i32) -> Struct_3 {
    let var_0 = _wgslsmith_sub_vec3_u32(~(abs(vec3<u32>(u_input.a, 1826u, 65329u)) & vec3<u32>(u_input.a, u_input.a, 7745u)), ~firstTrailingBit(vec3<u32>(3506u, 1u, 35531u))) ^ ~(~(~(vec3<u32>(4294967295u, 25278u, 4294967295u) >> (vec3<u32>(68396u, u_input.a, 74056u) % vec3<u32>(32u)))));
    global2 = Struct_2(true);
    global2 = Struct_2(func_3(max(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(arg_0, arg_0)), vec2<i32>(arg_0, -1i)), max(-vec2<i32>(-1i, 19697i), vec2<i32>(-1i, arg_0) & vec2<i32>(34193i, arg_0))), Struct_3(Struct_2(true), Struct_2(true), vec4<f32>(602f, 1000f, -1000f, _wgslsmith_f_op_f32(select(1136f, 1731f, global2.a))), global0[_wgslsmith_index_u32(u_input.a, 26u)], ~_wgslsmith_mod_u32(27832u, 1u)), global0[_wgslsmith_index_u32(u_input.a, 26u)]).x);
    global2 = Struct_2(true == global2.a);
    var var_1 = 928f;
    return Struct_3(Struct_2(true), Struct_2(false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 238f, 1276f, 420f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-388f, -1000f, -1291f, -167f), vec4<f32>(-212f, 155f, -547f, 1033f))), select(vec4<bool>(false, global2.a, global2.a, true), vec4<bool>(global2.a, global2.a, false, global2.a), vec4<bool>(global2.a, false, global2.a, global2.a)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-702f, -918f, -1074f, 130f)), vec4<f32>(488f, 846f, -616f, -1661f))))), _wgslsmith_div_vec4_f32(vec4<f32>(-787f, -113f, _wgslsmith_f_op_f32(min(-1190f, -2078f)), _wgslsmith_f_op_f32(1107f * -305f)), vec4<f32>(-812f, 791f, _wgslsmith_f_op_f32(sign(1510f)), -1435f))), Struct_1(any(select(select(vec4<bool>(global2.a, true, true, global2.a), vec4<bool>(true, global2.a, false, false), false), vec4<bool>(global2.a, global2.a, true, false), global2.a))), ~firstTrailingBit(abs(~u_input.a)));
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(Struct_2((arg_1.e >= u_input.a) | !(arg_1.e > u_input.a)), arg_1.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2318f, arg_1.c.x, 557f, _wgslsmith_f_op_f32(floor(arg_1.c.x))))), arg_1.c)), Struct_1(select(!(global2.a || true), true, true)), arg_1.e);
    var var_1 = _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(0u, 40405u, var_0.e)), firstLeadingBit(vec3<u32>(57163u, u_input.a, 47919u))), ~_wgslsmith_div_vec3_u32(~vec3<u32>(arg_1.e, arg_1.e, u_input.a), ~vec3<u32>(19204u, 34244u, 4294967295u))) <= u_input.a;
    let var_2 = func_4(_wgslsmith_add_i32(select(func_2(), ~(arg_0 & arg_0), 1u < abs(u_input.a)), arg_0));
    return func_4(arg_0);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<u32>) -> vec2<bool> {
    let var_0 = 0u;
    global0 = array<Struct_1, 26>();
    var var_1 = Struct_1(true);
    var var_2 = _wgslsmith_div_vec3_f32(arg_0.c.wyx, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-461f + _wgslsmith_f_op_f32(arg_0.c.x + arg_1.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_1.c.x))))), _wgslsmith_f_op_f32(sign(-328f)), _wgslsmith_f_op_f32(999f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1964f * arg_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x - -142f))))));
    let var_3 = func_4(_wgslsmith_div_i32(2447i, 1i));
    return !select(!(!(!vec2<bool>(true, arg_0.b.a))), vec2<bool>(true, true), vec2<bool>(false, any(vec4<bool>(true, arg_1.a.a, var_3.b.a, var_3.b.a))));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = select(vec3<bool>(!any(vec3<bool>(arg_3.b.a, arg_1.a, arg_3.d.a)), !arg_1.a, arg_3.d.a), select(vec3<bool>(!arg_1.a, !arg_3.b.a, any(func_5(arg_3, Struct_3(Struct_2(true), arg_3.a, arg_3.c, Struct_1(false), 4294967295u), vec2<u32>(arg_2, 57483u)))), !vec3<bool>(arg_1.a, arg_1.a, func_5(Struct_3(arg_3.a, Struct_2(arg_0.x), arg_3.c, Struct_1(true), 4105u), Struct_3(arg_3.b, arg_1, vec4<f32>(-1248f, arg_3.c.x, arg_3.c.x, 472f), Struct_1(true), arg_3.e), vec2<u32>(25368u, arg_2)).x), true), !func_3(vec2<i32>(1i, 1i), func_1(~44938i, Struct_3(Struct_2(true), Struct_2(global2.a), vec4<f32>(arg_3.c.x, 320f, arg_3.c.x, -829f), Struct_1(false), u_input.a)), Struct_1(!arg_3.a.a)));
    var var_1 = ~4137u;
    global1 = ~abs(~(-2582i)) >> (~(~(~(u_input.a | 39969u))) % 32u);
    return Struct_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(select(!func_5(Struct_3(Struct_2(global2.a), Struct_2(global2.a), vec4<f32>(2203f, -1185f, 1823f, 520f), Struct_1(true), u_input.a), func_1(2147483647i, Struct_3(Struct_2(global2.a), Struct_2(true), vec4<f32>(1000f, 1220f, 1419f, -490f), global0[_wgslsmith_index_u32(101447u, 26u)], 63931u)), vec2<u32>(1u, 1u)), vec2<bool>(true, false | all(vec3<bool>(false, false, global2.a))), false), Struct_2(true && global2.a), u_input.a, func_1(-_wgslsmith_div_i32(82780i, -1i), func_4(1i)));
    var var_0 = Struct_3(func_6(!(!func_5(Struct_3(Struct_2(global2.a), Struct_2(global2.a), vec4<f32>(958f, 757f, -988f, 1016f), Struct_1(false), u_input.a), Struct_3(Struct_2(false), Struct_2(global2.a), vec4<f32>(-1373f, 587f, -1178f, 126f), global0[_wgslsmith_index_u32(20129u, 26u)], 24517u), vec2<u32>(u_input.a, 4294967295u))), func_6(!(!vec2<bool>(true, global2.a)), func_6(select(vec2<bool>(true, global2.a), vec2<bool>(true, global2.a), vec2<bool>(false, global2.a)), func_4(0i).b, 0u, Struct_3(Struct_2(true), Struct_2(global2.a), vec4<f32>(373f, -1024f, -773f, 526f), Struct_1(global2.a), u_input.a)), ~(u_input.a & u_input.a), Struct_3(func_4(25911i).b, Struct_2(global2.a), vec4<f32>(288f, -281f, 569f, -177f), Struct_1(true), firstTrailingBit(u_input.a))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 0u) & vec3<u32>(0u, 62753u, u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(858u, 9935u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))), func_4(firstLeadingBit(-23884i))), Struct_2(true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1124f, -432f, -1000f, 1403f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-3457f, 755f, -919f, -662f))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(118f, 1000f, -605f, 552f))))))), global0[_wgslsmith_index_u32(u_input.a, 26u)], u_input.a | u_input.a);
    let var_1 = _wgslsmith_f_op_f32(ceil(-600f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c.x)) + -326f);
    var var_3 = vec4<i32>(-1i) * -(vec4<i32>(1i, -1i, 0i, -1i) | _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(1i, 1i, 16759i, 35338i)), vec4<i32>(2147483647i, -52785i, -2147483647i, -31145i) << (vec4<u32>(u_input.a, var_0.e, 74942u, u_input.a) % vec4<u32>(32u)), -vec4<i32>(0i, 2147483647i, 39624i, -44125i)));
    global0 = array<Struct_1, 26>();
    var_3 = vec4<i32>(var_3.x, var_3.x, var_3.x, -2147483647i) & select(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, var_3.x, var_3.x, -2147483647i), vec4<i32>(var_3.x, -2147483647i, 23693i, var_3.x))) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 8006u, 27640u, 1u), countOneBits(vec4<u32>(var_0.e, 4294967295u, u_input.a, var_0.e)), ~vec4<u32>(var_0.e, 1u, u_input.a, 1u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(~28326i, abs(var_3.x), select(var_3.x, 36282i, true), _wgslsmith_sub_i32(var_3.x, 0i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<i32>(-21906i, var_3.x, -38386i, -38317i))), !(!(!vec4<bool>(true, var_0.b.a, false, var_0.a.a))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_vec4_i32(select(vec4<i32>(var_3.x, var_3.x, 6664i, 2147483647i), vec4<i32>(var_3.x, 39454i, -1i, var_3.x), true), countOneBits(vec4<i32>(0i, var_3.x, -6001i, -11276i)))) | (vec4<i32>(-1i) * -(~vec4<i32>(2687i, var_3.x, var_3.x, var_3.x))), vec4<u32>(select(9708u, var_0.e, true & var_0.b.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(37961u, 0u, var_0.e, 58820u) | max(vec4<u32>(0u, 1u, u_input.a, u_input.a), vec4<u32>(31199u, var_0.e, var_0.e, u_input.a)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 130369u, 53394u, u_input.a), vec4<u32>(u_input.a, 0u, var_0.e, u_input.a)))), _wgslsmith_clamp_u32(24459u, firstTrailingBit(0u ^ var_0.e), ~reverseBits(0u)), 4294967295u));
}

