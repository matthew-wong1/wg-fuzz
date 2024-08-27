struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(6469u, 4294967295u, 0u, 21224u), vec4<u32>(17177u, 0u, 1u, 4294967295u), vec4<u32>(36822u, 47137u, 40532u, 17186u), vec4<u32>(24511u, 0u, 1u, 10029u), vec4<u32>(1u, 52841u, 7369u, 1u), vec4<u32>(89095u, 1u, 68937u, 4294967295u), vec4<u32>(4294967295u, 13695u, 37943u, 4294967295u), vec4<u32>(11713u, 4294967295u, 88873u, 0u));

var<private> global1: f32;

var<private> global2: i32 = 21025i;

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global4: array<Struct_2, 27>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_3) -> bool {
    var var_0 = ~88568u;
    global4 = array<Struct_2, 27>();
    var var_1 = global3.x;
    let var_2 = arg_0.d.x;
    global2 = max(9897i, 0i);
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<bool>) -> Struct_3 {
    global4 = array<Struct_2, 27>();
    global0 = array<vec4<u32>, 8>();
    global4 = array<Struct_2, 27>();
    var var_0 = select(select(vec4<bool>(global3.x, any(select(global3.yyz, arg_2, false)), all(!vec4<bool>(global3.x, arg_2.x, true, arg_2.x)), false), !(!select(vec4<bool>(arg_2.x, false, arg_2.x, false), vec4<bool>(global3.x, global3.x, true, false), vec4<bool>(arg_2.x, true, true, global3.x))), any(vec2<bool>(!arg_2.x, true))), vec4<bool>(true, -1i < (-u_input.a.x | -2147483647i), false, all(vec3<bool>(func_3(Struct_2(Struct_1(vec3<u32>(0u, 1u, 30808u), 1u, false, vec3<bool>(false, global3.x, false), global0[_wgslsmith_index_u32(0u, 8u)]), Struct_1(vec3<u32>(34889u, 1u, 4595u), 59136u, false, global3.yyw, global0[_wgslsmith_index_u32(2414u, 8u)]), vec4<i32>(arg_1, arg_0.x, arg_1, 2147483647i), vec2<f32>(-343f, -735f), Struct_1(vec3<u32>(1u, 69513u, 1u), 97874u, global3.x, vec3<bool>(global3.x, true, arg_2.x), vec4<u32>(0u, 21119u, 1u, 4294967295u))), arg_0, Struct_3(false, vec2<u32>(1u, 69561u), vec4<i32>(0i, -1i, arg_1, 1i))), true, all(vec2<bool>(false, arg_2.x))))), vec4<bool>(!arg_2.x, true, global3.x, false));
    let var_1 = Struct_3(select(true, true && global3.x, all(global3.yz)), vec2<u32>(_wgslsmith_div_u32(countOneBits(0u), firstTrailingBit(1u)), ~reverseBits(~4294967295u)), -vec4<i32>(u_input.a.x, 1i, 64025i, _wgslsmith_add_i32(~u_input.b.x, -u_input.a.x)));
    return Struct_3(var_0.x, min(_wgslsmith_mod_vec2_u32(~var_1.b, var_1.b), var_1.b), ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.c.x, -12312i, arg_0.x, 2147483647i) | u_input.b, countOneBits(vec4<i32>(46552i, arg_0.x, -1i, arg_0.x)), vec4<i32>(u_input.c.x, var_1.c.x, -1i, arg_0.x))));
}

fn func_4(arg_0: Struct_5) -> Struct_4 {
    var var_0 = arg_0.c;
    global0 = array<vec4<u32>, 8>();
    var var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, var_0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.d.x)))), vec2<f32>(-473f, arg_0.c.d.x)));
    var_1 = arg_0.c.d;
    var_0 = global4[_wgslsmith_index_u32(35682u, 27u)];
    return Struct_4(var_0.d, global4[_wgslsmith_index_u32(21778u, 27u)]);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = func_2(vec2<i32>(abs(min(~u_input.c.x, -u_input.a.x)), min(_wgslsmith_mod_i32(u_input.c.x, _wgslsmith_mult_i32(arg_1.b.c.x, 31969i)), _wgslsmith_add_i32(u_input.b.x | arg_1.b.c.x, -64170i))), _wgslsmith_add_i32(max(_wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_1.b.c.x, u_input.c.x), min(arg_1.b.c.x, -2550i)), -arg_1.b.c.x ^ u_input.c.x), -32674i), !func_4(Struct_5(func_2(vec2<i32>(u_input.b.x, arg_1.b.c.x), u_input.a.x, vec3<bool>(true, false, global3.x)), -2147483647i, Struct_2(arg_1.b.e, arg_1.b.a, vec4<i32>(arg_1.b.c.x, u_input.c.x, u_input.b.x, arg_1.b.c.x), vec2<f32>(-1000f, arg_0.x), Struct_1(arg_1.b.b.a, arg_1.b.a.a.x, global3.x, arg_1.b.e.d, vec4<u32>(0u, 42205u, 62758u, arg_1.b.b.b))))).b.b.d);
    var var_1 = func_2(vec2<i32>(-1i, u_input.b.x), -_wgslsmith_add_i32(-11895i, -arg_1.b.c.x), global3.zzx).c.yyx;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.b.d, arg_0)));
    let var_3 = abs(func_4(Struct_5(func_2(-vec2<i32>(1i, -88271i), _wgslsmith_div_i32(arg_1.b.c.x, 1i), vec3<bool>(arg_1.b.a.c, true, false)), -(~0i), Struct_2(arg_1.b.a, func_4(Struct_5(Struct_3(var_0.a, vec2<u32>(arg_1.b.a.e.x, 9951u), vec4<i32>(1i, 0i, arg_1.b.c.x, var_0.c.x)), var_0.c.x, global4[_wgslsmith_index_u32(arg_1.b.a.a.x, 27u)])).b.a, arg_1.b.c, vec2<f32>(777f, var_2.x), Struct_1(vec3<u32>(var_0.b.x, arg_1.b.e.a.x, arg_1.b.b.b), 87497u, arg_1.b.e.c, global3.yxx, vec4<u32>(4294967295u, 4294967295u, arg_1.b.a.e.x, 0u))))).b.e.e.x);
    return !vec4<bool>(true, any(global3.zw), global3.x, true);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: i32) -> f32 {
    global2 = u_input.c.x;
    var var_0 = false;
    let var_1 = vec2<i32>(-1i) * -vec2<i32>(arg_0.x, ~(~(-50416i)));
    global3 = select(select(vec4<bool>(select(any(vec4<bool>(false, arg_2.x, true, true)), !global3.x, arg_2.x), true, !arg_2.x, global3.x), vec4<bool>(false, global3.x, any(select(global3.xwy, global3.zyz, true)), !any(vec4<bool>(arg_2.x, true, arg_2.x, false))), !(!all(global3.wz))), !(!(!vec4<bool>(true, arg_2.x, false, false))), func_5(vec2<f32>(-2805f, _wgslsmith_f_op_f32(-297f * 312f)), func_4(Struct_5(func_2(vec2<i32>(var_1.x, arg_0.x), -4474i, vec3<bool>(arg_2.x, false, false)), ~u_input.c.x, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), 27u)]))));
    global3 = !vec4<bool>(false && !arg_2.x, arg_2.x, arg_2.x, true);
    return 1068f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(399f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(721f - -353f) * _wgslsmith_f_op_f32(func_1(vec3<i32>(var_0, -10921i, var_0), u_input.b.zwy, global3.wx, -3526i)))))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-560f + -2382f))));
    let var_2 = reverseBits(-vec2<i32>(-14513i, 1i) ^ firstLeadingBit(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c.xy, vec2<i32>(-20934i, var_0)), vec2<i32>(u_input.c.x, var_0) ^ u_input.c.xx)));
    global3 = select(vec4<bool>(!func_3(Struct_2(Struct_1(vec3<u32>(24762u, 0u, 1u), 0u, global3.x, vec3<bool>(true, false, global3.x), global0[_wgslsmith_index_u32(29471u, 8u)]), Struct_1(vec3<u32>(4294967295u, 0u, 340u), 1u, global3.x, vec3<bool>(global3.x, global3.x, true), global0[_wgslsmith_index_u32(0u, 8u)]), u_input.b, vec2<f32>(481f, -710f), Struct_1(vec3<u32>(0u, 0u, 27548u), 4294967295u, false, global3.yzz, global0[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_mult_vec2_i32(u_input.a.yy, vec2<i32>(var_2.x, -5855i)), func_2(var_2, u_input.b.x, global3.xzz)), -572f > _wgslsmith_f_op_f32(min(var_1, var_1)), !global3.x, func_3(func_4(Struct_5(Struct_3(true, vec2<u32>(1u, 1u), u_input.b), u_input.a.x, global4[_wgslsmith_index_u32(50330u, 27u)])).b, u_input.c.xx, func_2(var_2, -14511i, select(global3.zxx, global3.zzz, false)))), select(select(vec4<bool>(global3.x, false, true, false), !select(vec4<bool>(global3.x, true, false, false), vec4<bool>(false, true, global3.x, global3.x), vec4<bool>(false, true, global3.x, global3.x)), select(!vec4<bool>(true, global3.x, false, true), select(vec4<bool>(false, false, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(true, global3.x, global3.x, global3.x)), global3.x)), vec4<bool>(global3.x, all(global3.zx) | true, global3.x, func_2(func_2(vec2<i32>(-60922i, var_0), var_0, global3.xzz).c.wx, var_2.x, vec3<bool>(global3.x, global3.x, false)).a), func_3(global4[_wgslsmith_index_u32(4294967295u, 27u)], vec2<i32>(i32(-1i) * -30318i, var_2.x), func_2(~var_2, -11863i, vec3<bool>(global3.x, global3.x, false)))), select(true, max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 46215u, 4294967295u), vec3<u32>(29392u, 26244u, 4294967295u)), 41421u) > min(func_2(u_input.a.xy, var_2.x, vec3<bool>(false, true, false)).b.x, 0u), !(!any(vec4<bool>(global3.x, true, global3.x, global3.x)))));
    global0 = array<vec4<u32>, 8>();
    global3 = select(!func_5(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1)), _wgslsmith_f_op_f32(var_1 - 1515f)), Struct_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(912f, 2159f))), func_4(Struct_5(Struct_3(global3.x, vec2<u32>(29655u, 41145u), vec4<i32>(var_0, 1i, 1i, -18944i)), -1i, global4[_wgslsmith_index_u32(1u, 27u)])).b)), select(vec4<bool>(true, global3.x, true, func_3(func_4(Struct_5(Struct_3(false, vec2<u32>(46955u, 1u), vec4<i32>(var_2.x, var_2.x, 39014i, var_0)), -2147483647i, Struct_2(Struct_1(vec3<u32>(4294967295u, 59042u, 1u), 118676u, true, vec3<bool>(global3.x, global3.x, global3.x), vec4<u32>(4294967295u, 53664u, 48722u, 29762u)), Struct_1(vec3<u32>(0u, 1u, 32272u), 4294967295u, true, vec3<bool>(global3.x, false, global3.x), vec4<u32>(119860u, 1u, 4294967295u, 21782u)), u_input.b, vec2<f32>(var_1, -316f), Struct_1(vec3<u32>(91867u, 29923u, 4294967295u), 4294967295u, global3.x, vec3<bool>(false, global3.x, global3.x), vec4<u32>(29371u, 9345u, 1u, 16179u))))).b, ~var_2, func_2(var_2, var_2.x, global3.zyw))), !(!vec4<bool>(global3.x, global3.x, false, global3.x)), select(!select(vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(false, global3.x, true, true), global3.x), !vec4<bool>(global3.x, global3.x, true, global3.x), !(!vec4<bool>(true, global3.x, false, false)))), true);
    let var_3 = vec3<i32>(func_4(Struct_5(Struct_3(true, vec2<u32>(26883u, 6295u), firstTrailingBit(vec4<i32>(var_0, var_0, u_input.c.x, var_2.x))), var_2.x, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, ~50639u), 27u)])).b.c.x, -_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_2.x, 0i, u_input.a.x), var_2.x), var_0), abs(~_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-42945i, 1i, 0i), select(-1i, 0i, global3.x), -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-591f - 210f), _wgslsmith_f_op_f32(-var_1)), vec2<f32>(_wgslsmith_f_op_f32(var_1 - 1630f), -203f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1103f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + var_1))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-249f, 322f, -125f, var_1)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + 1316f)), -513f, 239f, -940f)), _wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-735f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(706f + var_1)))), _wgslsmith_f_op_f32(f32(-1f) * -1426f))));
}

