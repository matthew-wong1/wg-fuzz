struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(1150f, -1481f, -902f, 118f), vec4<f32>(-1438f, -781f, -101f, 579f), vec4<f32>(-922f, 1076f, -619f, -290f), vec4<f32>(-1247f, -1570f, -124f, 1363f), vec4<f32>(-2021f, -327f, -577f, 1279f), vec4<f32>(-2392f, 1856f, -105f, 182f), vec4<f32>(1478f, -1444f, -276f, 361f), vec4<f32>(-882f, 1252f, -698f, 1109f), vec4<f32>(859f, 1897f, 721f, -1077f), vec4<f32>(-1000f, 219f, -1626f, 1510f), vec4<f32>(285f, 2300f, 134f, 990f), vec4<f32>(1207f, 1364f, 905f, 248f), vec4<f32>(-1105f, -162f, 447f, -644f), vec4<f32>(-1419f, -1095f, 1000f, 1689f), vec4<f32>(313f, 1056f, 716f, -358f), vec4<f32>(505f, -260f, -138f, -246f), vec4<f32>(266f, 401f, -403f, -151f), vec4<f32>(-638f, 1718f, 1464f, -1000f), vec4<f32>(-1261f, 755f, -944f, -685f));

var<private> global3: array<f32, 2>;

var<private> global4: vec2<i32> = vec2<i32>(-2149i, -5447i);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2132f);
    let var_1 = select(~_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(1u, 44418u)), abs(vec2<u32>(0u, u_input.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(48550u, u_input.b))), vec2<u32>(u_input.b, 4294967295u), false) | reverseBits(reverseBits(reverseBits(~vec2<u32>(4294967295u, 1u))));
    global0 = Struct_1(firstLeadingBit(213i), u_input.c.x, ~u_input.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -589f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3[_wgslsmith_index_u32(global0.c, 2u)], arg_0))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(798f, global3[_wgslsmith_index_u32(49008u, 2u)]))))))));
    var var_3 = 336f;
    return vec4<u32>(~(~global0.c), ~var_1.x, _wgslsmith_sub_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(6917u, var_1.x, global0.c, var_1.x), abs(vec4<u32>(var_1.x, 0u, 1u, 114639u)))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 4294967295u, 4294967295u, global0.c) ^ vec4<u32>(4294967295u, global0.c, 4294967295u, u_input.b), reverseBits(vec4<u32>(0u, var_1.x, var_1.x, 4294967295u))) ^ _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, global0.c), 1u)), 1u);
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: f32) -> vec2<i32> {
    global0 = Struct_1(u_input.c.x, 18554i, arg_1.x);
    global3 = array<f32, 2>();
    let var_0 = vec4<u32>(1u, 17543u, arg_2.c, firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(6426u, u_input.b), arg_1.yx)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(arg_2.c, 2u)], arg_3) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2010f, 627f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_3, arg_3))) + _wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(global0.c, 2u)], 1105f), vec2<f32>(-278f, -424f))))));
    let var_2 = Struct_1(4463i, ~arg_0, global0.c);
    return u_input.c.zx;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    global1 = array<Struct_1, 27>();
    var var_0 = u_input.c;
    global4 = func_4(26710i, ~countOneBits(~func_3(global3[_wgslsmith_index_u32(31307u, 2u)])), global1[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 2u)] + 131f));
    let var_1 = select(vec4<i32>(arg_1, 0i, 1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(-u_input.c.x, reverseBits(-4615i)), global4.x)), -vec4<i32>(~arg_1, i32(-1i) * -37546i, countOneBits(-2147483647i), 1i) << (vec4<u32>((u_input.b | global0.c) >> (global0.c % 32u), global0.c >> (u_input.b % 32u), u_input.b, 4294967295u) % vec4<u32>(32u)), !(!vec4<bool>(all(vec2<bool>(false, arg_0.x)), !arg_0.x, true, select(true, arg_0.x, arg_0.x))));
    let var_2 = vec2<bool>(true, !any(vec3<bool>(true, true, true)));
    return global1[_wgslsmith_index_u32(min(~(~1u), 0u), 27u)];
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec3<u32> {
    global4 = ~u_input.c.xy;
    global3 = array<f32, 2>();
    var var_0 = func_2(vec3<bool>(true, true, true), 1i);
    global0 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(max(4294967295u, 54964u) & (arg_0.c | 1u), abs(arg_1)), _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, arg_1) | 4294967295u, var_0.c)), 27u)];
    let var_1 = ~global0.c ^ _wgslsmith_sub_u32(123542u >> (firstLeadingBit(min(1u, 1u)) % 32u), u_input.b);
    return vec3<u32>(min(0u, ~countOneBits(countOneBits(u_input.b))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(43443u, 2u)] * global3[_wgslsmith_index_u32(global0.c, 2u)]) * _wgslsmith_f_op_f32(ceil(-274f))))).x, 69898u);
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    global2 = array<vec4<f32>, 19>();
    global1 = array<Struct_1, 27>();
    global2 = array<vec4<f32>, 19>();
    var var_0 = Struct_1(min(~(-1975i), -41099i), global0.a, _wgslsmith_mod_u32(firstTrailingBit(~countOneBits(3316u)), u_input.b));
    var_0 = func_2(select(!select(select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, false, true)), vec3<bool>(true, arg_0, arg_0), arg_0 | arg_0), vec3<bool>(!any(vec2<bool>(false, arg_0)), true, arg_0), select(select(!vec3<bool>(arg_0, false, false), !vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, true, true)), vec3<bool>(true, false, any(vec2<bool>(arg_0, true))), vec3<bool>(true, arg_0, global0.c == u_input.b))), -29879i | firstLeadingBit(global0.a));
    return Struct_1(arg_2.x, abs(0i), reverseBits(~func_2(vec3<bool>(false, true, arg_0), ~arg_1).c));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = (arg_0.b & _wgslsmith_mod_i32(-global4.x, reverseBits(2147483647i))) | u_input.a.x;
    var var_1 = func_2(select(select(select(!vec3<bool>(arg_1, false, false), !vec3<bool>(arg_1, arg_1, arg_1), !vec3<bool>(arg_1, arg_1, false)), select(vec3<bool>(false, arg_1, arg_1), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false)), select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, false, true))), !select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, arg_1, arg_1), false)), vec3<bool>(all(!vec4<bool>(true, false, arg_1, true)), arg_1, all(select(vec2<bool>(arg_1, false), vec2<bool>(true, arg_1), vec2<bool>(arg_1, true)))), vec3<bool>(!(!arg_1), false, true)), global0.b);
    var var_2 = Struct_1(u_input.c.x, ~func_5(arg_1, arg_0.a, _wgslsmith_add_vec3_i32(vec3<i32>(global0.a, var_0, global0.b) >> (vec3<u32>(var_1.c, u_input.b, 0u) % vec3<u32>(32u)), abs(u_input.c))).a, ~20030u | var_1.c);
    let var_3 = vec4<i32>(arg_0.a, _wgslsmith_mod_i32(_wgslsmith_div_i32(global4.x | 1i, var_2.a), _wgslsmith_sub_i32(global0.a ^ -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-11840i, global4.x, -5480i), u_input.c))) ^ var_1.a, -60987i, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-1i), global4.x, -arg_0.a, select(var_1.b, -57680i, arg_1)) ^ -(~vec4<i32>(var_0, var_0, 22769i, 66556i)), vec4<i32>(min(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), _wgslsmith_sub_i32(arg_0.a, -1i)), ~firstLeadingBit(global4.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, -21273i), select(vec2<i32>(global0.a, arg_0.a), u_input.a, arg_1)), ~(-1i) & var_0)));
    var var_4 = arg_2.x;
    return Struct_1(_wgslsmith_mod_i32(max(-44135i, -1i), -8847i), i32(-1i) * -1i, countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(67219u, var_2.c, 37888u, 4294967295u), vec4<u32>(20848u, 4294967295u, 2361u, 1u)) ^ abs(vec4<u32>(9652u, 10176u, u_input.b, 1u)), ~vec4<u32>(0u, 1106u, 1u, 42132u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(~global0.c < 4294967295u, global0.b, vec3<i32>(global4.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -1i, -39664i, -2147483647i), vec4<i32>(global0.b, global4.x, global0.a, global0.a)), global0.a) >> (func_1(global1[_wgslsmith_index_u32(1u, 27u)], ~u_input.b) % vec3<u32>(32u))), !(!any(vec4<bool>(false, true, false, false))) || false, vec2<f32>(_wgslsmith_f_op_f32(step(-1067f, 806f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(func_3(160f).x, 2u)])));
    var var_1 = func_6(Struct_1(global4.x, -6243i, _wgslsmith_mod_u32(_wgslsmith_sub_u32(72975u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global0.c, 32894u), vec3<u32>(18499u, 103190u, 1u))), func_3(global3[_wgslsmith_index_u32(global0.c, 2u)]).x)), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.b, 2u)], -822f), global3[_wgslsmith_index_u32(var_0.c, 2u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -556f), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(0u, 2u)])))))));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(28536u), ~var_1.c, firstTrailingBit(_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_1.c, 41083u, 1u, var_0.c), vec4<u32>(global0.c, var_1.c, 3070u, var_1.c)), ~vec4<u32>(115984u, 34310u, 36051u, var_0.c))), 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(~(0u & var_1.c), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(21330u, 50872u), vec2<u32>(var_1.c, 4294967295u)), ~vec2<u32>(0u, var_0.c)), ~u_input.b, func_2(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), 23386i).c), (~vec4<u32>(54327u, 73676u, u_input.b, var_0.c) >> (vec4<u32>(4294967295u, global0.c, var_1.c, var_0.c) % vec4<u32>(32u))) & countOneBits(select(vec4<u32>(1u, 0u, var_0.c, var_1.c), vec4<u32>(1u, 72317u, u_input.b, 45167u), false)))), 27u)];
    let var_2 = global1[_wgslsmith_index_u32(~abs(var_0.c << (select(select(32203u, 1u, false), global0.c << (global0.c % 32u), true) % 32u)), 27u)];
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(global0.c, 2u)])), -1436f)))), 462f)) >= _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(0u, 32317u))), 2u)] * global3[_wgslsmith_index_u32(~(~(u_input.b | global0.c)), 2u)]);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(44014i, _wgslsmith_mod_i32(2147483647i, global0.a), var_0.a, -36494i), vec4<i32>(~(-1i), -var_0.b, _wgslsmith_add_i32(u_input.a.x, 1i), -1i)) | -vec4<i32>(-1i & global4.x, u_input.c.x, var_0.a, firstTrailingBit(var_1.b)), _wgslsmith_clamp_vec4_i32(~(~countOneBits(vec4<i32>(0i, 2147483647i, var_2.b, u_input.c.x))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), 69320i), countOneBits(2147483647i), _wgslsmith_dot_vec2_i32(~u_input.a, min(u_input.c.yx, vec2<i32>(1i, 27023i))), var_0.a), -vec4<i32>(-2147483647i << (0u % 32u), -6056i, _wgslsmith_mod_i32(u_input.c.x, -27664i), ~(-7121i))), ~u_input.a.x);
}

