struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = abs(vec3<i32>(u_input.d, u_input.a, -u_input.a)) << (vec3<u32>(u_input.b, (~61749u & global0.d.x) >> (u_input.c.x % 32u), _wgslsmith_mod_u32(abs(global0.d.x) << (26906u % 32u), _wgslsmith_div_u32(firstTrailingBit(22248u), global0.a >> (43940u % 32u)))) % vec3<u32>(32u));
    let var_2 = !(!select(select(vec4<bool>(arg_0, arg_1, arg_1, arg_1), !vec4<bool>(true, false, arg_1, arg_1), true), !vec4<bool>(arg_0, var_0, arg_1, false), vec4<bool>(any(vec2<bool>(arg_1, false)), arg_1, true, true)));
    global0 = Struct_3(u_input.b, Struct_1(global0.e), global0.c, abs(~(~(~vec3<u32>(u_input.b, 4294967295u, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) - global0.e)) + _wgslsmith_f_op_f32(floor(global0.e))));
    let var_3 = var_2.x;
    return Struct_1(639f);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(-arg_1.a)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-253f - global0.b.a))))));
    global0 = Struct_3(global0.a << ((global0.a ^ ~1u) % 32u), func_2(all(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true))), _wgslsmith_f_op_f32(min(global0.e, -750f)) <= _wgslsmith_f_op_f32(f32(-1f) * -1242f)), abs(vec2<i32>(-(i32(-1i) * -57507i), global0.c.x & (-1i & u_input.d))), countOneBits(select(vec3<u32>(~u_input.b, u_input.b, _wgslsmith_clamp_u32(50418u, 68877u, 1u)), max(countOneBits(vec3<u32>(46464u, global0.a, 1u)), vec3<u32>(u_input.b, 1u, u_input.b)), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true))), -280f);
    let var_1 = all(!select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), vec3<bool>(select(false, false, true), 1u <= u_input.b, true), vec3<bool>(true, true, true)));
    var var_2 = global0.e;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e, 1454f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-239f, var_0))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a * var_0))))));
    return func_2(true, false);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(global0.d.x, global0.a, 1u) << (abs(firstTrailingBit(vec3<u32>(global0.a, u_input.c.x, global0.d.x))) % vec3<u32>(32u))), arg_2, vec2<i32>(_wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, 35689i, -1i, global0.c.x), vec4<i32>(-2147483647i, -2147483647i, 40579i, -8751i))), max(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.x, -34593i, arg_0), vec3<i32>(arg_0, global0.c.x, arg_0)), 84155i)), _wgslsmith_mult_i32(_wgslsmith_div_i32(abs(1i), global0.c.x), _wgslsmith_add_i32(~(-2147483647i), reverseBits(1i)))), ~(~(~vec3<u32>(49283u, 1u, 16982u))), _wgslsmith_f_op_f32(-global0.e));
    var var_0 = Struct_3(min(reverseBits(1u), ~25726u), global0.b, _wgslsmith_sub_vec2_i32(vec2<i32>(global0.c.x, 2147483647i), ~global0.c), ~vec3<u32>(63691u, 1u, ~(~47093u)), global0.e);
    global0 = Struct_3(32392u, Struct_1(-1082f), ~(var_0.c ^ vec2<i32>(var_0.c.x, _wgslsmith_sub_i32(19266i, 8467i))), vec3<u32>(var_0.d.x, _wgslsmith_div_u32(var_0.a, firstTrailingBit(u_input.c.x)), 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - var_0.b.a));
    var_0 = Struct_3(var_0.a, global0.b, -vec2<i32>(abs(firstTrailingBit(2147483647i)), -25947i), ~vec3<u32>(_wgslsmith_add_u32(~2271u, 1u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.d.x, var_0.a), ~0u), ~countOneBits(0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a * 503f))))));
    var_0 = Struct_3(~(firstTrailingBit(_wgslsmith_add_u32(var_0.d.x, var_0.d.x)) & 6040u), arg_1.a, ~vec2<i32>(firstLeadingBit(~var_0.c.x), select(15286i, 2147483647i, true)), ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(7722u, 22987u, 32779u)), var_0.d), _wgslsmith_f_op_f32(trunc(551f)));
    return Struct_3(~_wgslsmith_clamp_u32(max(~94381u, ~0u), max(12904u, global0.a), ~4294967295u), func_2(any(vec3<bool>(true, true, true)), !(_wgslsmith_f_op_f32(var_0.e + 490f) > 259f)), vec2<i32>(i32(-1i) * -abs(arg_0), -10341i), vec3<u32>(max(select(57352u, var_0.a, false), firstTrailingBit(global0.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 62177u, 1u), ~vec4<u32>(0u, global0.a, global0.a, 10246u)), abs(35065u)) ^ var_0.d, -1108f);
}

fn func_1(arg_0: u32) -> vec3<bool> {
    global0 = func_4(~u_input.d, Struct_2(global0.b, func_3(41500i, func_2(any(vec2<bool>(false, true)), true))), global0.b);
    global0 = func_4(7697i << (_wgslsmith_add_u32(reverseBits(global0.a), arg_0) % 32u), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0.b), func_4(_wgslsmith_sub_i32(~_wgslsmith_mult_i32(18582i, global0.c.x), ~(-2147483647i)), Struct_2(Struct_1(451f), Struct_1(_wgslsmith_f_op_f32(-global0.b.a))), global0.b).b);
    var var_0 = -1032f;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a, 356f, _wgslsmith_f_op_f32(-global0.e))));
    let var_2 = global0.b;
    return vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 1u <= ~global0.a)), true == any(vec4<bool>(any(vec2<bool>(false, false)), var_2.a == global0.e, true, all(vec3<bool>(true, false, false)))), select(true, false, firstTrailingBit(_wgslsmith_sub_u32(30245u, u_input.c.x)) > ~(~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(491f), Struct_1(186f));
    global0 = Struct_3(~(~4294967295u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a - var_0.b.a) - _wgslsmith_f_op_f32(-global0.b.a)) * -183f)), vec2<i32>(1i, _wgslsmith_div_i32(global0.c.x, global0.c.x) >> (u_input.c.x % 32u)), ~_wgslsmith_mult_vec3_u32(reverseBits(~global0.d), vec3<u32>(u_input.c.x, 12197u, u_input.b) ^ vec3<u32>(global0.d.x, global0.d.x, 9092u)), -1495f);
    let var_1 = _wgslsmith_div_vec3_u32(u_input.c, select(~(~_wgslsmith_add_vec3_u32(u_input.c, global0.d)), vec3<u32>(30245u, max(global0.a, max(global0.a, 4294967295u)), ~(~4294967295u)), select(func_1(74562u), vec3<bool>(global0.a <= u_input.b, any(vec2<bool>(true, false)), any(vec2<bool>(false, false))), _wgslsmith_f_op_f32(-789f - 175f) < var_0.a.a)));
    var var_2 = abs(vec2<u32>(~u_input.c.x, u_input.b));
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-435f, -760f, global0.e)))) - vec3<f32>(var_0.b.a, _wgslsmith_f_op_f32(-1000f - global0.b.a), var_0.b.a))));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a))), _wgslsmith_f_op_f32(-var_0.a.a));
    var var_5 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), _wgslsmith_mod_vec3_u32(countOneBits(min(~vec3<u32>(global0.a, 56635u, 154454u), vec3<u32>(var_1.x, 20393u, 1u))), _wgslsmith_add_vec3_u32(global0.d ^ vec3<u32>(u_input.b, var_2.x, 73140u), vec3<u32>(global0.a, var_2.x, global0.a) << (vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u))) ^ abs(u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-337f, var_4.x)))) + _wgslsmith_f_op_f32(abs(631f))), ~abs(reverseBits(~vec4<u32>(var_2.x, var_2.x, 1u, 0u))));
}

