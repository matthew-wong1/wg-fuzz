struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: array<f32, 27> = array<f32, 27>(1904f, -110f, 144f, 943f, -676f, 401f, 637f, -120f, 733f, -805f, 1657f, 243f, 619f, -1204f, 172f, -585f, -1815f, 458f, -816f, 950f, 1000f, 570f, -1428f, 1292f, 1000f, 2119f, -1672f);

var<private> global2: array<bool, 29>;

var<private> global3: array<Struct_2, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_2) -> f32 {
    global2 = array<bool, 29>();
    let var_0 = Struct_2(vec3<i32>(-32199i, firstTrailingBit(abs(firstLeadingBit(27179i))), u_input.b), max(6984i, 0i), 1100f, Struct_1(abs(arg_3.d.a)));
    var var_1 = select(!(!select(vec3<bool>(true, true, false), !vec3<bool>(global2[_wgslsmith_index_u32(arg_0.d.d.a.x, 29u)], false, true), global2[_wgslsmith_index_u32(arg_0.d.d.a.x ^ var_0.d.a.x, 29u)])), !vec3<bool>(!global2[_wgslsmith_index_u32(0u, 29u)] && (arg_3.a.x > var_0.b), true, global2[_wgslsmith_index_u32(arg_0.b.d.a.x, 29u)]), vec3<bool>(!(false == all(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 29u)], true, global2[_wgslsmith_index_u32(arg_3.d.a.x, 29u)], false))), select(true, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_3.d.a.x & 23649u, arg_3.d.a.x), 29u)], true), true));
    var var_2 = Struct_1(~arg_0.b.d.a);
    var var_3 = u_input.b;
    return _wgslsmith_div_f32(-447f, var_0.c);
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(arg_0, global1[_wgslsmith_index_u32(113655u, 27u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(arg_0.b.d.a.x, 27u)], global1[_wgslsmith_index_u32(113961u, 27u)], global1[_wgslsmith_index_u32(arg_0.b.d.a.x, 27u)], global1[_wgslsmith_index_u32(arg_0.d.d.a.x, 27u)])), arg_0.b)), -968f)) - vec2<f32>(1000f, global1[_wgslsmith_index_u32(~arg_0.d.d.a.x >> (_wgslsmith_sub_u32(arg_0.d.d.a.x | arg_0.b.d.a.x, 1u) % 32u), 27u)]));
    var var_1 = Struct_2(-arg_0.c.xxz, ~(~(-2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_0.a, var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.c), -1395f))), Struct_1(vec4<u32>(arg_0.d.d.a.x, firstLeadingBit(firstLeadingBit(17745u)), ~_wgslsmith_mod_u32(arg_0.d.d.a.x, arg_0.b.d.a.x), _wgslsmith_mult_u32(arg_0.d.d.a.x << (0u % 32u), countOneBits(4294967295u)))));
    var var_2 = arg_0;
    global3 = array<Struct_2, 18>();
    return Struct_1(var_2.d.d.a);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 27u)])))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c), arg_0.c, !select(global2[_wgslsmith_index_u32(1u, 29u)], false, true)))) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.d.a.x, 27u)])), 214f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-313f, arg_0.c), arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -570f)))));
    let var_1 = arg_0;
    let var_2 = arg_0.d.a.wx;
    var var_3 = min(var_1.d.a.x, ~var_2.x);
    let var_4 = ~(var_1.b | -u_input.a.x);
    return var_1.d;
}

fn func_1(arg_0: vec2<bool>) -> vec2<f32> {
    global1 = array<f32, 27>();
    var var_0 = 2147483647i;
    let var_1 = _wgslsmith_dot_vec3_i32(countOneBits(abs(u_input.a)), reverseBits(_wgslsmith_mult_vec3_i32(~u_input.a ^ vec3<i32>(u_input.b, u_input.a.x, 5638i), vec3<i32>(u_input.a.x << (33529u % 32u), 27331i, 1i))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 27u)]))), Struct_2(u_input.a << (~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 61277u, 3068u)) % vec3<u32>(32u)), var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1471f * -345f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(46586u, 27u)] + global1[_wgslsmith_index_u32(0u, 27u)]) + _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(4294967295u, 27u)])))), func_4(Struct_2(vec3<i32>(u_input.b, var_1, var_1), 35498i, -871f, func_2(Struct_3(global1[_wgslsmith_index_u32(4294967295u, 27u)], global3[_wgslsmith_index_u32(0u, 18u)], vec4<i32>(-2641i, 2147483647i, u_input.b, var_1), global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(arg_0.x, false, false, false))))), vec4<i32>(firstLeadingBit(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(6606i, 40649i, -1i), vec3<i32>(1i, var_1, u_input.b)))), _wgslsmith_div_i32(-var_1, ~countOneBits(u_input.a.x)), 23890i, i32(-1i) * -38762i), global3[_wgslsmith_index_u32(func_4(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(14730u, ~max(0u, 1u)), 18u)]).a.x, 18u)]);
    let var_3 = !(!select(vec4<bool>(true, true, true, !arg_0.x), vec4<bool>(true | global2[_wgslsmith_index_u32(var_2.b.d.a.x, 29u)], false, all(vec2<bool>(global2[_wgslsmith_index_u32(var_2.b.d.a.x, 29u)], arg_0.x)), any(vec2<bool>(false, arg_0.x))), !vec4<bool>(arg_0.x, true, arg_0.x, false)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(235f, var_2.b.c) + vec2<f32>(var_2.b.c, global1[_wgslsmith_index_u32(var_2.d.d.a.x, 27u)])))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 32>();
    global2 = array<bool, 29>();
    var var_0 = max(2147483647i, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.a), (u_input.a << (vec3<u32>(30231u, 53569u, 97023u) % vec3<u32>(32u))) | firstTrailingBit(vec3<i32>(u_input.b, 54625i, 0i))) ^ abs(-(u_input.b & 0i)));
    global0 = array<Struct_2, 32>();
    global3 = array<Struct_2, 18>();
    var var_1 = ~(~1u);
    var var_2 = select(!(!vec3<bool>(true, true, false | global2[_wgslsmith_index_u32(3995u, 29u)])), vec3<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~31957u), 1u), 29u)], true), true);
    var var_3 = ~max(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(~11479u, _wgslsmith_mult_u32(1u, 29573u), ~1u, select(11735u, 17139u, true)), countOneBits(vec4<u32>(0u, 49284u, 66109u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(29450u, 60014u), vec2<u32>(var_3.x, var_3.x)), var_3.x), 27u)], -251f) + _wgslsmith_f_op_vec2_f32(func_1(var_2.yx))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~10935u, 15238u), 27u)]));
}

