struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_3,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 23>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<bool>) -> vec4<bool> {
    global0 = Struct_3((min(u_input.e & global0.a, firstTrailingBit(global0.a)) << (_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, global0.c, u_input.c), vec3<u32>(global0.c, 48657u, global0.c)) % vec3<u32>(32u))) ^ firstTrailingBit(select(~u_input.e, -vec3<i32>(global0.a.x, 2147483647i, global0.a.x), all(vec4<bool>(global0.b.a.x, true, true, false)))), global0.b, arg_0);
    var var_0 = Struct_5(vec3<i32>(min(_wgslsmith_add_i32(u_input.e.x, -5552i), 38236i), u_input.e.x, u_input.a), Struct_2(arg_2.yy), Struct_3(countOneBits(vec3<i32>(max(22836i, 23833i), 1i, -39261i)), Struct_2(vec2<bool>(arg_2.x || true, 1466f > arg_1)), abs(_wgslsmith_mod_u32(4294967295u, u_input.c))), Struct_4(global1[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(u_input.b, 6135u), ~arg_0) ^ min(u_input.c, 47074u), 23u)]));
    let var_1 = ~u_input.d;
    var_0 = Struct_5(vec3<i32>(-max(-1i, 23762i), ~u_input.a, _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, global0.a.x, 1i), u_input.e), u_input.e.x & _wgslsmith_sub_i32(var_1, global0.a.x))), global0.b, var_0.c, var_0.d);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(~(vec3<u32>(u_input.b, 23326u, arg_0) >> (vec3<u32>(24048u, 0u, 8689u) % vec3<u32>(32u)))), ~vec3<u32>(_wgslsmith_sub_u32(var_0.c.c, var_0.c.c), 43u, countOneBits(80361u))) >> (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(44871u, ~arg_0, ~1u)), _wgslsmith_add_vec3_u32(firstLeadingBit(select(vec3<u32>(arg_0, 0u, 10400u), vec3<u32>(1u, global0.c, 1u), var_0.b.a.x)), ~(~vec3<u32>(arg_0, global0.c, 1u)))) % 32u), 23u)];
    return vec4<bool>(true, any(var_0.c.b.a), !(!(~4294967295u > (90980u | global0.c))), true);
}

fn func_2(arg_0: Struct_3) -> f32 {
    global0 = arg_0;
    let var_0 = select(vec2<bool>(any(select(vec3<bool>(arg_0.b.a.x, true, arg_0.b.a.x), vec3<bool>(false, true, arg_0.b.a.x), vec3<bool>(arg_0.b.a.x, true, arg_0.b.a.x))) && true, any(select(!vec3<bool>(arg_0.b.a.x, false, true), !vec3<bool>(arg_0.b.a.x, global0.b.a.x, false), select(vec3<bool>(false, false, global0.b.a.x), vec3<bool>(true, true, global0.b.a.x), global0.b.a.x)))), select(vec2<bool>(any(func_3(4294967295u, -952f, vec4<bool>(true, global0.b.a.x, arg_0.b.a.x, true))), global0.b.a.x), global0.b.a, vec2<bool>(true && arg_0.b.a.x, any(vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, false, true)) & global0.b.a.x)), select(vec2<bool>(global0.b.a.x, arg_0.b.a.x), vec2<bool>(true, any(global0.b.a)), select(func_3(~1u, -716f, vec4<bool>(arg_0.b.a.x, true, true, global0.b.a.x)).ww, !(!arg_0.b.a), !arg_0.b.a.x)));
    let var_1 = select(select(vec3<bool>(true, _wgslsmith_f_op_f32(select(226f, 371f, false)) >= _wgslsmith_f_op_f32(f32(-1f) * -937f), _wgslsmith_mult_i32(1i, -1i) <= (arg_0.a.x ^ -1i)), !func_3(select(u_input.b, arg_0.c, false), _wgslsmith_f_op_f32(trunc(1283f)), vec4<bool>(false, false, false, true)).wzx, vec3<bool>(true, global0.c <= _wgslsmith_sub_u32(41988u, 6054u), true)), select(func_3(abs(~7277u), _wgslsmith_f_op_f32(f32(-1f) * -944f), !select(vec4<bool>(var_0.x, true, global0.b.a.x, false), vec4<bool>(false, true, true, var_0.x), vec4<bool>(false, false, arg_0.b.a.x, true))).wyy, !vec3<bool>(all(vec4<bool>(global0.b.a.x, true, var_0.x, arg_0.b.a.x)), true, any(vec3<bool>(global0.b.a.x, arg_0.b.a.x, arg_0.b.a.x))), all(vec4<bool>(true, 0i <= u_input.d, arg_0.b.a.x & false, func_3(u_input.b, 1013f, vec4<bool>(var_0.x, false, arg_0.b.a.x, arg_0.b.a.x)).x))), !vec3<bool>(false, global0.b.a.x, var_0.x));
    let var_2 = true;
    let var_3 = 4294967295u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-230f + 291f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -866f), -487f)));
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    let var_0 = Struct_1(_wgslsmith_clamp_i32(-44327i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_1.a.xy, arg_1.a.xy), _wgslsmith_clamp_vec2_i32(u_input.e.yy, vec2<i32>(global0.a.x, -25693i), u_input.e.xz)) & firstTrailingBit(u_input.d), ~(-21898i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0));
    let var_1 = _wgslsmith_clamp_i32(firstLeadingBit(1i), u_input.d, 1i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(844f, -1860f, -676f, _wgslsmith_f_op_f32(-var_0.b)))));
    return arg_1;
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> Struct_4 {
    global1 = array<Struct_1, 23>();
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b, ~arg_1.c), ~vec3<u32>(_wgslsmith_clamp_u32(58699u, 44162u, ~15023u), _wgslsmith_mult_u32(~4294967295u, abs(32666u)), arg_0), vec3<u32>(min(81353u, arg_1.c), global0.c, ~arg_1.c));
    var_0 = firstTrailingBit(vec3<u32>(global0.c, reverseBits(19217u), arg_0));
    var var_1 = func_3(4294967295u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-396f))), -678f)), vec4<bool>(true & !arg_1.b.a.x, true, global0.a.x > (global0.a.x | arg_1.a.x), global0.b.a.x)).x == arg_1.b.a.x;
    var var_2 = global0.b;
    return Struct_4(Struct_1(~(~(-70032i)) << (_wgslsmith_sub_u32(var_0.x ^ 1u, 4294967295u ^ global0.c) % 32u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-863f)))))), _wgslsmith_div_vec2_f32(vec2<f32>(-900f, 484f), vec2<f32>(_wgslsmith_div_f32(-450f, -1000f), _wgslsmith_f_op_f32(floor(-465f))))));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_5) -> Struct_1 {
    let var_0 = func_5(_wgslsmith_add_u32(0u, reverseBits(32425u)), func_4(_wgslsmith_f_op_f32(func_2(arg_0.c)), arg_1.c));
    global1 = array<Struct_1, 23>();
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(29245u, u_input.c) << (~(~39453u >> ((global0.c >> (u_input.b % 32u)) % 32u)) % 32u), arg_1.c.c, arg_0.c.c);
    let var_2 = arg_1.c;
    var_1 = ~(~(~vec3<u32>(1u, 1u, 1u)));
    return func_5(~(firstLeadingBit(u_input.c) | ~4294967295u), func_4(1283f, func_4(_wgslsmith_f_op_f32(f32(-1f) * -1429f), Struct_3(vec3<i32>(2147483647i, arg_0.a.x, 172i) << (vec3<u32>(0u, arg_1.c.c, 4294967295u) % vec3<u32>(32u)), Struct_2(vec2<bool>(false, true)), _wgslsmith_mod_u32(77078u, 4294967295u))))).a;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_3) -> Struct_5 {
    global0 = arg_3;
    var var_0 = ~func_1(Struct_5(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.a.a, 43305i, -1i), arg_3.a), vec3<i32>(arg_3.a.x, arg_1.a, arg_1.a)), func_4(arg_0.x, func_4(arg_1.c.x, arg_3)).b, Struct_3(global0.a, Struct_2(vec2<bool>(false, global0.b.a.x)), _wgslsmith_div_u32(0u, global0.c)), arg_2), Struct_5(u_input.e, func_4(_wgslsmith_f_op_f32(exp2(arg_1.c.x)), func_4(-852f, arg_3)).b, arg_3, Struct_4(Struct_1(global0.a.x, arg_1.b, arg_0.zy)))).a;
    let var_1 = max(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a.a, 2147483647i, -1i, -1i) << (~vec4<u32>(arg_3.c, u_input.c, global0.c, u_input.b) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.d, 29317i, global0.a.x, arg_3.a.x) ^ vec4<i32>(arg_3.a.x, -5230i, 2147483647i, -2147483647i))), vec4<i32>(_wgslsmith_mod_i32(-_wgslsmith_sub_i32(-30956i, -70005i), ~_wgslsmith_div_i32(u_input.a, -59484i)), arg_1.a, 0i, global0.a.x));
    let var_2 = Struct_5(vec3<i32>(_wgslsmith_mult_i32(abs(reverseBits(8260i)), -arg_1.a), -34096i, global0.a.x), Struct_2(arg_3.b.a), Struct_3(firstTrailingBit(arg_3.a), Struct_2(vec2<bool>(global0.b.a.x, select(global0.b.a.x, arg_3.b.a.x, arg_3.b.a.x))), abs(select(2948u, ~global0.c, !global0.b.a.x))), Struct_4(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, global0.a.x, arg_3.a.x, 37051i), var_1), ~vec4<i32>(arg_1.a, 2147483647i, arg_2.a.a, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -351f) + func_5(arg_3.c, arg_3).a.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -1000f)))));
    var_0 = arg_1.a;
    return var_2;
}

fn func_7(arg_0: Struct_5, arg_1: f32, arg_2: f32) -> f32 {
    let var_0 = firstTrailingBit(-(~vec4<i32>(min(u_input.e.x, 0i), -arg_0.a.x, func_1(Struct_5(global0.a, Struct_2(global0.b.a), arg_0.c, arg_0.d), Struct_5(vec3<i32>(-2147483647i, -26568i, arg_0.c.a.x), Struct_2(vec2<bool>(false, true)), arg_0.c, Struct_4(arg_0.d.a))).a, u_input.d)));
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    let var_1 = vec3<f32>(arg_1, 966f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1)))))));
    var var_2 = vec3<bool>(arg_0.c.b.a.x, true, true);
    return _wgslsmith_f_op_f32(sign(arg_2));
}

fn func_8(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec3<u32>) -> vec3<u32> {
    global1 = array<Struct_1, 23>();
    let var_0 = vec3<u32>(_wgslsmith_div_u32(27288u, ~(~global0.c)), 1u, max(min(~16060u, ~68262u), reverseBits(countOneBits(4294967295u)))) | arg_3;
    global0 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1290f, -2285f, 2463f, arg_2.x) - vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 264f, arg_2.x, arg_2.x) + vec4<f32>(arg_2.x, arg_2.x, 150f, -1501f)))), vec4<f32>(_wgslsmith_f_op_f32(select(-963f, arg_2.x, false)), _wgslsmith_f_op_f32(-arg_2.x), arg_2.x, _wgslsmith_f_op_f32(179f + arg_2.x))))), func_1(Struct_5(vec3<i32>(global0.a.x, global0.a.x, max(-10251i, global0.a.x)), Struct_2(!vec2<bool>(arg_0.x, global0.b.a.x)), Struct_3(func_6(vec4<f32>(583f, arg_2.x, -441f, arg_2.x), global1[_wgslsmith_index_u32(0u, 23u)], Struct_4(Struct_1(2147483647i, arg_2.x, arg_2.zz)), Struct_3(vec3<i32>(u_input.e.x, global0.a.x, global0.a.x), global0.b, 4294967295u)).a, func_4(1000f, Struct_3(u_input.e, global0.b, 7171u)).b, ~arg_1.x), Struct_4(global1[_wgslsmith_index_u32(7460u, 23u)])), func_6(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_2.x)), -388f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(trunc(arg_2.x))), func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, -539f, -1279f)), func_1(Struct_5(vec3<i32>(u_input.a, 18268i, 2147483647i), global0.b, Struct_3(global0.a, Struct_2(vec2<bool>(global0.b.a.x, true)), u_input.c), Struct_4(Struct_1(28144i, arg_2.x, vec2<f32>(arg_2.x, 1855f)))), Struct_5(u_input.e, global0.b, Struct_3(global0.a, Struct_2(arg_0), arg_3.x), Struct_4(global1[_wgslsmith_index_u32(51333u, 23u)]))), Struct_4(Struct_1(4945i, arg_2.x, vec2<f32>(arg_2.x, arg_2.x))), Struct_3(vec3<i32>(u_input.a, 26235i, global0.a.x), Struct_2(vec2<bool>(global0.b.a.x, arg_0.x)), global0.c)).d.a, Struct_4(func_6(vec4<f32>(arg_2.x, arg_2.x, 1969f, 368f), Struct_1(1i, -2249f, vec2<f32>(1631f, arg_2.x)), Struct_4(global1[_wgslsmith_index_u32(var_0.x, 23u)]), Struct_3(global0.a, global0.b, 61919u)).d.a), Struct_3(u_input.e, func_6(vec4<f32>(arg_2.x, 1145f, 285f, arg_2.x), Struct_1(-2147483647i, -1162f, vec2<f32>(arg_2.x, 1163f)), Struct_4(global1[_wgslsmith_index_u32(1u, 23u)]), Struct_3(vec3<i32>(u_input.d, u_input.a, global0.a.x), Struct_2(arg_0), 25455u)).b, firstTrailingBit(4294967295u)))), Struct_4(global1[_wgslsmith_index_u32(~74718u, 23u)]), func_4(_wgslsmith_div_f32(1050f, 752f), Struct_3(~select(vec3<i32>(u_input.e.x, 48070i, -7499i), vec3<i32>(global0.a.x, 0i, global0.a.x), arg_0.x), Struct_2(!vec2<bool>(global0.b.a.x, global0.b.a.x)), ~(~u_input.c)))).c;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(func_2(func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 822f, arg_2.x, 218f) + vec4<f32>(-1000f, arg_2.x, -113f, -1287f))), Struct_1(u_input.a, -483f, arg_2.xz), func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, 1068f, -512f)), global1[_wgslsmith_index_u32(~global0.c, 23u)], Struct_4(Struct_1(1i, arg_2.x, vec2<f32>(arg_2.x, arg_2.x))), Struct_3(global0.a, global0.b, var_0.x)).d, func_4(-229f, Struct_3(u_input.e, global0.b, u_input.b))).c)));
    global0 = func_6(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1, arg_2.x, 618f, arg_2.x))), vec4<f32>(var_1, arg_2.x, -622f, -580f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-275f, 623f, 618f, -708f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, arg_2.x, var_1, -2640f)))))))), func_6(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), -502f, arg_2.x, 423f), Struct_1(-3801i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1079f + arg_2.x)), vec2<f32>(func_5(88759u, Struct_3(u_input.e, Struct_2(arg_0), u_input.b)).a.b, _wgslsmith_f_op_f32(arg_2.x - 1000f))), func_6(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))))), func_1(Struct_5(vec3<i32>(u_input.d, global0.a.x, global0.a.x), Struct_2(vec2<bool>(global0.b.a.x, false)), Struct_3(vec3<i32>(global0.a.x, u_input.a, u_input.d), global0.b, var_0.x), Struct_4(Struct_1(752i, -512f, vec2<f32>(1009f, var_1)))), func_6(vec4<f32>(2335f, -1237f, -118f, 806f), Struct_1(global0.a.x, -834f, vec2<f32>(arg_2.x, 1000f)), Struct_4(Struct_1(global0.a.x, -130f, vec2<f32>(arg_2.x, arg_2.x))), Struct_3(u_input.e, global0.b, 25889u))), func_6(vec4<f32>(arg_2.x, var_1, -365f, -247f), func_5(global0.c, Struct_3(vec3<i32>(global0.a.x, -2147483647i, global0.a.x), global0.b, 1u)).a, func_5(arg_3.x, Struct_3(vec3<i32>(global0.a.x, u_input.e.x, global0.a.x), global0.b, arg_1.x)), Struct_3(u_input.e, global0.b, global0.c)).d, func_4(-241f, Struct_3(vec3<i32>(u_input.a, 31780i, 0i), Struct_2(vec2<bool>(global0.b.a.x, global0.b.a.x)), 103245u))).d, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(vec3<i32>(-46103i, 0i, 0i), Struct_2(vec2<bool>(global0.b.a.x, true)), arg_3.x))) * _wgslsmith_f_op_f32(sign(689f))), func_6(vec4<f32>(var_1, arg_2.x, arg_2.x, -1738f), func_6(vec4<f32>(arg_2.x, arg_2.x, 812f, var_1), global1[_wgslsmith_index_u32(arg_1.x, 23u)], Struct_4(Struct_1(1i, 493f, vec2<f32>(arg_2.x, arg_2.x))), Struct_3(global0.a, global0.b, 9046u)).d.a, Struct_4(Struct_1(global0.a.x, arg_2.x, arg_2.zz)), Struct_3(vec3<i32>(global0.a.x, global0.a.x, 1i), Struct_2(vec2<bool>(arg_0.x, arg_0.x)), 1u)).c)).d.a, Struct_4(func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1238f, arg_2.x, arg_2.x, 835f))), global1[_wgslsmith_index_u32(reverseBits(u_input.b), 23u)], Struct_4(global1[_wgslsmith_index_u32(44481u, 23u)]), Struct_3(_wgslsmith_mult_vec3_i32(vec3<i32>(25904i, global0.a.x, u_input.d), vec3<i32>(u_input.e.x, 1i, -2147483647i)), Struct_2(vec2<bool>(true, true)), _wgslsmith_add_u32(0u, var_0.x))).d.a), Struct_3(u_input.e, global0.b, max(arg_1.x << (firstTrailingBit(global0.c) % 32u), global0.c))).c;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(vec2<bool>(!any(vec2<bool>(global0.b.a.x, global0.b.a.x)), !(63846u == global0.c) && global0.b.a.x), firstLeadingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.c, 35284u), vec2<u32>(0u, global0.c))) ^ vec2<u32>(countOneBits(1774u), ~(~global0.c)), vec3<f32>(1118f, _wgslsmith_f_op_f32(func_7(func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -2824f, -1140f, -1887f)), func_1(Struct_5(global0.a, Struct_2(global0.b.a), Struct_3(vec3<i32>(50453i, global0.a.x, -1i), Struct_2(vec2<bool>(true, global0.b.a.x)), 76170u), Struct_4(Struct_1(0i, 102f, vec2<f32>(-411f, -257f)))), Struct_5(vec3<i32>(u_input.d, global0.a.x, u_input.d), global0.b, Struct_3(u_input.e, global0.b, u_input.b), Struct_4(Struct_1(-37699i, -1802f, vec2<f32>(-778f, 1320f))))), Struct_4(global1[_wgslsmith_index_u32(u_input.b, 23u)]), func_4(-628f, Struct_3(global0.a, global0.b, global0.c))), func_5(_wgslsmith_mult_u32(global0.c, 16219u), Struct_3(vec3<i32>(-1i, global0.a.x, 2147483647i), global0.b, 1u)).a.b, _wgslsmith_div_f32(-2138f, 1f))), 432f), (vec3<u32>(_wgslsmith_sub_u32(u_input.c, 1u), u_input.b, func_4(-653f, Struct_3(vec3<i32>(0i, 0i, u_input.d), Struct_2(vec2<bool>(true, true)), 4294967295u)).c) & abs(~vec3<u32>(u_input.c, 0u, 29219u))) & abs(abs(vec3<u32>(47053u, 53992u, 4294967295u))));
    let var_1 = global1[_wgslsmith_index_u32(0u, 23u)];
    global0 = func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))), Struct_3(vec3<i32>(-373i, 55253i, 1i) ^ vec3<i32>(~u_input.e.x, -1i, reverseBits(var_1.a)), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) + _wgslsmith_f_op_f32(var_1.b + var_1.b)), func_4(1933f, func_4(-163f, Struct_3(global0.a, Struct_2(vec2<bool>(global0.b.a.x, false)), var_0.x)))).b, _wgslsmith_add_u32(~38306u, u_input.c | u_input.c)));
    var var_2 = !vec3<bool>(global0.b.a.x, !global0.b.a.x, global0.b.a.x);
    var_2 = select(func_3(~u_input.b, 296f, !vec4<bool>(true, func_3(var_0.x, -1009f, vec4<bool>(true, true, false, global0.b.a.x)).x, true, global0.b.a.x)).xzy, func_3(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), select(vec4<bool>(true, var_2.x, true, true), !vec4<bool>(false, global0.b.a.x, var_2.x, global0.b.a.x), any(vec3<bool>(false, false, var_2.x)) != !var_2.x)).xyw, select(!vec3<bool>(false, var_2.x, true), func_3(abs(_wgslsmith_add_u32(global0.c, global0.c)), var_1.c.x, !select(vec4<bool>(var_2.x, true, global0.b.a.x, global0.b.a.x), vec4<bool>(global0.b.a.x, true, var_2.x, true), global0.b.a.x)).yyy, vec3<bool>(var_2.x, true, any(global0.b.a))));
    global0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c.x))), Struct_3(-_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(global0.a, vec3<i32>(-2889i, global0.a.x, global0.a.x)), u_input.e), func_4(var_1.c.x, func_4(_wgslsmith_f_op_f32(-var_1.c.x), Struct_3(global0.a, Struct_2(global0.b.a), 4294967295u))).b, _wgslsmith_div_u32(~(~u_input.c), global0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c, vec2<u32>(~(~firstLeadingBit(u_input.b)), ~(~(~global0.c))));
}

