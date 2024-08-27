struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-589f, vec4<i32>(i32(-2147483648), 0i, 1i, -1i), 4294967295u);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<f32>) -> u32 {
    var var_0 = vec3<bool>(true && any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)) && true, 18834u < _wgslsmith_clamp_u32(~87832u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, 47691u), vec3<u32>(4294967295u, u_input.a, arg_0.b)), vec3<u32>(u_input.e.x, 0u, u_input.a)), 4294967295u));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2) - _wgslsmith_f_op_vec3_f32(min(arg_0.d.wzz, vec3<f32>(_wgslsmith_f_op_f32(round(154f)), _wgslsmith_f_op_f32(global0.a + -464f), global0.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(ceil(global0.a))), global0.a, -388f) - arg_0.d.xzw)));
    var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-123f - -733f), _wgslsmith_f_op_f32(-1062f - 695f), all(vec3<bool>(var_0.x, var_0.x, var_0.x)))) - 1273f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_f_op_f32(step(1186f, global0.a)), var_1.x) + vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_2.x * 1119f), var_1.x)))));
    global0 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.d.x))))), max(~vec4<i32>(arg_0.a >> (u_input.a % 32u), reverseBits(u_input.d), countOneBits(global0.b.x), ~1i), abs(vec4<i32>(arg_1.x, arg_0.a, -arg_0.e.x, _wgslsmith_add_i32(29536i, global0.b.x)))), _wgslsmith_add_u32(~_wgslsmith_mod_u32(global0.c | 4294967295u, u_input.a | 13720u), 58516u));
    var var_2 = -arg_1.x;
    return ~global0.c;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    global0 = Struct_2(arg_2.d.x, min(_wgslsmith_mod_vec4_i32(firstTrailingBit(global0.b), global0.b), global0.b), arg_2.b);
    let var_0 = select(select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true), true), !select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), false), true), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, global0.c >= global0.c, true), vec4<bool>(all(vec3<bool>(true, true, true)), false, true, true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false)), vec4<bool>(true, true, min(global0.c, 478u) != 1u, !all(vec4<bool>(false, false, false, false)))));
    global0 = Struct_2(_wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(-arg_0.x))), ~vec4<i32>(22541i, countOneBits(u_input.b), _wgslsmith_sub_i32(arg_1.e.x, 1719i), -63033i), ~firstLeadingBit(arg_2.b));
    global0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1397f), -abs(global0.b) << (~(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 87986u, 64789u, arg_2.b), vec4<u32>(arg_1.b, arg_2.b, 28218u, arg_1.b)) ^ (vec4<u32>(0u, u_input.a, arg_1.b, arg_1.b) & vec4<u32>(1u, 20663u, 1u, u_input.e.x))) % vec4<u32>(32u)), arg_1.b);
    let var_1 = !var_0.x;
    return ~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, -19904i, global0.b.x, arg_2.e.x)), _wgslsmith_add_vec4_i32(global0.b, vec4<i32>(0i, global0.b.x, 86537i, 23864i)), ~vec4<i32>(global0.b.x, global0.b.x, 4056i, global0.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(global0.b.x, -8431i, arg_1.e.x, 41526i), global0.b)), -vec4<i32>(~41637i, max(u_input.d, 538i), global0.b.x, -arg_1.e.x));
}

fn func_2() -> vec4<i32> {
    global0 = Struct_2(_wgslsmith_f_op_f32(global0.a * global0.a), vec4<i32>(-12270i, _wgslsmith_div_i32(select(u_input.d, u_input.d, true) >> ((1u >> (0u % 32u)) % 32u), _wgslsmith_sub_i32(-1i | u_input.b, abs(global0.b.x))), _wgslsmith_div_i32(global0.b.x, firstTrailingBit(u_input.c.x)) >> ((_wgslsmith_clamp_u32(global0.c, 73077u, global0.c) ^ ~48168u) % 32u), global0.b.x), ~34305u);
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.a)) * _wgslsmith_div_f32(global0.a, global0.a))) * _wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(ceil(-2048f))))), ~func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, -1094f) - vec2<f32>(global0.a, 1743f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global0.a) * vec2<f32>(global0.a, global0.a))), Struct_1(_wgslsmith_dot_vec3_i32(global0.b.ywx, global0.b.wxw), func_3(Struct_1(0i, 92959u, global0.a, vec4<f32>(139f, global0.a, global0.a, global0.a), vec3<i32>(u_input.d, 1976i, 20825i)), vec4<i32>(-1i, global0.b.x, -24144i, global0.b.x), vec3<f32>(-1036f, global0.a, global0.a)), global0.a, vec4<f32>(global0.a, -1000f, global0.a, global0.a), vec3<i32>(u_input.b, u_input.c.x, -1i)), Struct_1(1i, 45185u, _wgslsmith_f_op_f32(floor(global0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -393f, global0.a, -1661f)), select(vec3<i32>(1i, global0.b.x, -9570i), global0.b.yzz, vec3<bool>(false, false, false)))), ~_wgslsmith_dot_vec2_u32(~u_input.e >> (select(vec2<u32>(1u, u_input.e.x), u_input.e, vec2<bool>(true, true)) % vec2<u32>(32u)), u_input.e));
    let var_0 = false;
    let var_1 = abs(u_input.b);
    global0 = Struct_2(544f, vec4<i32>(var_1, -1i, global0.b.x, _wgslsmith_dot_vec4_i32(global0.b, global0.b)), firstTrailingBit(_wgslsmith_div_u32(38705u, _wgslsmith_dot_vec3_u32(vec3<u32>(32586u, global0.c, 3395u), vec3<u32>(31994u, u_input.e.x, 1913u)))) | ~func_3(Struct_1(var_1, 0u, -538f, vec4<f32>(global0.a, global0.a, global0.a, global0.a), vec3<i32>(u_input.d, u_input.b, u_input.c.x)), max(vec4<i32>(var_1, 12160i, u_input.b, 2147483647i), vec4<i32>(global0.b.x, 0i, u_input.b, 2147483647i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 1000f, global0.a))));
    return -(~select(max(vec4<i32>(global0.b.x, global0.b.x, u_input.b, -15380i), global0.b), vec4<i32>(-u_input.c.x, min(-1i, global0.b.x), global0.b.x, 1i), false));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_3) -> vec4<bool> {
    global0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -165f), -1330f), vec4<i32>(_wgslsmith_dot_vec4_i32(global0.b, _wgslsmith_sub_vec4_i32(global0.b, vec4<i32>(-71954i, -1i, -48572i, global0.b.x)) >> (vec4<u32>(0u, arg_0, 103992u, global0.c) % vec4<u32>(32u))), -2147483647i, ~u_input.d, ~global0.b.x), firstLeadingBit(arg_0));
    var var_0 = -(_wgslsmith_sub_vec4_i32(func_2(), select(global0.b, vec4<i32>(-837i, u_input.d, 2147483647i, u_input.d), false) >> ((vec4<u32>(1u, 0u, global0.c, global0.c) ^ vec4<u32>(65121u, 1u, arg_0, global0.c)) % vec4<u32>(32u))) & ~(-firstTrailingBit(vec4<i32>(0i, 40548i, -13704i, u_input.c.x))));
    var_0 = ~abs((global0.b >> (abs(vec4<u32>(5934u, 0u, 1u, u_input.e.x)) % vec4<u32>(32u))) ^ global0.b);
    let var_1 = ~_wgslsmith_add_u32(_wgslsmith_add_u32(~arg_0, global0.c), ~_wgslsmith_sub_u32(~global0.c, 4294967295u >> (u_input.e.x % 32u)));
    let var_2 = firstLeadingBit(vec2<u32>(firstLeadingBit(~23127u), _wgslsmith_sub_u32(4294967295u, global0.c)));
    return !select(vec4<bool>(any(!vec3<bool>(false, arg_1.x, true)), !arg_1.x, _wgslsmith_sub_i32(u_input.b, -45619i) < _wgslsmith_dot_vec4_i32(global0.b, vec4<i32>(u_input.b, 1i, -2147483647i, -4718i)), all(select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, true), false))), select(!(!vec4<bool>(false, false, arg_1.x, arg_1.x)), !select(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, true, false), false), true), select(vec4<bool>(arg_1.x, arg_1.x | true, arg_1.x, arg_1.x), vec4<bool>(any(vec4<bool>(arg_1.x, true, false, arg_1.x)), true, arg_1.x, !arg_1.x), vec4<bool>(arg_1.x, select(true, true, arg_1.x), any(vec3<bool>(false, arg_1.x, true)), all(vec4<bool>(false, false, arg_1.x, arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(global0.c, vec2<bool>(true, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a))), _wgslsmith_f_op_f32(-1157f + _wgslsmith_f_op_f32(f32(-1f) * -3025f)))), Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1581f, global0.a))), _wgslsmith_f_op_f32(-482f * _wgslsmith_f_op_f32(round(global0.a)))));
    var var_1 = !select(var_0.wzy, vec3<bool>(!var_0.x, func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.a, global0.c, 1u), vec4<u32>(global0.c, global0.c, u_input.e.x, 4294967295u)), vec2<bool>(false, true), _wgslsmith_f_op_f32(ceil(-1000f)), Struct_3(vec2<f32>(global0.a, global0.a), 702f)).x, true), vec3<bool>(var_0.x, var_0.x, false));
    var var_2 = Struct_1(global0.b.x, firstLeadingBit(u_input.e.x), global0.a, vec4<f32>(global0.a, _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(219f))))), global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - -990f)))), _wgslsmith_mod_vec3_i32(select(vec3<i32>(_wgslsmith_dot_vec2_i32(global0.b.zx, global0.b.wz), _wgslsmith_dot_vec2_i32(u_input.c, u_input.c), -u_input.b), abs(reverseBits(vec3<i32>(54198i, global0.b.x, 2147483647i))), !(!vec3<bool>(var_1.x, var_0.x, true))), vec3<i32>(-2147483647i, u_input.c.x, -u_input.c.x >> (~15956u % 32u))));
    var_2 = Struct_1(select(u_input.c.x, var_2.a, true), var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(376f, _wgslsmith_f_op_f32(max(var_2.d.x, -987f))) + _wgslsmith_f_op_f32(var_2.d.x * 369f)) + 1543f), vec4<f32>(-402f, _wgslsmith_f_op_f32(global0.a * -642f), _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-136f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x - -1632f) - global0.a))), vec3<i32>(-1i, global0.b.x, _wgslsmith_dot_vec3_i32(-global0.b.wxx, vec3<i32>(var_2.a, u_input.c.x, -1i) << (vec3<u32>(1u, var_2.b, 4294967295u) % vec3<u32>(32u)))) & vec3<i32>(-1i, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-433f, -316f) - var_2.d.zw), Struct_1(-2147483647i, var_2.b, 1000f, var_2.d, vec3<i32>(u_input.c.x, u_input.c.x, var_2.a)), Struct_1(-22625i, 39246u, 339f, var_2.d, vec3<i32>(0i, -2147483647i, 2147483647i))).x, -36693i));
    let var_3 = Struct_1(func_4(_wgslsmith_f_op_vec2_f32(abs(var_2.d.wy)), Struct_1(var_2.a, ~countOneBits(var_2.b), 1873f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(788f, 459f, 1000f, var_2.c)) * vec4<f32>(-753f, var_2.c, global0.a, var_2.d.x)), _wgslsmith_div_vec3_i32(~global0.b.zxx, ~vec3<i32>(-2147483647i, global0.b.x, var_2.e.x))), Struct_1(-1i, var_2.b, _wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.c, var_2.d.x, global0.a, var_2.c))), vec3<i32>(_wgslsmith_dot_vec2_i32(var_2.e.yx, vec2<i32>(var_2.a, global0.b.x)), global0.b.x, _wgslsmith_add_i32(-56478i, u_input.c.x)))).x, _wgslsmith_mult_u32(4294967295u, var_2.b & 2239u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1262f, _wgslsmith_f_op_f32(global0.a - 1000f)))), -861f), var_2.d, _wgslsmith_div_vec3_i32(select(reverseBits(-vec3<i32>(global0.b.x, -2147483647i, var_2.e.x)), vec3<i32>(-15662i, u_input.d, -11184i) >> (~vec3<u32>(var_2.b, 1u, 77510u) % vec3<u32>(32u)), var_0.zzz), -_wgslsmith_add_vec3_i32(vec3<i32>(-28031i, var_2.a, var_2.a), vec3<i32>(u_input.b, u_input.b, global0.b.x))));
    let var_4 = -827f;
    let var_5 = _wgslsmith_sub_u32(29325u, 4553u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(60790u ^ global0.c)), global0.b, ~(~(var_5 & ~global0.c)), ~(~_wgslsmith_add_vec3_u32(~vec3<u32>(global0.c, 0u, 26583u), ~vec3<u32>(4294967295u, 10150u, var_2.b))), vec4<i32>(func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(-var_3.c)), Struct_1(-global0.b.x, _wgslsmith_dot_vec2_u32(u_input.e, u_input.e), _wgslsmith_f_op_f32(611f * -912f), var_3.d, ~var_3.e), var_3).x, u_input.d, _wgslsmith_add_i32(-27323i, _wgslsmith_sub_i32(global0.b.x, _wgslsmith_add_i32(-1i, var_2.e.x))), u_input.d));
}

