struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, -550f);

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: u32;

var<private> global3: array<vec3<f32>, 30>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(exp2(arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-886f, global0.x) + vec2<f32>(-1090f, -2204f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-112f, global0.x))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-879f, 105f) + vec2<f32>(_wgslsmith_f_op_f32(floor(global0.x)), arg_1))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 205f) + _wgslsmith_div_vec2_f32(vec2<f32>(-1283f, 1074f), vec2<f32>(-425f, -1352f))) - vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-997f + -1000f))), vec2<f32>(933f, -253f)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, -1000f, true))), _wgslsmith_f_op_f32(select(531f, _wgslsmith_f_op_f32(f32(-1f) * -571f), false)), _wgslsmith_f_op_f32(min(158f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x - -241f)))))));
    var var_1 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(round(-539f)), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(639f * global0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global0.x, 647f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, arg_1)))), vec2<i32>(arg_3.x, u_input.c.x), _wgslsmith_f_op_f32(round(1047f))), var_0.zy, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(abs(global0.x))), global0.x, 133f, 207f), arg_3.xw, arg_1), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(111f + -522f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(730f - -1000f), global0.x), reverseBits(arg_3.ww << (u_input.a.xy % vec2<u32>(32u))) >> (u_input.a.zx % vec2<u32>(32u)), arg_1));
    global2 = _wgslsmith_mod_u32(u_input.a.x, (_wgslsmith_clamp_u32(~u_input.a.x, ~u_input.a.x, 0u) << (u_input.a.x % 32u)) << (~(~(~0u)) % 32u));
    let var_2 = u_input.a.x == (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 25694u), ~u_input.a.yy), 1u) >> (min(1u, _wgslsmith_div_u32(59687u, ~u_input.a.x)) % 32u));
    return u_input.a.x;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    global2 = ~func_3(select(select(vec4<bool>(global1.a, global1.a, global1.a, global1.a), vec4<bool>(global1.a, global1.a, false, true), !global1.a), select(vec4<bool>(global1.a, false, global1.a, false), select(vec4<bool>(false, true, global1.a, false), vec4<bool>(global1.a, false, global1.a, global1.a), vec4<bool>(global1.a, false, global1.a, false)), true), any(select(vec2<bool>(global1.a, true), vec2<bool>(global1.a, true), vec2<bool>(global1.a, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - -1105f), global0.x))), Struct_1(global1.a), vec4<i32>(0i, u_input.c.x, -11197i, _wgslsmith_mult_i32(abs(-20754i), arg_0.x)));
    let var_0 = -1000f;
    global3 = array<vec3<f32>, 30>();
    var var_1 = vec4<bool>(global1.a || (_wgslsmith_f_op_f32(-var_0) < _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-933f, global0.x)))), global1.a, false, 4294967295u < u_input.a.x);
    global2 = u_input.a.x;
    return Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, _wgslsmith_f_op_f32(trunc(var_0)), 1020f, var_0))), arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1097f, 1717f))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 0i, 2147483647i, u_input.d), vec4<i32>(33146i, -87899i, u_input.b.x, arg_1.b.x)), vec4<i32>(0i, arg_1.b.x, u_input.c.x, arg_1.b.x) >> (vec4<u32>(14156u, 566u, u_input.a.x, 14408u) % vec4<u32>(32u)), ~vec4<i32>(0i, u_input.c.x, -1i, arg_1.b.x)) & min(_wgslsmith_mult_vec4_i32(vec4<i32>(-37668i, u_input.c.x, -53444i, -53613i), vec4<i32>(u_input.d, 2952i, arg_1.b.x, -52988i)), vec4<i32>(-2843i, -10161i, u_input.b.x, -1i)), _wgslsmith_add_vec4_i32(-vec4<i32>(-66321i, u_input.b.x, u_input.d, u_input.b.x) | _wgslsmith_clamp_vec4_i32(vec4<i32>(5427i, arg_1.b.x, u_input.d, u_input.d), vec4<i32>(u_input.c.x, u_input.d, 2147483647i, u_input.b.x), vec4<i32>(2147483647i, arg_1.b.x, 3019i, arg_1.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(43825i, -21817i, u_input.d, 2147483647i), -vec4<i32>(u_input.d, arg_1.b.x, u_input.b.x, 6787i)))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-3503i, 1i, min(arg_1.b.x, arg_1.b.x), func_2(vec2<i32>(arg_1.b.x, arg_1.b.x)).b.x), vec4<i32>(u_input.b.x, -1i, _wgslsmith_sub_i32(-2147483647i, -1i), u_input.b.x))), vec4<i32>(countOneBits(-15974i), func_2(arg_1.b).b.x, select(_wgslsmith_dot_vec3_i32(vec3<i32>(22430i, -2147483647i, u_input.d) << (vec3<u32>(arg_0, u_input.a.x, 18748u) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, 36981i, u_input.c.x)), u_input.c.x ^ (arg_1.b.x >> (arg_0 % 32u)), global1.a), -(-2147483647i ^ u_input.c.x) << (~47381u % 32u)));
    var var_1 = func_2(vec2<i32>(-1i) * -func_2(vec2<i32>(22245i, var_0.x)).b);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.a.wy, vec2<f32>(var_1.a.x, 575f)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.a.xz)))) - _wgslsmith_f_op_vec2_f32(max(arg_1.a.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, global0.x))))));
    var var_2 = -var_1.b & u_input.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) - var_1.a), vec4<f32>(847f, _wgslsmith_f_op_f32(min(arg_1.c, _wgslsmith_div_f32(1902f, _wgslsmith_f_op_f32(select(global0.x, 1434f, arg_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-128f * 481f), -2878f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c * global0.x)) - arg_1.c)), true));
    return Struct_1(!global1.a);
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = Struct_3(Struct_2(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), 717f, _wgslsmith_div_f32(-229f, _wgslsmith_f_op_f32(415f - global0.x))), -u_input.b, global0.x), _wgslsmith_div_vec2_f32(vec2<f32>(-705f, global0.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1609f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(global0.x, 161f)))))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1121f, _wgslsmith_f_op_f32(global0.x + 332f), _wgslsmith_f_op_f32(2330f - -619f), global0.x)), -_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.b.x, 5957i)), ~u_input.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)))))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1892f, -1690f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -1015f)), _wgslsmith_f_op_f32(f32(-1f) * -1820f), _wgslsmith_f_op_f32(round(global0.x)), -673f), func_2(_wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(1i, 67389i), u_input.c) >> ((vec2<u32>(0u, 4294967295u) >> (u_input.a.zy % vec2<u32>(32u))) % vec2<u32>(32u))).b, _wgslsmith_f_op_f32(ceil(-771f))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(var_0.d.a)))), var_0.c.b, 1000f);
    var var_2 = vec3<bool>(any(vec4<bool>(_wgslsmith_f_op_f32(var_0.a.c + -431f) > _wgslsmith_f_op_f32(-var_0.b.x), arg_1.a & false, 43170u > _wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(arg_0, 1u)), all(vec4<bool>(false, arg_1.a, false, global1.a)))), !global1.a, global1.a);
    let var_3 = select(!select(select(!vec3<bool>(arg_1.a, global1.a, false), select(vec3<bool>(arg_1.a, false, global1.a), vec3<bool>(arg_1.a, global1.a, true), vec3<bool>(false, true, var_2.x)), vec3<bool>(global1.a, true, global1.a)), !select(vec3<bool>(false, true, true), vec3<bool>(true, arg_1.a, true), vec3<bool>(global1.a, false, var_2.x)), vec3<bool>(all(vec4<bool>(arg_1.a, arg_1.a, true, false)), !arg_1.a, true)), select(select(select(!vec3<bool>(arg_1.a, false, true), !vec3<bool>(false, global1.a, true), select(vec3<bool>(false, global1.a, true), vec3<bool>(var_2.x, false, global1.a), vec3<bool>(arg_1.a, false, global1.a))), select(vec3<bool>(true, arg_1.a, false), select(vec3<bool>(false, true, var_2.x), vec3<bool>(false, global1.a, arg_1.a), vec3<bool>(true, false, true)), global1.a), !any(var_2.xy)), select(vec3<bool>(true, var_2.x, arg_0 <= arg_0), vec3<bool>(false, false != var_2.x, var_2.x), vec3<bool>(select(true, var_2.x, global1.a), !arg_1.a, var_2.x && arg_1.a)), vec3<bool>(arg_1.a, var_2.x, !func_4(4294967295u, Struct_2(vec4<f32>(-1000f, var_1.c, -853f, 540f), vec2<i32>(-2147483647i, u_input.d), var_0.c.a.x), vec2<bool>(var_2.x, false)).a)), vec3<bool>(true, true, true));
    var var_4 = vec4<i32>(-10122i, min(func_2(var_1.b).b.x, ~var_0.c.b.x), _wgslsmith_sub_i32(16101i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(26283i, var_0.c.b.x, u_input.d), vec3<i32>(u_input.b.x, -57603i, u_input.c.x), vec3<i32>(-2147483647i, var_0.a.b.x, u_input.c.x)), vec3<i32>(19994i, var_1.b.x, var_1.b.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-3984i, u_input.c.x, -14438i), vec3<i32>(1i, 23570i, var_1.b.x))), ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 9811i, var_0.d.b.x), vec3<i32>(u_input.b.x, u_input.d, u_input.d)))), var_0.c.b.x);
    return any(var_3.zx) & arg_1.a;
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = u_input.c;
    global3 = array<vec3<f32>, 30>();
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(786f, global0.x) - global0.x)));
    var var_1 = Struct_1(func_5(firstLeadingBit(~u_input.a.x), func_4(1u, func_2(var_0 & var_0), select(vec2<bool>(global1.a, true), !vec2<bool>(false, global1.a), vec2<bool>(false, false)))));
    let var_2 = ~(~(~firstTrailingBit(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 21454u))));
    return (_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, u_input.a.x), var_2.x) != 1u) | !(_wgslsmith_f_op_f32(-global0.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))));
}

fn func_6(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_3(func_2(vec2<i32>(u_input.c.x, u_input.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 + arg_0) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-248f, arg_0.x))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 - arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(961f, -2034f))))), Struct_2(vec4<f32>(global0.x, arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -624f), _wgslsmith_f_op_f32(min(arg_0.x, -1504f))), max(_wgslsmith_mod_vec2_i32(u_input.b, u_input.c ^ vec2<i32>(3866i, 1i)), min(u_input.c, vec2<i32>(u_input.d, 28277i)) | u_input.b), global0.x), func_2(~(-u_input.b) >> (u_input.a.zy % vec2<u32>(32u))));
    let var_1 = arg_2;
    global2 = abs(0u);
    var_0 = Struct_3(func_2(~var_0.a.b), arg_0, func_2(~vec2<i32>(0i, -u_input.d)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(sign(-468f)), _wgslsmith_f_op_f32(floor(var_0.d.a.x)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1119f)))), -max(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.b.x, var_0.d.b.x), var_0.d.b), firstTrailingBit(vec2<i32>(u_input.b.x, u_input.b.x))), _wgslsmith_div_f32(-395f, _wgslsmith_f_op_f32(sign(func_2(u_input.b).c)))));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-339f, global0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(706f, 986f), _wgslsmith_div_f32(global0.x, arg_0.x)))), arg_0.x));
    return Struct_1(4294967295u < _wgslsmith_mult_u32(abs(u_input.a.x), ~(~109658u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(firstTrailingBit(u_input.c.x));
    let var_1 = global1.a;
    global1 = func_6(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) - _wgslsmith_f_op_f32(ceil(global0.x))) * global0.x), 1000f), ~firstLeadingBit(firstLeadingBit(u_input.a.x)) >> (u_input.a.x % 32u), Struct_1(func_1(select(!global1.a, true, global1.a || global1.a))), select(vec3<u32>(45691u, select(1u, 4884u, false), _wgslsmith_mult_u32(9876u, u_input.a.x)) | ~u_input.a, ~(u_input.a >> (u_input.a % vec3<u32>(32u))) & reverseBits(vec3<u32>(33923u, u_input.a.x, u_input.a.x)), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(global1.a, false), vec2<bool>(true, global1.a))), true, false)));
    global1 = Struct_1(!global1.a);
    let var_2 = func_2(abs(u_input.b));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a ^ select(~(~u_input.a), u_input.a, !(!vec3<bool>(global1.a, false, true))));
}

