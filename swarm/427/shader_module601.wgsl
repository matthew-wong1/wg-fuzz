struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(0i, 1i), vec2<i32>(-14763i, -1i), vec2<i32>(-8671i, 0i), vec2<i32>(55430i, -25857i), vec2<i32>(2147483647i, -7411i), vec2<i32>(-1i, 1i), vec2<i32>(5400i, 10074i), vec2<i32>(-1i, 68091i), vec2<i32>(i32(-2147483648), -44137i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(44250i, 16426i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = 20636u;
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 12u)];
    global0 = array<vec2<i32>, 12>();
    global0 = array<vec2<i32>, 12>();
    let var_2 = arg_1.b;
    return -1211f;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global0 = array<vec2<i32>, 12>();
    global0 = array<vec2<i32>, 12>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(443f, arg_0.c, arg_0.a.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -154f))))), _wgslsmith_f_op_f32(sign(-1404f))));
    var var_1 = arg_0.a.xy;
    var_1 = abs(~(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a.x, u_input.b), select(u_input.a, vec2<u32>(47580u, var_1.x), true)) ^ u_input.a));
    return Struct_1(select(select(vec2<bool>(all(vec3<bool>(false, arg_0.c.a.x, true)), true), select(!arg_0.c.a, select(vec2<bool>(arg_0.c.b, arg_0.c.b), arg_0.c.a, true), 260f > var_0), true), !select(vec2<bool>(false, true), !arg_0.c.a, !vec2<bool>(true, arg_0.c.a.x)), !select(!vec2<bool>(false, arg_0.c.a.x), arg_0.c.a, true | arg_0.c.b)), false, vec2<i32>(u_input.c, u_input.c));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-637f, _wgslsmith_f_op_f32(trunc(1443f))) * vec2<f32>(_wgslsmith_f_op_f32(step(-969f, 107f)), _wgslsmith_div_f32(3062f, 901f))) - vec2<f32>(_wgslsmith_f_op_f32(512f - _wgslsmith_f_op_f32(-1000f + 1425f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1578f * -1615f), 435f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-434f, 1399f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1573f, -204f) + vec2<f32>(-327f, -483f)))))));
    var var_1 = ~max(max(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_0.x), vec2<u32>(50133u, u_input.b)), u_input.a), arg_0);
    let var_2 = true;
    let var_3 = Struct_1(func_1(Struct_2(~(vec3<u32>(arg_0.x, u_input.b, 1u) ^ vec3<u32>(49585u, 53788u, var_1.x)), arg_1.c.x, Struct_1(vec2<bool>(true, true), any(vec4<bool>(var_2, true, arg_1.a.x, false)), vec2<i32>(-25438i, 41189i)))).a, true, ~(global0[_wgslsmith_index_u32(0u, 12u)] ^ ((arg_1.c >> (arg_0 % vec2<u32>(32u))) | _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.c.x, u_input.c), arg_1.c))));
    global0 = array<vec2<i32>, 12>();
    return ~firstLeadingBit(~(~vec3<u32>(var_1.x, 60299u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(abs(abs(vec3<u32>(u_input.b, 4294967295u, u_input.a.x)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 42721u, 26187u), vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)) % vec3<u32>(32u))), firstLeadingBit(-14251i), Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true), select(false, any(vec3<bool>(true, true, true)), true), vec2<i32>(_wgslsmith_sub_i32(u_input.c, u_input.c), ~u_input.c))));
    let var_1 = 415f;
    var var_2 = Struct_2(_wgslsmith_div_vec3_u32(firstTrailingBit(select(func_3(vec2<u32>(u_input.b, u_input.a.x), Struct_1(vec2<bool>(var_0.b, var_0.b), var_0.a.x, vec2<i32>(0i, -47013i))), ~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), true)), vec3<u32>(u_input.b, ~4294967295u, 0u)), ~(-27013i), Struct_1(!var_0.a, ~_wgslsmith_mult_u32(u_input.b, u_input.b) != ~u_input.a.x, ~vec2<i32>(i32(-1i) * -2147483647i, var_0.c.x)));
    var_2 = Struct_2(~(~(~(~var_2.a))), var_2.c.c.x, Struct_1(vec2<bool>(func_1(Struct_2(vec3<u32>(u_input.a.x, u_input.a.x, 26849u), 57782i, Struct_1(vec2<bool>(false, var_2.c.a.x), var_2.c.a.x, vec2<i32>(-8054i, u_input.c)))).b, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, var_1))) >= _wgslsmith_f_op_f32(558f + var_1), vec2<i32>(1i >> (u_input.b % 32u), _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_2.c.c.x, -3171i, u_input.c), vec4<i32>(-2147483647i, u_input.c, -2147483647i, -1i))))));
    global0 = array<vec2<i32>, 12>();
    var_2 = Struct_2(vec3<u32>(4294967295u, 33191u, func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(41395u, 100062u), ~vec2<u32>(12074u, var_2.a.x)), Struct_1(vec2<bool>(var_0.b, var_2.c.a.x), select(var_2.c.b, var_0.b, false), global0[_wgslsmith_index_u32(4294967295u, 12u)])).x), func_1(Struct_2(~(~var_2.a), 1i, var_2.c)).c.x, func_1(Struct_2(vec3<u32>(_wgslsmith_mod_u32(var_2.a.x, 1308u), _wgslsmith_mult_u32(var_2.a.x, u_input.a.x), u_input.a.x), ~(23141i & var_2.c.c.x), Struct_1(!vec2<bool>(var_0.b, false), !var_0.a.x, global0[_wgslsmith_index_u32(min(u_input.b, u_input.a.x), 12u)]))));
    var var_3 = select(vec3<bool>(var_0.b, all(vec4<bool>(var_0.b, true, true, false)), all(select(select(vec3<bool>(false, var_0.b, true), vec3<bool>(var_2.c.a.x, true, var_0.b), var_2.c.b), !vec3<bool>(var_2.c.a.x, false, var_2.c.b), select(vec3<bool>(false, var_2.c.b, var_2.c.a.x), vec3<bool>(true, var_2.c.a.x, true), false)))), select(!select(select(vec3<bool>(true, false, var_2.c.b), vec3<bool>(true, var_0.b, true), false), !vec3<bool>(false, var_0.a.x, var_0.b), var_0.b), vec3<bool>(true, var_0.b, var_0.a.x), vec3<bool>(true, true, var_0.b)), (_wgslsmith_div_f32(var_1, 297f) > var_1) || true);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(203f, -560f))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1303f, -1232f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(178f, var_1)))) + vec2<f32>(_wgslsmith_f_op_f32(-var_1), var_1)))));
    var var_5 = var_2.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.c, 0i, var_0.c.x, u_input.c)), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(2147483647i, var_2.c.c.x, 53562i, var_2.c.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, 2147483647i, 2147483647i), vec4<i32>(var_2.b, var_0.c.x, u_input.c, 34649i)))) | ~vec4<i32>(-var_2.c.c.x, ~50609i, _wgslsmith_clamp_i32(u_input.c, 1i, -1i), var_0.c.x & 2147483647i), ~var_2.c.c.x, max(select(~_wgslsmith_div_vec4_u32(vec4<u32>(28767u, u_input.a.x, u_input.b, u_input.a.x), vec4<u32>(var_2.a.x, 145u, u_input.a.x, var_2.a.x)), ~(~vec4<u32>(1u, u_input.a.x, 67695u, 0u)), vec4<bool>(var_3.x, true, u_input.b <= var_2.a.x, true)), vec4<u32>(u_input.b, abs(var_2.a.x), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(var_2.a.x, 0u, 4294967295u))), var_2.a.x)));
}

