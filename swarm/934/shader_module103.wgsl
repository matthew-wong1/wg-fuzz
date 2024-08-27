struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-28115i, 1i, 38026i, 69177i), -40503i, 150977u, -298f, 58170u);

var<private> global1: bool = true;

var<private> global2: array<Struct_3, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> u32 {
    var var_0 = global0.a.x | _wgslsmith_add_i32(-_wgslsmith_mod_i32(10284i, global0.a.x), ~u_input.b.x);
    let var_1 = Struct_2(-u_input.b.x < abs(u_input.b.x), Struct_1((~vec4<i32>(global0.a.x, -1i, -1i, -2147483647i) << (countOneBits(vec4<u32>(1u, u_input.c, global0.c, 29413u)) % vec4<u32>(32u))) & ~global0.a, -2147483647i, u_input.c, -571f, ~min(73674u, global0.e)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-541f, 2074f, 972f), vec3<f32>(-344f, 198f, global0.d))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, global0.d, -1978f), vec3<f32>(-1119f, global0.d, -610f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-724f)), global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d * -1728f) + _wgslsmith_f_op_f32(min(1296f, -1661f))))), _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.d)) - -377f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(f32(-1f) * -1341f)))), Struct_1(global0.a, global0.a.x, 1u, _wgslsmith_f_op_f32(-global0.d), _wgslsmith_sub_u32(firstTrailingBit(0u), u_input.a << (_wgslsmith_mult_u32(8035u, 16828u) % 32u))));
    let var_2 = false || any(vec3<bool>(var_1.a, any(!vec3<bool>(arg_1, true, false)), var_1.a));
    var_0 = -u_input.b.x >> (_wgslsmith_div_u32(firstTrailingBit(44983u), arg_0.x) % 32u);
    let var_3 = Struct_2(true, var_1.b, var_1.c, 775f, var_1.e);
    return select(abs(28555u), u_input.c, true);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = ~(~func_3(vec2<u32>(min(u_input.c, 4294967295u), ~8500u), false));
    let var_1 = global2[_wgslsmith_index_u32(select(global0.c & (_wgslsmith_div_u32(global0.e, 2677u) >> (arg_0 % 32u)), 53640u, any(vec3<bool>(true, _wgslsmith_f_op_f32(global0.d * 355f) > _wgslsmith_f_op_f32(global0.d + global0.d), true))), 5u)];
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(191f))))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d + 294f));
    var var_4 = !(!vec4<bool>(-118f > _wgslsmith_f_op_f32(var_2 + -1173f), false, firstTrailingBit(1u) <= var_1.b.b.c, true));
    return var_1.b.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<f32>) -> vec3<i32> {
    global1 = true;
    var var_0 = func_2(arg_1.c);
    global0 = Struct_1(vec4<i32>(max(-2147483647i, ~global0.a.x), _wgslsmith_add_i32(global0.a.x, 1i) & var_0.b, 52064i, ~u_input.b.x) & vec4<i32>(40127i, 0i, 2147483647i, _wgslsmith_sub_i32(~0i, var_0.b)), arg_1.b, arg_1.e << (_wgslsmith_dot_vec4_u32(vec4<u32>(107925u, _wgslsmith_clamp_u32(90806u, arg_1.e, arg_0.x), 27777u, firstLeadingBit(91313u)), select(~vec4<u32>(global0.e, u_input.a, 14320u, 34451u), ~vec4<u32>(var_0.c, 4294967295u, global0.c, u_input.a), all(vec4<bool>(false, false, true, false)))) % 32u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.d + global0.d))), _wgslsmith_mod_u32(85914u, var_0.c));
    let var_1 = !(!(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true)));
    let var_2 = Struct_2(all(var_1.xy), Struct_1(max(vec4<i32>(global0.b, arg_1.a.x, _wgslsmith_div_i32(1i, arg_1.b), -14496i & global0.b), _wgslsmith_sub_vec4_i32(min(vec4<i32>(-1i, global0.a.x, -14819i, global0.b), arg_1.a), ~vec4<i32>(global0.b, 65581i, var_0.a.x, global0.b))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_0.a.x, global0.a.x), vec3<i32>(31738i, global0.a.x, u_input.b.x)), vec3<i32>(-28800i, global0.a.x, global0.b)) << (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 96097u, 1u), vec3<u32>(0u, var_0.e, var_0.e)), _wgslsmith_sub_vec3_u32(vec3<u32>(75537u, 1u, global0.c), vec3<u32>(arg_0.x, 3349u, global0.c))) % 32u), firstTrailingBit(~_wgslsmith_mod_u32(var_0.e, arg_0.x)), arg_2.x, arg_1.e), vec3<f32>(arg_1.d, arg_1.d, _wgslsmith_f_op_f32(abs(global0.d))), _wgslsmith_div_f32(global0.d, global0.d), Struct_1(vec4<i32>(firstLeadingBit(global0.a.x), _wgslsmith_dot_vec4_i32(global0.a, global0.a), _wgslsmith_mod_i32(u_input.b.x, global0.a.x), -38235i) & vec4<i32>(global0.a.x, -51252i, countOneBits(arg_1.b), abs(var_0.a.x)), 25724i, 0u, _wgslsmith_f_op_f32(f32(-1f) * -887f), ~(~0u ^ _wgslsmith_mod_u32(arg_0.x, arg_1.e))));
    return ~firstLeadingBit(vec3<i32>(-1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_2.b.a.x), arg_1.a.wy), 0i));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: i32) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(func_4(~(vec2<u32>(u_input.a, 0u) ^ vec2<u32>(u_input.a, 28941u)), func_2(0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(348f, global0.d) * vec2<f32>(global0.d, global0.d))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(451f, 328f, global0.d, -1256f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-435f, global0.d, global0.d, global0.d) * vec4<f32>(global0.d, global0.d, 2061f, 257f)))), global0.a.xxy, _wgslsmith_div_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-23064i, arg_2, u_input.b.x), vec3<i32>(u_input.b.x, global0.a.x, global0.b), global0.a.wxx), select(global0.a.yxy & global0.a.xwx, vec3<i32>(2147483647i, 21070i, u_input.b.x), arg_1.x))), firstLeadingBit(global0.a.xzx));
    var var_1 = global2[_wgslsmith_index_u32(global0.e, 5u)];
    global1 = true;
    let var_2 = abs(global0.c);
    global1 = all(vec4<bool>(all(!(!arg_1.xxz)), !arg_1.x, true, ((58823u >= global0.c) | true) && (_wgslsmith_dot_vec2_u32(vec2<u32>(7432u, 0u), vec2<u32>(0u, 14693u)) >= ~50898u)));
    return Struct_2(!var_1.b.a, Struct_1(vec4<i32>(1i, u_input.b.x, var_0.x, firstLeadingBit(u_input.b.x)), ~reverseBits(_wgslsmith_div_i32(u_input.b.x, 0i)), 1u, _wgslsmith_f_op_f32(-458f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a + var_1.b.c.x), 248f, !arg_1.x))), abs(var_2)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(var_1.b.c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-956f, -584f, 904f))))), vec3<bool>(!arg_1.x, global0.a.x <= arg_2, var_1.b.e.b > global0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-116f + global0.d)))), var_1.b.b);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~vec2<i32>(firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0.b.b, u_input.b.x), countOneBits(5622i))), -_wgslsmith_clamp_i32(-u_input.b.x, max(global0.a.x, -1i), ~(-2147483647i)));
    var var_1 = arg_0.e;
    var var_2 = Struct_3(var_1.d, Struct_2(!(!(!arg_0.a)), func_2(u_input.a), _wgslsmith_f_op_vec3_f32(round(func_1(32478u, vec4<bool>(false, arg_0.a, true, arg_0.a), max(-44791i, -10265i)).c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1030f, -1000f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2107f - var_1.d)))), func_2(~1u)));
    var_2 = global2[_wgslsmith_index_u32(~global0.c, 5u)];
    let var_3 = vec4<bool>(arg_0.a, all(vec4<bool>(!var_2.b.a & false, var_2.b.a, var_2.b.a, arg_0.a)), !arg_0.a, arg_0.a);
    return Struct_2(var_2.b.a, Struct_1(select(-(~arg_0.b.a), ~var_2.b.b.a, true), 1i | arg_0.e.a.x, var_1.e, _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a * var_1.d), 605f)), 14189u), arg_0.c, var_2.b.e.d, Struct_1(vec4<i32>(var_1.b, 2147483647i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.e.c, 229u, u_input.c, var_1.e), vec4<u32>(u_input.c, u_input.a, u_input.a, 1u)) % 32u), global0.b, abs(-4150i)), -1i, 0u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1251f))))), 0u));
}

fn func_6(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = ~vec2<i32>(arg_2.b.a.x, _wgslsmith_add_i32(u_input.b.x, -(i32(-1i) * -2421i)));
    let var_1 = _wgslsmith_f_op_f32(-arg_3.c.x);
    var var_2 = arg_2;
    let var_3 = ~33584i;
    var var_4 = 24995i;
    return func_5(arg_3).e;
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    var var_0 = func_5(Struct_2(true, func_6(max(firstTrailingBit(vec2<u32>(global0.e, 1u)), vec2<u32>(0u, arg_2.e)), ~4294967295u, func_1(~global0.e, select(vec4<bool>(arg_3.a, false, arg_3.a, false), vec4<bool>(arg_3.a, arg_3.a, true, arg_3.a), true), global0.b), Struct_2(false, arg_0, _wgslsmith_div_vec3_f32(arg_3.c, arg_3.c), _wgslsmith_f_op_f32(max(1051f, 467f)), func_2(arg_2.e))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 312f, arg_3.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.d, -252f, false)) + _wgslsmith_f_op_f32(-arg_0.d)) - 178f), func_1(u_input.c, select(!vec4<bool>(true, arg_3.a, false, arg_3.a), vec4<bool>(true, arg_3.a, true, true), !arg_3.a), _wgslsmith_sub_i32(arg_2.a.x, firstLeadingBit(arg_3.e.b))).b));
    global1 = !any(!vec3<bool>(-4054i <= arg_0.a.x, u_input.a > 4294967295u, var_0.a));
    global0 = arg_0;
    let var_1 = Struct_2(select(var_0.e.e > var_0.b.c, all(select(select(vec2<bool>(false, var_0.a), vec2<bool>(true, false), true), select(vec2<bool>(arg_3.a, arg_3.a), vec2<bool>(var_0.a, arg_3.a), var_0.a), select(vec2<bool>(true, var_0.a), vec2<bool>(true, var_0.a), vec2<bool>(false, false)))), arg_3.a), arg_0, _wgslsmith_f_op_vec3_f32(ceil(arg_3.c)), arg_2.d, Struct_1(~global0.a, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(4449i, global0.b, global0.b, arg_2.b), _wgslsmith_sub_vec4_i32(global0.a, global0.a)), arg_3.b.a), u_input.a, _wgslsmith_f_op_f32(func_6(~vec2<u32>(var_0.e.c, var_0.b.c), arg_2.e, func_1(arg_0.c, vec4<bool>(true, arg_3.a, arg_3.a, false), 0i), Struct_2(arg_3.a, var_0.b, arg_3.c, -1000f, Struct_1(vec4<i32>(1i, var_0.e.b, 0i, var_0.b.b), arg_0.b, global0.c, global0.d, arg_2.c))).d + 1f), global0.e | ~firstLeadingBit(arg_0.e)));
    var var_2 = 0i;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    global1 = func_7(func_6(max(vec2<u32>(u_input.a, _wgslsmith_add_u32(u_input.c, 42069u)), ~vec2<u32>(14209u, global0.c) | vec2<u32>(u_input.c, 4294967295u)), u_input.c, func_5(func_1(global0.c, vec4<bool>(true, true, true, true), _wgslsmith_clamp_i32(global0.b, global0.b, 2147483647i))), Struct_2(select(true, any(vec2<bool>(false, false)), true), Struct_1(global0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, 2147483647i, -1i), global0.a.yzy), u_input.c, _wgslsmith_f_op_f32(global0.d - -233f), u_input.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, global0.d, -140f) - vec3<f32>(global0.d, global0.d, -368f))), 289f, func_1(global0.c, select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true), -57678i).b)), _wgslsmith_div_f32(_wgslsmith_div_f32(339f, _wgslsmith_div_f32(-676f, global0.d)), global0.d), func_2(u_input.a), Struct_2(false, Struct_1(-global0.a, func_1(3952u, vec4<bool>(true, false, false, false), u_input.b.x | 0i).b.a.x, countOneBits(func_1(1u, vec4<bool>(true, false, false, true), -4629i).e.e), _wgslsmith_f_op_f32(-367f * global0.d), _wgslsmith_dot_vec2_u32(select(vec2<u32>(100908u, global0.e), vec2<u32>(global0.e, 20292u), vec2<bool>(true, true)), abs(vec2<u32>(69741u, u_input.a)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-977f, -520f, _wgslsmith_f_op_f32(min(global0.d, 197f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-941f, global0.d, 956f) - vec3<f32>(533f, 657f, 479f)))), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(396f, -361f, true)), _wgslsmith_f_op_f32(step(268f, global0.d)))))), func_6(vec2<u32>(1u, firstLeadingBit(global0.e)), firstTrailingBit(1u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(24438u, 4294967295u, 30632u), vec3<u32>(global0.e, 1u, 28940u)) % 32u), Struct_2(-2119f >= global0.d, func_5(Struct_2(false, Struct_1(vec4<i32>(-17371i, 1488i, u_input.b.x, -5175i), -46917i, u_input.a, -251f, global0.e), vec3<f32>(1250f, global0.d, -428f), global0.d, Struct_1(global0.a, 48402i, u_input.c, global0.d, 0u))).e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-437f, -2193f, 387f)), global0.d, func_2(u_input.a)), Struct_2(true, Struct_1(vec4<i32>(0i, global0.a.x, -16564i, u_input.b.x), 36231i, 62591u, global0.d, 30540u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, global0.d, global0.d)), func_1(1u, vec4<bool>(false, true, true, true), 82802i).c.x, func_2(27254u)))));
    let var_1 = _wgslsmith_add_i32((i32(-1i) * -1i) | global0.a.x, -2147483647i);
    global1 = !(false != !(u_input.a > _wgslsmith_mult_u32(global0.c, 3616u)));
    let var_2 = func_1(~global0.c, vec4<bool>(u_input.c >= global0.c, u_input.b.x < var_1, all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))) != true, true), -_wgslsmith_dot_vec3_i32(global0.a.yyw, ~vec3<i32>(var_1, var_1, 1i))).e;
    var var_3 = vec2<bool>(func_7(func_5(Struct_2(true, Struct_1(global0.a, global0.a.x, u_input.a, 1446f, 1u), vec3<f32>(-845f, global0.d, -226f), var_2.d, var_2)).b, var_2.d, var_2, Struct_2(func_5(Struct_2(true, var_2, vec3<f32>(global0.d, var_2.d, 332f), -1036f, var_2)).a, Struct_1(vec4<i32>(var_2.a.x, -38855i, 2147483647i, var_2.a.x), var_2.a.x, var_2.e, -594f, var_2.c), vec3<f32>(var_2.d, 202f, var_2.d), _wgslsmith_f_op_f32(-var_2.d), Struct_1(vec4<i32>(2147483647i, 2147483647i, 0i, 38764i), -36697i, 117353u, var_2.d, 0u))) & true, !select(func_1(u_input.a, select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), global0.a.x).a, false, false));
    var var_4 = vec4<bool>(false, var_3.x, var_3.x, _wgslsmith_f_op_f32(sign(124f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -757f) * var_2.d)));
    let var_5 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_add_u32(var_2.c, var_2.e), ~u_input.c), 1u, _wgslsmith_add_u32(_wgslsmith_add_u32(global0.e, ~24195u >> ((u_input.a | u_input.c) % 32u)), reverseBits(_wgslsmith_mod_u32(1u, global0.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(388f, global0.d)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.d, -1272f), vec2<f32>(-1028f, -1253f), var_4.wz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.d, global0.d))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_2.d))), -2147483647i >= ~var_5.x))), -1398f);
}

