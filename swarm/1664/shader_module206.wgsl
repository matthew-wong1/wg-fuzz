struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(37877u, vec3<u32>(0u, 12531u, 16615u)), Struct_3(0u, vec3<u32>(0u, 43118u, 24739u)), Struct_3(0u, vec3<u32>(1u, 0u, 1u)), Struct_3(78926u, vec3<u32>(4294967295u, 33266u, 59232u)), Struct_3(1u, vec3<u32>(37664u, 0u, 1u)), Struct_3(4294967295u, vec3<u32>(1u, 16240u, 15118u)), Struct_3(4294967295u, vec3<u32>(0u, 21644u, 15786u)), Struct_3(0u, vec3<u32>(0u, 42877u, 113962u)), Struct_3(0u, vec3<u32>(43958u, 9257u, 4294967295u)), Struct_3(4294967295u, vec3<u32>(2761u, 1u, 5151u)), Struct_3(47273u, vec3<u32>(4294967295u, 4294967295u, 0u)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    var var_0 = vec2<i32>(firstLeadingBit(1i), _wgslsmith_dot_vec2_i32(select(-abs(vec2<i32>(-43838i, u_input.a)), vec2<i32>(-2147483647i, u_input.a), vec2<bool>(false, arg_1 == 117f)), ~_wgslsmith_add_vec2_i32(-vec2<i32>(1i, u_input.a), firstTrailingBit(vec2<i32>(37426i, 33849i)))));
    global0 = array<Struct_3, 11>();
    let var_1 = max(firstTrailingBit(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, var_0.x, 1i), vec3<i32>(u_input.a, u_input.a, var_0.x), vec3<i32>(var_0.x, -1i, u_input.a))), -_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 91218i, var_0.x), vec3<i32>(u_input.a, 48611i, u_input.a)))), _wgslsmith_mult_vec3_i32(~vec3<i32>(-40584i << (arg_0.b.x % 32u), var_0.x, _wgslsmith_add_i32(-1i, -62379i)), min(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, 738i)), abs(vec3<i32>(1i, u_input.a, 19400i)), min(vec3<i32>(-2147483647i, var_0.x, 2147483647i), vec3<i32>(13798i, 0i, u_input.a))), firstLeadingBit(-vec3<i32>(u_input.a, var_0.x, u_input.a)))));
    var var_2 = 1093f;
    let var_3 = Struct_4(~_wgslsmith_add_u32(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(24953u, 0u, arg_0.a.x, 40365u), vec4<u32>(u_input.b, arg_0.a.x, 42102u, u_input.b))) & 0u, Struct_1(arg_0.a, vec3<u32>(_wgslsmith_mult_u32(u_input.b, 8927u), u_input.b, 39324u) | ~(~arg_0.b), _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_dot_vec4_i32(vec4<i32>(29317i, u_input.a, ~countOneBits(var_1.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(57582i, u_input.a, u_input.a), var_1), u_input.a)), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, var_0.x, -24026i) | vec4<i32>(-44075i, 2147483647i, var_1.x, 2795i), vec4<i32>(u_input.a, -37458i, u_input.a, -2147483647i)))));
    return vec2<bool>(all(!vec4<bool>(true, any(vec3<bool>(false, false, true)), true, all(vec2<bool>(true, true)))), false);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: f32, arg_3: vec3<bool>) -> u32 {
    var var_0 = ~abs(1u);
    var var_1 = Struct_5(max(-_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(22918i, arg_1.c)), vec2<i32>(1i, 1i), ~vec2<i32>(-2147483647i, 24012i)), -max(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 1i)), -vec2<i32>(arg_1.c, -52486i))), global0[_wgslsmith_index_u32(u_input.b, 11u)], _wgslsmith_f_op_f32(-arg_1.b.c));
    global0 = array<Struct_3, 11>();
    var_1 = Struct_5(var_1.a, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(u_input.b, u_input.b ^ 524u), ~(arg_1.a >> (_wgslsmith_mult_u32(arg_1.a, 4294967295u) % 32u))), 11u)], _wgslsmith_f_op_f32(-836f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.c, 300f)) + _wgslsmith_f_op_f32(f32(-1f) * -1792f))));
    var var_2 = 112651u;
    return 32785u;
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_sub_i32(u_input.a, _wgslsmith_mult_i32(~(~(-1i)), ~(-29800i)));
    global0 = array<Struct_3, 11>();
    var var_1 = vec4<u32>(func_4(true, Struct_4(~15358u, Struct_1(~vec2<u32>(u_input.b, 1u), ~vec3<u32>(25804u, u_input.b, 14805u), 557f), _wgslsmith_add_i32(var_0, u_input.a | u_input.a)), -666f, vec3<bool>(any(func_3(Struct_1(vec2<u32>(u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b), 189f), 172f)), (arg_0.x == arg_0.x) || false, any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true)))), ~_wgslsmith_mult_u32(u_input.b, u_input.b), 17908u, func_4(true, Struct_4(u_input.b, Struct_1(~vec2<u32>(75634u, u_input.b), vec3<u32>(4294967295u, u_input.b, 4294967295u) & vec3<u32>(59894u, 49419u, 4294967295u), arg_0.x), ~468i), 1000f, select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, false, false, true)), true, true))));
    var var_2 = ~(~_wgslsmith_mult_u32(1u, ~firstLeadingBit(u_input.b)));
    let var_3 = u_input.a <= ((i32(-1i) * -20552i) ^ u_input.a);
    return arg_0.x;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_5) -> Struct_2 {
    let var_0 = arg_2;
    global0 = array<Struct_3, 11>();
    let var_1 = select(select(vec3<bool>(-1422f == _wgslsmith_f_op_f32(arg_0.c * -1919f), true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true))), vec3<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), any(vec2<bool>(true, true)), true), vec3<bool>(true, true, !func_3(arg_0, -1119f).x)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), vec3<bool>(true, true, true), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true));
    global0 = array<Struct_3, 11>();
    let var_2 = Struct_2(arg_0, ~(abs(arg_3.a | vec2<i32>(-2147483647i, 11051i)) ^ -max(vec2<i32>(var_0.c, 32421i), arg_3.a)), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(arg_2.c, var_0.c, ~(-21770i))), vec3<i32>(-1i, u_input.a, -(2147483647i | arg_2.c))), reverseBits(~(~4294967295u)));
    return Struct_2(arg_2.b, arg_3.a, -(~abs(var_2.c)), ~(0u << ((arg_0.b.x | firstTrailingBit(4294967295u)) % 32u)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    var var_0 = _wgslsmith_clamp_u32(min(~_wgslsmith_clamp_u32(u_input.b, u_input.b, 1u), 1416u), u_input.b, _wgslsmith_mod_u32(38392u, ~(~4294967295u))) | 49237u;
    var var_1 = func_5(Struct_1(_wgslsmith_mult_vec2_u32(max(~vec2<u32>(u_input.b, 22209u), vec2<u32>(u_input.b, 39308u)), ~vec2<u32>(36408u, u_input.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(25552u, ~4294967295u, u_input.b), _wgslsmith_div_vec3_u32(~vec3<u32>(50595u, u_input.b, u_input.b), ~vec3<u32>(u_input.b, 5690u, 27045u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-411f, 2368f)))), vec4<f32>(_wgslsmith_f_op_f32(1671f + _wgslsmith_div_f32(1235f, _wgslsmith_f_op_f32(step(-725f, -3283f)))), -703f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(2213f, 1000f, 953f, 402f)))), 744f), Struct_4(~(~0u), Struct_1(vec2<u32>(max(u_input.b, 1u), ~u_input.b), ~(vec3<u32>(u_input.b, 0u, u_input.b) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))), -1263f), _wgslsmith_mod_i32(-63569i, reverseBits(~1i))), Struct_5(vec2<i32>(u_input.a, u_input.a << (u_input.b % 32u)), global0[_wgslsmith_index_u32(4294967295u, 11u)], -2557f));
    let var_2 = Struct_4(var_1.a.a.x, func_5(func_5(var_1.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.c, var_1.a.c, -1033f, -1733f), vec4<f32>(-302f, var_1.a.c, var_1.a.c, var_1.a.c)))), Struct_4(0u, func_5(var_1.a, vec4<f32>(233f, var_1.a.c, -2643f, 1479f), Struct_4(u_input.b, Struct_1(var_1.a.a, vec3<u32>(u_input.b, 1u, u_input.b), -447f), 2147483647i), Struct_5(var_1.b, global0[_wgslsmith_index_u32(1u, 11u)], -295f)).a, var_1.b.x), Struct_5(var_1.c.yx, Struct_3(u_input.b, var_1.a.b), _wgslsmith_f_op_f32(-1000f + -683f))).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.c - var_1.a.c), 1044f, _wgslsmith_f_op_f32(abs(107f)), 780f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-487f, var_1.a.c, var_1.a.c, -1000f), vec4<f32>(-1000f, -1502f, 758f, var_1.a.c)))), Struct_4(countOneBits(~u_input.b), Struct_1(vec2<u32>(531u, var_1.a.b.x), vec3<u32>(u_input.b, u_input.b, u_input.b), -1032f), var_1.c.x >> (~var_1.d % 32u)), Struct_5(~(~vec2<i32>(-1i, 2147483647i)), global0[_wgslsmith_index_u32(func_4(arg_0.x, Struct_4(var_1.a.b.x, Struct_1(vec2<u32>(536u, var_1.a.b.x), vec3<u32>(45442u, var_1.d, u_input.b), var_1.a.c), -2147483647i), var_1.a.c, vec3<bool>(arg_0.x, true, arg_0.x)) ^ select(58808u, 497u, arg_0.x), 11u)], -581f)).a, u_input.a);
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~23926u), reverseBits(~(~var_2.b.a.x))), 11u)];
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = 2147483647i;
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    let var_1 = vec2<bool>(!any(func_3(Struct_1(vec2<u32>(18501u, u_input.b), arg_0.b, -1520f), arg_1.a.c)) & true, false);
    var var_2 = arg_1.c.xy;
    return !select(vec3<bool>(!any(var_1), !(!var_1.x), var_1.x), select(!vec3<bool>(true, var_1.x, true), !(!vec3<bool>(false, var_1.x, var_1.x)), all(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, true, true), vec3<bool>(var_1.x, true, true)))), any(select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(false, true, true, false), var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!all(func_6(func_1(vec2<bool>(true, true)), func_5(Struct_1(vec2<u32>(6463u, u_input.b), vec3<u32>(4294967295u, u_input.b, u_input.b), -215f), vec4<f32>(449f, 168f, 433f, 1000f), Struct_4(u_input.b, Struct_1(vec2<u32>(u_input.b, u_input.b), vec3<u32>(17353u, u_input.b, 81199u), -1006f), -22989i), Struct_5(vec2<i32>(32088i, 61582i), global0[_wgslsmith_index_u32(1u, 11u)], 1124f)))), ~(_wgslsmith_add_u32(17787u, 1u) >> (_wgslsmith_mult_u32(u_input.b, 0u) % 32u)) != (_wgslsmith_dot_vec4_u32(~vec4<u32>(28583u, 0u, 44344u, u_input.b), vec4<u32>(0u, u_input.b, u_input.b, 110957u)) & 4294967295u), (-2428f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-291f - 165f)))) & true);
    var var_1 = !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), select(var_0.yz, var_0.xy, var_0.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(488f, -479f) * vec2<f32>(792f, -1687f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2500f - 189f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(518f)) + _wgslsmith_f_op_f32(1434f + -550f)))), var_1.x));
    let var_3 = all(select(select(vec2<bool>(true, false), func_3(Struct_1(vec2<u32>(35980u, u_input.b), vec3<u32>(63216u, u_input.b, u_input.b), 528f), _wgslsmith_f_op_f32(var_2.x - var_2.x)), !all(vec4<bool>(var_0.x, var_0.x, true, true))), vec2<bool>(var_0.x, any(vec2<bool>(false, true))), var_0.x));
    let var_4 = !func_6(Struct_3(u_input.b, vec3<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), _wgslsmith_add_u32(u_input.b, u_input.b), ~1u)), func_5(Struct_1(vec2<u32>(1u, 4294967295u), vec3<u32>(u_input.b, u_input.b, 21250u), _wgslsmith_f_op_f32(var_2.x + var_2.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 825f, var_2.x, -966f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, -186f, var_2.x, var_2.x)))), Struct_4(u_input.b, Struct_1(vec2<u32>(u_input.b, u_input.b), vec3<u32>(1u, 1u, 63127u), var_2.x), 1i), Struct_5(countOneBits(vec2<i32>(u_input.a, -2147483647i)), func_1(var_0.zz), _wgslsmith_f_op_f32(1000f * var_2.x)))).yx;
    var var_5 = var_0.x && any(!select(var_0.yx, !var_0.zx, true));
    var var_6 = ~47644i;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 58412i)) ^ vec2<i32>(2928i, u_input.a)) << (_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, u_input.b), select(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.b, 0u), var_3)), select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(46991u, u_input.b), vec2<bool>(false, true)) >> (~vec2<u32>(9278u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), -func_5(func_5(Struct_1(vec2<u32>(u_input.b, 67343u), vec3<u32>(u_input.b, u_input.b, 7718u), 1382f), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, 723f, -883f), vec4<f32>(-1657f, var_2.x, 572f, 1637f)), Struct_4(u_input.b, Struct_1(vec2<u32>(0u, 1u), vec3<u32>(4294967295u, 0u, 49648u), 547f), -2147483647i), Struct_5(vec2<i32>(u_input.a, u_input.a), Struct_3(u_input.b, vec3<u32>(u_input.b, 98987u, u_input.b)), var_2.x)).a, vec4<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), 148f, var_2.x, -1119f), Struct_4(u_input.b, Struct_1(vec2<u32>(5135u, u_input.b), vec3<u32>(0u, 32653u, 4294967295u), -591f), abs(u_input.a)), Struct_5(vec2<i32>(-12671i, 1601i), global0[_wgslsmith_index_u32(max(u_input.b, 1u), 11u)], -293f)).c, _wgslsmith_f_op_f32(func_2(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1323f * -1000f)), var_2.x, var_2.x))));
}

