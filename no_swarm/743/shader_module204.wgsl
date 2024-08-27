struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: bool) -> vec2<u32> {
    var var_0 = any(!(!vec3<bool>(arg_2, any(vec2<bool>(false, arg_2)), select(arg_2, arg_2, true))));
    return arg_1.zy;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    global0 = arg_0.b.e;
    let var_0 = arg_0.b.b;
    global0 = any(select(!(!select(vec4<bool>(true, arg_0.b.e, arg_1.b.e, arg_0.a), vec4<bool>(false, false, true, true), false)), !vec4<bool>(arg_1.a && arg_1.a, arg_1.b.e, any(vec3<bool>(arg_1.a, arg_1.b.e, false)), arg_1.b.e), !arg_1.a));
    var var_1 = max(vec3<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2560i, 1i, -1i, arg_0.b.c) >> (arg_0.b.d % vec4<u32>(32u))), vec4<i32>(~0i, -arg_1.b.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 15015i, arg_0.b.c), vec4<i32>(arg_0.b.c, arg_1.b.c, u_input.a, 1i)), _wgslsmith_sub_i32(14837i, 2147483647i))), 0i, arg_0.b.c), select(min(_wgslsmith_add_vec3_i32(max(vec3<i32>(arg_0.b.c, 1i, u_input.a), vec3<i32>(-54604i, 4167i, -1i)), -vec3<i32>(arg_0.b.c, 2147483647i, 51446i)), -vec3<i32>(-2147483647i, 14124i, u_input.a) & select(vec3<i32>(u_input.a, arg_1.b.c, -14630i), vec3<i32>(-1i, 26728i, 2147483647i), true)), ~_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_1.b.c, arg_0.b.c), vec3<i32>(arg_1.b.c, u_input.a, arg_1.b.c)), abs(vec3<i32>(u_input.a, 1i, 2147483647i))), select(!vec3<bool>(false, arg_1.a, false), vec3<bool>(!arg_0.a, arg_1.b.a < arg_1.b.a, true), !(!vec3<bool>(false, arg_1.a, arg_1.a)))));
    return arg_0.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = vec2<i32>(38708i, abs(arg_3.c));
    global0 = !func_3(arg_1, arg_1);
    let var_1 = Struct_1(arg_3.d.x, 149f, arg_2.b.c, ~abs(~(~vec4<u32>(4294967295u, arg_2.b.d.x, 108656u, arg_3.a))), all(vec2<bool>(arg_1.b.b > arg_1.b.b, select(arg_3.e, true, true))));
    var var_2 = abs(abs(~(-_wgslsmith_mult_vec4_i32(arg_0, vec4<i32>(-1i, -25480i, arg_1.b.c, -61538i)))));
    var_0 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_3.c, -16942i, arg_1.b.c) >> (vec4<u32>(1u, var_1.a, var_1.d.x, arg_1.b.a) % vec4<u32>(32u)), vec4<i32>(arg_0.x, var_2.x, arg_2.b.c, -1i)), arg_2.b.c), -57343i) << (firstTrailingBit(arg_3.d.wx ^ vec2<u32>(~1u, ~arg_1.b.a)) % vec2<u32>(32u));
    return !any(select(select(vec3<bool>(arg_1.b.e, true, var_1.e), vec3<bool>(false, true, arg_1.a), arg_3.e), !select(vec3<bool>(false, arg_3.e, true), vec3<bool>(arg_1.b.e, var_1.e, true), arg_3.e), !vec3<bool>(true, arg_1.a, arg_2.b.e)));
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    var var_0 = vec2<u32>(1u, 1u);
    var var_1 = Struct_1(select(_wgslsmith_dot_vec2_u32(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(191f, 1396f, -407f, 890f), vec4<f32>(-361f, -1146f, 2180f, 147f)), countOneBits(vec4<u32>(3544u, 54820u, 1u, var_0.x)), false), ~vec2<u32>(4294967295u, var_0.x) | ~vec2<u32>(39127u, var_0.x)), 0u, func_4(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, arg_0.x, -1i, u_input.a), vec4<i32>(2147483647i, -44099i, -2147483647i, arg_0.x))), Struct_2(true, Struct_1(var_0.x, -372f, arg_0.x, vec4<u32>(17179u, 4294967295u, 1u, var_0.x), true)), Struct_2(func_3(Struct_2(true, Struct_1(var_0.x, -1972f, u_input.a, vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), true)), Struct_2(true, Struct_1(var_0.x, -385f, u_input.a, vec4<u32>(var_0.x, var_0.x, 1u, 16799u), false))), Struct_1(4294967295u, 751f, arg_0.x, vec4<u32>(var_0.x, var_0.x, 49964u, 4294967295u), true)), Struct_1(var_0.x, _wgslsmith_f_op_f32(sign(-698f)), 1i, vec4<u32>(1u, var_0.x, 30593u, 0u), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1106f)), 770f), _wgslsmith_mod_i32(-u_input.a, 1i) ^ ~(firstTrailingBit(u_input.a) ^ _wgslsmith_div_i32(u_input.a, -63802i)), select(vec4<u32>(var_0.x, 26236u | var_0.x, ~select(1u, 0u, false), _wgslsmith_sub_u32(~var_0.x, var_0.x)), ~vec4<u32>(0u, ~4787u, 1u, 54732u), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), false);
    let var_2 = Struct_1(~var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(136f - var_1.b) + _wgslsmith_f_op_f32(floor(-494f))) + 1944f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-159f - 1398f))), _wgslsmith_div_i32(-4504i, ~_wgslsmith_clamp_i32(~2147483647i, -1i, 45905i)), _wgslsmith_mult_vec4_u32(~var_1.d, vec4<u32>(0u, ~var_0.x, var_1.d.x, ~(~0u))), false);
    let var_3 = Struct_1(var_1.d.x, -326f, max(-16237i, abs(reverseBits(u_input.a))), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.d.x, 72087u, var_2.d.x, countOneBits(~4294967295u)), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(var_1.a, var_1.d.x, var_2.d.x, var_0.x), vec4<u32>(var_2.a, var_2.d.x, 70020u, var_1.a)), vec4<u32>(var_0.x, 4294967295u, var_1.d.x, 0u), vec4<u32>(0u, var_2.d.x, var_1.d.x, 67630u)) ^ var_1.d), var_2.e);
    let var_4 = ~(vec3<u32>(firstLeadingBit(var_0.x), abs(1u), 1u) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(var_3.d.zxy, var_1.d.wzy), vec3<u32>(var_2.a, var_3.d.x, 572u) | var_1.d.www) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_u32(~vec3<u32>(min(var_0.x, 27764u), var_0.x ^ 0u, ~14514u), vec3<u32>(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1086f, 1158f, var_1.b, var_1.b)), vec4<u32>(0u, var_2.a, var_3.d.x, 4294967295u), !var_2.e).x, 22911u, (1u & var_3.d.x) << (var_2.d.x % 32u)));
    return _wgslsmith_mult_u32(abs(_wgslsmith_dot_vec4_u32(var_2.d & (var_2.d ^ var_1.d), (var_1.d | vec4<u32>(var_1.d.x, 51603u, var_3.a, 45613u)) & min(vec4<u32>(var_0.x, var_1.d.x, var_1.a, 1u), vec4<u32>(var_4.x, 22137u, var_2.a, var_0.x)))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(264f, var_3.b, var_3.b, -1498f))), vec4<u32>(var_1.a, 0u, var_2.d.x, var_4.x), true).x);
}

fn func_5(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-564f, 1102f, 511f), vec3<f32>(591f, -1311f, -1013f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), -489f, _wgslsmith_f_op_f32(f32(-1f) * -1014f)))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), -898f, _wgslsmith_div_f32(1533f, _wgslsmith_f_op_f32(exp2(arg_0)))))));
    global0 = any(vec3<bool>(true, true, arg_0 > _wgslsmith_f_op_f32(-1105f + 1000f))) & (abs(_wgslsmith_clamp_u32(1u, abs(arg_1), 1u)) > arg_1);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(660f + 811f), _wgslsmith_div_f32(384f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(321f - _wgslsmith_f_op_f32(abs(var_0.x)))))), 1285f);
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-1i), -u_input.a, -76370i) ^ firstLeadingBit(firstTrailingBit(vec3<i32>(u_input.a, 1i, 0i))), ~(~vec3<i32>(u_input.a, -25415i, u_input.a))), -(~(max(1i, u_input.a) & ~(-5219i))));
    var var_2 = !vec3<bool>(all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))), any(vec4<bool>(true, false, false, true)), true);
    return _wgslsmith_sub_u32(~_wgslsmith_div_u32(arg_1 >> (1u % 32u), abs(arg_1) << (19142u % 32u)), firstLeadingBit(~(~(~92291u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(max(~abs(31843u), 30511u), reverseBits(25633u), 13970u) ^ ~_wgslsmith_sub_u32(func_5(_wgslsmith_f_op_f32(sign(-117f)), func_1(vec2<i32>(u_input.a, u_input.a))), 5712u);
    var var_1 = ~min(-4884i, u_input.a);
    let var_2 = -1000f;
    let var_3 = abs(vec4<i32>(-19230i, u_input.a, ~_wgslsmith_sub_i32(u_input.a, u_input.a), -1i));
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)), vec2<f32>(_wgslsmith_f_op_f32(-var_2), var_2));
    let var_5 = _wgslsmith_mult_vec2_u32(firstTrailingBit(firstTrailingBit(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 9718u), vec2<u32>(79397u, 59848u)), vec2<u32>(47360u, 36291u)))), ~(select(func_2(vec4<f32>(2834f, var_2, var_2, var_4.x), vec4<u32>(5725u, 4294967295u, 21238u, 0u), false), firstTrailingBit(vec2<u32>(1396u, 1u)), vec2<bool>(false, false)) | ~vec2<u32>(1u, 35385u)));
    let var_6 = var_5.x;
    let var_7 = Struct_1(0u, _wgslsmith_f_op_f32(ceil(var_2)), ~abs(var_3.x), vec4<u32>(76933u, ~firstLeadingBit(~var_5.x), 57558u, _wgslsmith_sub_u32(var_6, _wgslsmith_mult_u32(var_6, var_5.x >> (var_5.x % 32u)))), true);
    var var_8 = var_7;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(-var_4.x))), var_8.b, _wgslsmith_f_op_f32(var_4.x + var_7.b), var_8.b), var_3.zzw, _wgslsmith_dot_vec4_i32(var_3, select(var_3 >> (var_8.d % vec4<u32>(32u)), (vec4<i32>(-23389i, u_input.a, var_7.c, var_3.x) | vec4<i32>(32773i, -2147483647i, var_8.c, 1i)) & _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 0i, var_3.x, var_7.c), var_3), vec4<bool>(false, true, all(vec3<bool>(var_7.e, var_7.e, false)), false))), max(var_5.x, 4294967295u));
}

