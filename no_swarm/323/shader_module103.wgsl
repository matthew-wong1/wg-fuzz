struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = Struct_1(u_input.b.x >> (24677u % 32u), min(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 4294967295u), vec2<u32>(0u, u_input.d) | vec2<u32>(u_input.d, 70046u)), 23881u), abs(vec2<u32>(u_input.a << (u_input.d % 32u), 28457u))), _wgslsmith_f_op_f32(arg_0.c.x - -401f), _wgslsmith_dot_vec3_u32(vec3<u32>(select(u_input.c, u_input.d, false) ^ abs(u_input.d), u_input.c & 0u, 10767u), ~(~vec3<u32>(61969u, 1u, 14040u))), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_1 = var_0.d;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_0.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, -378f) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c, -1290f))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(arg_0.a)), _wgslsmith_f_op_vec4_f32(arg_0.c * arg_0.c), vec4<bool>(true, var_0.e, var_0.e, true))), arg_0.c, !var_0.e | true)), _wgslsmith_f_op_vec4_f32(select(arg_0.a, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-917f, var_0.c, -385f, 329f))), vec4<bool>(var_0.a > var_0.a, select(true, false, false), var_0.a != 26074i, false))), !var_0.e)));
    let var_3 = min(select(vec2<i32>(-var_0.a, -u_input.b.x), u_input.b, true) >> ((var_0.b >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a), var_0.b) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_clamp_i32(var_0.a, -5297i, u_input.b.x), 35407i));
    var var_4 = var_0;
    return !(!select(select(!vec4<bool>(true, false, var_4.e, var_0.e), !vec4<bool>(var_4.e, false, var_4.e, var_4.e), !vec4<bool>(true, var_0.e, var_4.e, false)), select(select(vec4<bool>(true, var_0.e, true, false), vec4<bool>(var_4.e, true, true, false), vec4<bool>(false, var_0.e, var_4.e, true)), !vec4<bool>(var_4.e, var_4.e, true, var_4.e), var_0.e), any(vec3<bool>(false, false, var_4.e))));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = vec4<u32>(11436u, ~(~u_input.a), ~abs(25496u), 0u);
    var var_1 = ~vec4<u32>(abs(abs(select(arg_0, 4294967295u, false))), ~1u >> (arg_0 % 32u), u_input.c, 0u);
    var_1 = vec4<u32>(var_0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(arg_0, arg_0, 36313u, 1u), vec4<u32>(1u, 88667u, u_input.a, var_1.x)) & vec4<u32>(115971u, 1u, 4294967295u, 37844u), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(13947u, 4294967295u, var_1.x, 0u), vec4<u32>(arg_0, var_1.x, var_0.x, u_input.d)), vec4<u32>(0u, var_1.x, 4294967295u, u_input.c))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, reverseBits(var_1.x), abs(0u), 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 1u, 85471u, 6571u), vec4<u32>(u_input.d, 37370u, 47302u, var_0.x) & vec4<u32>(1u, 4294967295u, 17574u, var_1.x)))), arg_0, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_1.wyy, ~(~var_1.wwy)), ~_wgslsmith_dot_vec3_u32(~var_0.yxw, max(vec3<u32>(arg_0, arg_0, 18963u), var_1.xxw))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(1111f, -988f)), -232f, _wgslsmith_div_f32(-1969f, 143f), -893f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2175f, -130f))), vec2<f32>(-134f, 1000f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-285f, 544f))) * vec2<f32>(-1301f, -575f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(775f)), _wgslsmith_div_f32(2098f, -771f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1604f, 1080f, false)))))), 675f, _wgslsmith_f_op_f32(1099f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1464f))))));
    var var_3 = !select(!select(func_3(Struct_2(var_2.c, var_2.c.yz, vec4<f32>(-2156f, var_2.a.x, 1613f, var_2.a.x))), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), false), vec4<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true)), select(true, true, any(vec4<bool>(false, true, false, true))), true, true), vec4<bool>(true, true, true, true));
    return Struct_1(-arg_1.x, vec2<u32>((var_0.x << (firstLeadingBit(var_1.x) % 32u)) >> (1u % 32u), arg_0), var_2.c.x, arg_0, true | (arg_1.x <= -countOneBits(arg_1.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<u32> {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_div_f32(182f, -374f), 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(func_2(arg_1.x, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)).c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c, arg_0.c)) + -524f) - arg_0.c)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(arg_0.c, -109f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.c + -193f), 773f, _wgslsmith_f_op_f32(ceil(arg_0.c)), _wgslsmith_f_op_f32(arg_0.c - arg_0.c)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1334f, arg_0.c, -483f, arg_0.c), vec4<f32>(arg_0.c, arg_0.c, -547f, 386f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-767f, -542f, arg_0.c, -290f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(375f, -1000f, 489f, arg_0.c), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(883f, arg_0.c, arg_0.c, 611f), vec4<f32>(arg_0.c, -756f, 258f, -954f)))))))));
    var var_1 = _wgslsmith_dot_vec3_u32(reverseBits(firstTrailingBit(vec3<u32>(~1u, min(67993u, arg_0.d), arg_0.d & arg_0.d))), ~vec3<u32>(17156u, _wgslsmith_div_u32(~304u, ~arg_0.d), select(_wgslsmith_dot_vec4_u32(vec4<u32>(1344u, 2723u, arg_1.x, u_input.d), vec4<u32>(arg_1.x, 79389u, arg_1.x, 1u)), countOneBits(1u), false && arg_0.e)));
    let var_2 = Struct_3(func_2(firstLeadingBit(max(_wgslsmith_div_u32(u_input.a, 42741u), u_input.c)), _wgslsmith_sub_vec3_i32(-vec3<i32>(0i, u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.b.x, arg_0.a, -6975i)), vec3<i32>(-22577i, 2147483647i, 7455i), select(vec3<i32>(-28287i, -6320i, 2147483647i), vec3<i32>(arg_0.a, 2147483647i, 11353i), vec3<bool>(false, arg_0.e, true))))), vec4<i32>(max(arg_0.a, arg_0.a) | ~(-1i & arg_0.a), _wgslsmith_mod_i32(u_input.b.x, arg_0.a), min(116542i, arg_0.a) >> (0u % 32u), _wgslsmith_mult_i32(func_2(arg_0.b.x, select(vec3<i32>(u_input.b.x, -33106i, -1i), vec3<i32>(u_input.b.x, arg_0.a, u_input.b.x), vec3<bool>(arg_0.e, arg_0.e, true))).a, ~_wgslsmith_mult_i32(-22344i, arg_0.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(845f)) * _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-109f * -743f), _wgslsmith_f_op_f32(-arg_0.c))), func_3(Struct_2(var_0.a, var_0.b, vec4<f32>(var_0.b.x, 168f, -338f, 528f))).x))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-var_0.a.x), -924f);
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(round(var_2.a.c)))), -1016f, arg_0.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a.c))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_div_f32(var_2.a.c, 1932f)), vec2<f32>(arg_0.c, arg_0.c), select(vec2<bool>(false, arg_0.e), !vec2<bool>(true, var_2.a.e), vec2<bool>(arg_0.e, false)))) - _wgslsmith_f_op_vec2_f32(ceil(var_0.b))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.c.x, var_0.c.x)) * _wgslsmith_f_op_f32(ceil(var_3.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-951f))), 1102f, -1846f));
    return ~(vec4<u32>(_wgslsmith_mult_u32(1u, u_input.c), ~_wgslsmith_dot_vec2_u32(arg_0.b, vec2<u32>(37206u, u_input.d)), arg_0.b.x, ~func_2(0u, var_2.b.xzz).d) ^ select(~_wgslsmith_add_vec4_u32(vec4<u32>(19778u, 56090u, 12941u, 33085u), vec4<u32>(arg_0.b.x, 62405u, 84276u, 1u)), firstLeadingBit(vec4<u32>(54051u, 4294967295u, arg_1.x, arg_1.x)), func_2(~var_2.a.d, vec3<i32>(var_2.a.a, var_2.b.x, -4034i)).e));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> bool {
    let var_0 = func_4(func_2(_wgslsmith_sub_u32(min(0u, arg_1.b.x), firstLeadingBit(_wgslsmith_mod_u32(0u, u_input.c))), vec3<i32>(u_input.b.x >> (u_input.d % 32u), -25585i, -2147483647i) & ~(vec3<i32>(u_input.b.x, 1i, arg_1.a) | vec3<i32>(0i, arg_3, arg_3))), countOneBits(~(~vec2<u32>(4294967295u, u_input.c))) ^ min(arg_1.b, ~vec2<u32>(arg_1.d, arg_1.d)));
    let var_1 = arg_0;
    var var_2 = abs(vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, arg_1.a), -77127i, _wgslsmith_clamp_i32(-arg_1.a ^ _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1.a, -2147483647i, 0i), vec4<i32>(arg_3, u_input.b.x, 1i, arg_1.a)), arg_3, 1i | firstTrailingBit(37586i))));
    var var_3 = vec3<u32>(arg_1.b.x, ~(~(~var_0.x & ~1u)), 0u);
    var_2 = -select(_wgslsmith_mult_vec3_i32(~vec3<i32>(-28066i, arg_1.a, arg_1.a), abs(-vec3<i32>(0i, arg_1.a, -1i))), select(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.a, arg_3, arg_1.a) | vec3<i32>(u_input.b.x, var_2.x, u_input.b.x), vec3<i32>(var_2.x, -8384i, -6405i) & vec3<i32>(u_input.b.x, -1i, 1241i)), vec3<i32>(-6467i, arg_1.a, 0i) ^ vec3<i32>(arg_3, arg_1.a, var_2.x), func_2(4294967295u, vec3<i32>(13134i, arg_1.a, var_2.x)).e), !all(!vec4<bool>(true, arg_1.e, false, arg_1.e)));
    return _wgslsmith_add_i32(-2790i, var_2.x) <= _wgslsmith_div_i32(~var_2.x, _wgslsmith_add_i32(-(i32(-1i) * -102350i), firstTrailingBit(16096i)));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_1.xwz))) * arg_1.wxw));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1413f * 477f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.c.x * -1000f), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1383f) - _wgslsmith_f_op_f32(-arg_2.a.c)), var_1.x) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -412f), arg_1.x, arg_2.a.c, var_1.x), _wgslsmith_f_op_vec4_f32(trunc(arg_1))))));
    var_0 = 71296u;
    var_0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c, 37121u, arg_2.a.d), vec3<u32>(arg_2.a.d, u_input.d, 78442u), abs(vec3<u32>(arg_2.a.d, 0u, u_input.c))), ~(vec3<u32>(u_input.c, u_input.d, 1u) << (select(vec3<u32>(u_input.d, arg_2.a.d, arg_2.a.d), vec3<u32>(56854u, 24331u, arg_2.a.b.x), vec3<bool>(true, arg_2.a.e, arg_2.a.e)) % vec3<u32>(32u)))) | 1u;
    return arg_2.a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.c.x - arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -280f))), _wgslsmith_f_op_f32(floor(988f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1152f)), arg_0.c))))), arg_1.c);
    let var_1 = arg_0;
    let var_2 = arg_1.a.x;
    var var_3 = ~_wgslsmith_add_u32(var_1.d, _wgslsmith_mod_u32(func_4(var_1, _wgslsmith_add_vec2_u32(vec2<u32>(var_1.b.x, 50506u), vec2<u32>(33966u, arg_0.d))).x, 18042u));
    var_3 = _wgslsmith_clamp_u32(52891u, ~4294967295u, abs(u_input.c));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), vec2<i32>(-2147483647i, -2147483647i)), u_input.b) >> (vec2<u32>(~u_input.c, abs(u_input.a)) % vec2<u32>(32u)), u_input.b);
    var var_1 = 2058f;
    var var_2 = func_6(func_5(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-21396i, var_0.x, u_input.b.x), vec3<i32>(u_input.b.x, var_0.x, var_0.x))) << (countOneBits(~vec3<u32>(774u, 4481u, u_input.c)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2592f, -1424f, 772f, -1266f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1331f, -993f, 407f, 897f), vec4<f32>(-1000f, -1898f, 612f, 478f))), vec4<bool>(func_1(Struct_2(vec4<f32>(768f, -2604f, -325f, 350f), vec2<f32>(-1536f, -1366f), vec4<f32>(131f, -649f, 1184f, -482f)), Struct_1(u_input.b.x, vec2<u32>(u_input.a, 0u), -283f, 1u, true), -1176f, var_0.x), true, true, true))), Struct_3(func_2(func_4(Struct_1(var_0.x, vec2<u32>(46797u, u_input.a), 192f, 10983u, true), vec2<u32>(63703u, 37398u)).x, select(vec3<i32>(var_0.x, -1i, u_input.b.x), vec3<i32>(var_0.x, u_input.b.x, var_0.x), false)), -vec4<i32>(8274i, var_0.x, var_0.x, -23886i) >> (max(vec4<u32>(4294967295u, u_input.a, u_input.c, 6806u), vec4<u32>(u_input.c, u_input.a, u_input.a, 1u)) % vec4<u32>(32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1273f, -840f))), vec2<f32>(1229f, 237f)))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1031f, -531f, 219f, 1045f), vec4<f32>(-618f, 212f, 1276f, 338f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-556f, 1406f, 1230f, 626f) * vec4<f32>(2303f, -815f, -766f, 163f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1296f, 1078f, -1620f, 190f), vec4<f32>(968f, -1802f, 1818f, 1199f)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2140f, -108f), vec2<f32>(759f, 2527f), vec2<bool>(true, false)))))), vec4<f32>(-279f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -622f) + _wgslsmith_f_op_f32(f32(-1f) * -620f)), func_5(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_0.x, u_input.b.x), vec3<i32>(-48455i, var_0.x, -1i)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(990f, -1242f, -895f, -716f), vec4<f32>(-328f, -765f, 1389f, -448f), vec4<bool>(false, false, false, true))), Struct_3(Struct_1(1i, vec2<u32>(4294967295u, 4294967295u), 232f, 4294967295u, true), vec4<i32>(u_input.b.x, var_0.x, -2147483647i, -1i), vec2<f32>(-715f, -557f))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1909f + 506f) * _wgslsmith_f_op_f32(714f + -969f)))), vec3<i32>(2147483647i, u_input.b.x ^ (-1i << (func_5(vec3<i32>(var_0.x, u_input.b.x, -3717i), vec4<f32>(-302f, -521f, 3169f, 1262f), Struct_3(Struct_1(u_input.b.x, vec2<u32>(u_input.c, 0u), -1751f, 4294967295u, false), vec4<i32>(var_0.x, u_input.b.x, 3100i, var_0.x), vec2<f32>(-816f, -207f))).b.x % 32u)), var_0.x));
    let var_3 = u_input.d << (u_input.c % 32u);
    let var_4 = func_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, var_3, var_3)), vec3<u32>(u_input.d ^ u_input.a, 26969u, firstTrailingBit(1u))), ~0u), ~firstTrailingBit(_wgslsmith_mult_vec3_i32(select(vec3<i32>(0i, -2147483647i, var_0.x), vec3<i32>(u_input.b.x, var_0.x, u_input.b.x), vec3<bool>(true, true, false)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 2147483647i, 1342i), vec3<i32>(u_input.b.x, -2147483647i, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, ~_wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.d, u_input.a, 1u) & vec3<u32>(7205u, 38225u, 12179u), ~vec3<u32>(1u, u_input.c, u_input.d)), ~(~vec3<u32>(var_3, var_4.d, u_input.a))), var_4.b.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1318f, var_4.c)) - -1729f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-927f)))), var_4.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1713f * -290f), func_5(vec3<i32>(var_4.a, u_input.b.x, 0i), var_2.c, Struct_3(var_4, vec4<i32>(var_4.a, -2147483647i, 1i, var_4.a), var_2.a.yw)).c)), ~countOneBits(var_4.b));
}

