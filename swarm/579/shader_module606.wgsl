struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(88755u, 4294967295u), vec2<u32>(75820u, 1u), vec2<u32>(0u, 77976u), vec2<u32>(31376u, 1u), vec2<u32>(3109u, 4294967295u), vec2<u32>(33501u, 12254u), vec2<u32>(17667u, 1u), vec2<u32>(4294967295u, 70599u), vec2<u32>(0u, 4294967295u), vec2<u32>(43411u, 45454u), vec2<u32>(0u, 44012u), vec2<u32>(33286u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(19205u, 12525u), vec2<u32>(25619u, 42924u), vec2<u32>(3370u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(48938u, 0u));

var<private> global1: vec3<i32>;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: vec4<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) - -1523f) + _wgslsmith_f_op_f32(sign(arg_0)))));
    global2 = Struct_1(vec2<i32>(-21064i, abs(-2147483647i & (global1.x << (4294967295u % 32u)))), global3.b, ~abs(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 14496u, global3.c.x), global3.c), ~global2.c)), min(global2.d, 4294967295u));
    global4 = reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(~u_input.b, 4294967295u, u_input.e.x, _wgslsmith_add_u32(global4.x, 0u))), 0u, ~(~8381u), _wgslsmith_sub_u32(min(reverseBits(global4.x), u_input.b), 1u)));
    let var_1 = arg_0;
    var var_2 = global3.d;
    return 43741u;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    global2 = Struct_1(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, global3.a.x) & global1.zx, ~vec2<i32>(u_input.a, -12440i)), arg_0, _wgslsmith_div_vec4_u32(global2.c, ~vec4<u32>(global3.c.x ^ global4.x, ~15549u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.c.x, 2285u, 4294967295u, 8362u), vec4<u32>(global2.d, global2.c.x, u_input.e.x, global2.d)), global3.d)), ~select(_wgslsmith_clamp_u32(func_3(-375f, vec4<bool>(arg_3.x, false, false, false)), 64837u, 9056u), 0u, false));
    var var_0 = vec3<i32>(global1.x, abs(max(abs(-22140i), u_input.c | _wgslsmith_sub_i32(global2.a.x, 1i))), _wgslsmith_div_i32(global1.x, ~_wgslsmith_add_i32(-21065i, _wgslsmith_sub_i32(4691i, global2.a.x))));
    global1 = vec3<i32>(global1.x, u_input.c, countOneBits(~(~(~(-1i)))));
    var_0 = vec3<i32>(~min(~(-2147483647i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, 30250i, 8571i)), vec3<i32>(var_0.x, global1.x, -3123i))), ~global1.x, abs(~(global3.a.x << (abs(10855u) % 32u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)));
    return Struct_1(vec2<i32>(-abs(global3.a.x), -2147483647i), arg_2, vec4<u32>(~(~(~64597u)), ~firstTrailingBit(17934u), 6958u << (1u % 32u), global2.c.x), _wgslsmith_mult_u32(_wgslsmith_mult_u32(global2.d, _wgslsmith_dot_vec4_u32(vec4<u32>(28721u, global2.c.x, 1u, 41068u), select(vec4<u32>(global4.x, global4.x, global2.d, u_input.e.x), vec4<u32>(global4.x, global4.x, global3.d, u_input.e.x), true))), global2.c.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    global2 = arg_0;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(205f))));
    var var_1 = any(vec4<bool>(arg_2, true, all(vec4<bool>(any(vec4<bool>(arg_2, arg_2, arg_2, arg_2)), false, false, false)), _wgslsmith_f_op_f32(func_2(-186f, false, arg_0.b, vec2<bool>(false, arg_2)).b * _wgslsmith_f_op_f32(abs(var_0.x))) != _wgslsmith_f_op_f32(-1347f - global2.b)));
    let var_2 = ~(~(~0u));
    let var_3 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-726f, var_0.x)))))), !arg_2, -744f, vec2<bool>(arg_2, !(!arg_2) | (firstTrailingBit(-46689i) < (arg_0.a.x | -2147483647i))));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> u32 {
    global3 = func_2(-182f, true, global3.b, !select(select(vec2<bool>(false, true), select(vec2<bool>(arg_2, false), vec2<bool>(false, arg_2), arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2))), vec2<bool>(true, true), !select(vec2<bool>(arg_2, false), vec2<bool>(true, false), arg_2)));
    global2 = func_4(Struct_1(global2.a, _wgslsmith_f_op_f32(arg_3.b + _wgslsmith_div_f32(func_2(1000f, arg_2, 903f, vec2<bool>(false, false)).b, -1238f)), u_input.e, ~46030u), vec3<f32>(_wgslsmith_f_op_f32(step(-1946f, _wgslsmith_f_op_f32(-arg_3.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) + 1f), global2.b)), _wgslsmith_f_op_f32(f32(-1f) * -109f)), !any(vec3<bool>(arg_0.b > 813f, false, any(vec3<bool>(arg_2, arg_2, arg_2)))), -5001i);
    var var_0 = ~vec3<i32>(global3.a.x, global3.a.x, -_wgslsmith_dot_vec2_i32(~arg_0.a, vec2<i32>(15701i, global1.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1))))) * _wgslsmith_f_op_vec3_f32(select(arg_1, _wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_1)))), arg_2)));
    var var_2 = true && (!arg_2 | true);
    return 1u;
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> u32 {
    global2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3.b)), global2.b)), false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(f32(-1f) * -256f)), vec2<bool>(true, true));
    let var_0 = arg_2;
    var var_1 = _wgslsmith_mult_u32(select(select(~38079u, ~0u, true), _wgslsmith_mod_u32(arg_3, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.c.x, 4294967295u), arg_2.c.zx)), true), ~max(1u, ~16277u)) << (~(~14419u) % 32u);
    var var_2 = var_0;
    let var_3 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_2.a.x, arg_2.a.x), 0i, arg_0), -_wgslsmith_mod_vec3_i32(vec3<i32>(-17167i, 27483i, var_2.a.x), vec3<i32>(arg_2.a.x, -39060i, 1i)) << (global4.xwz % vec3<u32>(32u)));
    return ~(((global3.d << (1u % 32u)) ^ ~global3.c.x) >> (u_input.e.x % 32u));
}

fn func_1() -> vec2<bool> {
    global4 = vec4<u32>(~23211u, 15149u, func_6(-2147483647i, func_5(func_4(func_2(-1513f, false, 886f, vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1078f, global3.b, -950f) + vec3<f32>(global2.b, 883f, -878f)), true, 18711i), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1191f, global3.b, global3.b) * vec3<f32>(global2.b, global3.b, 1455f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-962f, -152f, global2.b)))), true, func_4(func_4(Struct_1(global2.a, global2.b, vec4<u32>(global2.c.x, 12247u, global2.d, 0u), global3.d), vec3<f32>(global2.b, global2.b, 787f), true, 23826i), vec3<f32>(global2.b, -428f, global2.b), true, 1i)), func_4(func_4(func_4(Struct_1(vec2<i32>(-1i, 11019i), global2.b, global3.c, global4.x), vec3<f32>(-178f, 410f, -673f), true, 2147483647i), vec3<f32>(1585f, global2.b, 1735f), global3.d < 0u, _wgslsmith_sub_i32(global1.x, global2.a.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(1330f, 252f, global3.b), vec3<f32>(global2.b, 513f, 344f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, global2.b, 160f)))), true, -(~1i)), global4.x), ~firstTrailingBit(_wgslsmith_dot_vec2_u32(abs(u_input.e.yw), vec2<u32>(50635u, 34124u))));
    let var_0 = func_2(-1000f, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b * _wgslsmith_div_f32(880f, -674f))), _wgslsmith_f_op_f32(-global3.b)), !vec2<bool>(any(vec4<bool>(false, true, true, false)), true));
    var var_1 = Struct_1(vec2<i32>(global2.a.x, global3.a.x), _wgslsmith_f_op_f32(trunc(var_0.b)), abs(vec4<u32>(u_input.d.x, ~_wgslsmith_mult_u32(var_0.c.x, global4.x), func_5(func_2(global2.b, true, global2.b, vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1128f, -667f, 127f) + vec3<f32>(global3.b, -158f, var_0.b)), true, var_0), global4.x)), global2.d);
    global0 = array<vec2<u32>, 18>();
    let var_2 = var_0;
    return select(vec2<bool>(true, all(vec3<bool>(false, true, all(vec3<bool>(false, false, false))))), !select(vec2<bool>(global2.b > 1049f, true), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), true), any(vec4<bool>(false, true, true, false))), !(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))));
}

fn func_7(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec2<u32>, 18>();
    var var_0 = Struct_1(global1.zx, _wgslsmith_f_op_f32(sign(1691f)), vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(arg_1.c.x, 68931u)), global4.x, global3.c.x, 4294967295u), 16201u);
    let var_1 = vec2<i32>(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1421f) * _wgslsmith_f_op_f32(step(-711f, 431f)))), ~_wgslsmith_add_i32(34644i, global3.a.x) < -13378i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(-global2.b))), arg_0).a.x, u_input.a);
    let var_2 = func_4(arg_1, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.b, arg_1.b, _wgslsmith_f_op_f32(trunc(func_4(Struct_1(vec2<i32>(var_0.a.x, var_1.x), 1310f, global3.c, 4294967295u), vec3<f32>(-1000f, global2.b, -1152f), true, 19024i).b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3.b, global3.b, -467f)))))))), arg_0.x, 1i);
    var var_3 = ((51770u > ~(~var_0.d)) && false) | (arg_0.x || true);
    return func_2(457f, true, 1977f, vec2<bool>(~0i < -(var_1.x | global1.x), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(false == all(vec4<bool>(false, true, false, true))));
    let var_1 = func_7(select(select(vec2<bool>(true, true), func_1(), vec2<bool>(global3.d > 0u, true)), !vec2<bool>(21206i == global3.a.x, true), func_1()), Struct_1(vec2<i32>(~(-global3.a.x), func_4(Struct_1(vec2<i32>(0i, global3.a.x), global2.b, global3.c, global2.c.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1264f, -562f, global3.b), vec3<f32>(global2.b, global2.b, global3.b), false)), global1.x != -83999i, global2.a.x).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.b)))), global2.c, abs(func_2(global3.b, false, -1429f, vec2<bool>(false, true)).d) | ~46498u));
    var var_2 = var_1.a.x;
    var var_3 = Struct_1(select(_wgslsmith_mult_vec2_i32(func_7(vec2<bool>(true, true), var_1).a, vec2<i32>(min(5460i, 2147483647i), u_input.c)), ~vec2<i32>(min(var_1.a.x, -23802i), -15218i), vec2<bool>((global3.a.x != -1i) & true, true || any(vec3<bool>(false, true, true)))), -1791f, ~vec4<u32>(global3.d, 1u, var_1.c.x, _wgslsmith_mult_u32(14210u, ~global3.d)), u_input.d.x);
    var_0 = ~_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(global2.c, var_1.c), _wgslsmith_dot_vec3_u32(global3.c.xxy, vec3<u32>(0u, global2.d, global4.x)) & _wgslsmith_mod_u32(9660u, 32782u)) >= _wgslsmith_div_u32(u_input.e.x << (11241u % 32u), reverseBits(abs(func_2(var_1.b, false, -1730f, vec2<bool>(true, true)).d)));
    var var_4 = Struct_1(~vec2<i32>(35503i, reverseBits(-18812i)), -159f, ~max(reverseBits(vec4<u32>(0u, 4294967295u, var_3.c.x, 0u) >> (var_1.c % vec4<u32>(32u))), func_4(Struct_1(global1.zx, 532f, vec4<u32>(5684u, 68948u, 4294967295u, 69533u), var_1.c.x), vec3<f32>(global2.b, 1135f, global2.b), false, -2147483647i).c << (global3.c % vec4<u32>(32u))), 0u);
    let var_5 = Struct_1(vec2<i32>(func_7(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), func_7(vec2<bool>(true, true), func_4(Struct_1(vec2<i32>(0i, global2.a.x), global3.b, vec4<u32>(4294967295u, global2.d, 22587u, var_1.c.x), global3.d), vec3<f32>(var_3.b, 938f, var_3.b), true, -11164i))).a.x, u_input.a), 550f, var_3.c, 27757u);
    let var_6 = -vec4<i32>(-36968i, u_input.a, firstLeadingBit(-32476i), -1i);
    var var_7 = func_4(var_5, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -901f), func_7(vec2<bool>(true, true), var_5).b, _wgslsmith_f_op_f32(-301f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(-529f + global3.b)))), true, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d, var_6.zyx, ~_wgslsmith_mod_vec2_i32(vec2<i32>(34466i, 1i), var_1.a), func_3(_wgslsmith_f_op_f32(floor(func_2(_wgslsmith_f_op_f32(-global2.b), true, -932f, select(vec2<bool>(true, false), vec2<bool>(false, false), true)).b)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), global2.b == -437f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b, var_3.b, 602f, -362f), vec4<f32>(-1435f, 183f, global3.b, var_5.b), false))))));
}

