struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: u32;

var<private> global2: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: i32) -> u32 {
    global0 = array<Struct_2, 30>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-202f, 129f))) - -471f)))));
    var var_1 = vec2<i32>(arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(27630i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_1, -2147483647i), vec3<i32>(2147483647i, arg_1, 18960i)), reverseBits(vec3<i32>(arg_1, -2147483647i, arg_1))), _wgslsmith_clamp_i32(-7234i, arg_1, ~arg_1), arg_1), vec4<i32>(~43725i, arg_1, 46732i, -firstTrailingBit(-2147483647i))));
    global0 = array<Struct_2, 30>();
    let var_2 = var_1.x;
    return _wgslsmith_dot_vec3_u32(~reverseBits(_wgslsmith_div_vec3_u32(u_input.b, ~u_input.b)), min(vec3<u32>(~u_input.a | abs(u_input.b.x), ~firstTrailingBit(54784u), _wgslsmith_clamp_u32(1u, 26019u, 41702u)), vec3<u32>(1u, _wgslsmith_add_u32(0u, reverseBits(1753u)), arg_0)));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<bool>, arg_3: vec3<i32>) -> f32 {
    global1 = firstTrailingBit(8407u) << ((u_input.b.x ^ arg_1) % 32u);
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_add_u32(func_3(max(arg_1, arg_1), 19189i), ~1u), min(func_3(u_input.b.x, 58356i), _wgslsmith_mod_u32(u_input.b.x, arg_1)), _wgslsmith_sub_u32(arg_1, ~(~4294967295u)), u_input.a & ~arg_1), arg_1 << (_wgslsmith_div_u32(0u, _wgslsmith_sub_u32(1270u, _wgslsmith_sub_u32(9450u, arg_1))) % 32u));
    var var_1 = -abs(-(~0i));
    global1 = _wgslsmith_add_u32(arg_1, _wgslsmith_div_u32(arg_1, u_input.a));
    var_1 = 31594i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2222f, -313f)), 1596f)) + 381f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-464f * _wgslsmith_div_f32(824f, -931f)))));
}

fn func_1(arg_0: u32, arg_1: f32) -> vec4<bool> {
    global0 = array<Struct_2, 30>();
    global2 = array<vec4<bool>, 32>();
    var var_0 = global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(4294967295u, ~72634u), 79154u), 30u)];
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(trunc(-326f)))) + -2460f)));
    let var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 30u)];
    return !vec4<bool>(var_0.c.x, !(true || var_0.c.x) & false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true, 79507u, vec2<bool>(var_0.c.x, false), vec3<i32>(-30720i, 6800i, -1i)))) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, 379f) - 113f), all(vec2<bool>(var_0.c.x, var_2.c.x)));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<i32>, arg_3: vec2<u32>) -> u32 {
    global2 = array<vec4<bool>, 32>();
    var var_0 = select(!(!(!select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, false, true), arg_1))), vec3<bool>(!any(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, false, true), true)), true & arg_1, !(12700i > -arg_2.x)), vec3<bool>(true, !(!(arg_3.x <= 1u)), true));
    let var_1 = Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(~arg_0.x, firstTrailingBit(arg_0.x), 1u, ~u_input.a)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_0.x, 378u, arg_3.x), vec4<u32>(4294967295u, 32755u, arg_0.x, u_input.b.x)))), 30u)], global2[_wgslsmith_index_u32(u_input.b.x >> (_wgslsmith_mod_u32(select(_wgslsmith_mult_u32(1u, 80156u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, 0u, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, 23159u)), true), min(arg_0.x, ~35396u)) % 32u), 32u)], select(!vec3<bool>(!var_0.x, arg_1, false), vec3<bool>(true, !(u_input.b.x >= arg_0.x), arg_1), vec3<bool>(true, true, true)), Struct_2(4294967295u, Struct_1(countOneBits(~vec4<u32>(arg_0.x, 4294967295u, arg_3.x, u_input.a)), ~_wgslsmith_clamp_u32(0u, 4294967295u, arg_3.x)), !vec3<bool>(!arg_1, var_0.x, func_1(20623u, -430f).x)));
    var var_2 = Struct_5(Struct_2(4294967295u, Struct_1(var_1.d.b.a, ~(arg_3.x & 4294967295u)), select(vec3<bool>(true, true, true), vec3<bool>(select(arg_1, var_0.x, var_0.x), true, var_0.x), func_1(1u, 909f).yyw)), !func_1(~abs(1301u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1269f * 1072f), _wgslsmith_f_op_f32(f32(-1f) * -436f))), !vec3<bool>(true, var_0.x, var_1.d.c.x), Struct_2(arg_0.x, Struct_1(select(select(vec4<u32>(10685u, u_input.b.x, 1u, 0u), var_1.a.b.a, global2[_wgslsmith_index_u32(u_input.b.x, 32u)]), _wgslsmith_sub_vec4_u32(var_1.d.b.a, var_1.d.b.a), select(var_1.b, global2[_wgslsmith_index_u32(arg_0.x, 32u)], vec4<bool>(var_0.x, var_1.a.c.x, false, true))), u_input.b.x), !select(select(var_1.b.yxy, var_1.c, var_1.c), !vec3<bool>(var_1.c.x, false, var_1.b.x), vec3<bool>(arg_1, false, true))));
    var_0 = vec3<bool>(arg_1, true, var_1.c.x);
    return func_3(reverseBits(4294967295u), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(abs(vec3<u32>(40417u, u_input.b.x, u_input.a)) << (min(u_input.b ^ u_input.b, u_input.b) % vec3<u32>(32u)), any(func_1(u_input.b.x, _wgslsmith_f_op_f32(step(1682f, 230f)))), vec3<i32>(firstTrailingBit(1i), i32(-1i) * -1i, 1i), ~(~(~u_input.b.yx))), Struct_1(min(~reverseBits(vec4<u32>(4294967295u, u_input.a, 22321u, u_input.a)), max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u), vec4<u32>(u_input.a, 24766u, 1u, u_input.a)), ~vec4<u32>(1u, u_input.b.x, 28570u, 57210u))), ~((60798u | u_input.b.x) | u_input.a)), !(!func_1(~93950u, _wgslsmith_f_op_f32(sign(2029f))).yxw));
    var var_1 = -_wgslsmith_sub_i32(_wgslsmith_add_i32(-7136i, 1i), reverseBits(~9810i) << (~max(var_0.a, var_0.a) % 32u));
    global2 = array<vec4<bool>, 32>();
    var_1 = -_wgslsmith_mod_i32(min(firstLeadingBit(i32(-1i) * -36675i), ~(-36111i)), firstTrailingBit(-4024i));
    var_0 = Struct_2(_wgslsmith_dot_vec4_u32(var_0.b.a, _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.b.x, var_0.b.a.x, var_0.b.b, 24269u), vec4<u32>(25420u, var_0.b.b, 1u, u_input.b.x), global2[_wgslsmith_index_u32(var_0.a, 32u)]) << (vec4<u32>(var_0.b.b, 0u, var_0.b.b, 4294967295u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.b.a.x), u_input.b.xz), _wgslsmith_div_u32(25757u, var_0.a), ~var_0.b.b, 0u ^ var_0.b.b))), Struct_1(~var_0.b.a, u_input.a), vec3<bool>(!all(var_0.c), true, true));
    var_0 = Struct_2(countOneBits(select(var_0.a, u_input.b.x, var_0.c.x) << (firstLeadingBit(4294967295u) % 32u)) >> (u_input.b.x % 32u), var_0.b, vec3<bool>(!(!(true || var_0.c.x)), var_0.c.x, func_1(69824u, 130f).x));
    global2 = array<vec4<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-597f, 239f, 1049f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-318f, 395f, -155f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(922f, 912f, -386f) + vec3<f32>(1739f, -388f, -341f)))), vec3<f32>(_wgslsmith_f_op_f32(-1549f + _wgslsmith_f_op_f32(abs(1216f))), _wgslsmith_f_op_f32(1428f - -187f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-306f + -714f))))), _wgslsmith_sub_i32(1i, select(2147483647i, max(_wgslsmith_div_i32(-22873i, -28375i), 1i), true)), ~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 2147483647i) << (var_0.b.a.yw % vec2<u32>(32u)), vec2<i32>(1i, -1431i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -2147483647i) >> (vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, 20505i), vec2<i32>(-26519i, -28222i)))));
}

