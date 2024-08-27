struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: f32 = 413f;

var<private> global2: array<vec4<bool>, 30>;

var<private> global3: array<bool, 19> = array<bool, 19>(true, true, true, true, false, false, true, true, true, false, true, true, false, false, false, true, false, true, false);

var<private> global4: f32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = countOneBits(arg_0.b);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -299f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1744f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1525f)) * _wgslsmith_f_op_f32(step(378f, -644f))), _wgslsmith_f_op_f32(ceil(-1280f)), global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 19u)]))));
    var var_2 = -countOneBits(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, arg_0.b), vec2<i32>(0i, var_0)), ~1i));
    let var_3 = any(!(!(!(!vec3<bool>(arg_0.a, true, global3[_wgslsmith_index_u32(36566u, 19u)])))));
    global1 = _wgslsmith_f_op_f32(1404f - -1302f);
    return all(!vec2<bool>(select(true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)] && global3[_wgslsmith_index_u32(57887u, 19u)], true), select(any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 19u)], var_3, arg_0.a, true)), false, global3[_wgslsmith_index_u32(17860u, 19u)] || false)));
}

fn func_2() -> vec3<bool> {
    let var_0 = func_3(Struct_1(true, -abs(1i)));
    global4 = -1000f;
    let var_1 = Struct_2(Struct_1(any(!vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.c.x, 19u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)])), _wgslsmith_sub_i32(32990i, 1i)), Struct_1(!all(vec3<bool>(true, true, true)), 1i), _wgslsmith_f_op_f32(f32(-1f) * -1624f), Struct_1(true, -1i), ~global0[_wgslsmith_index_u32(4294967295u, 19u)] ^ 8744u);
    global3 = array<bool, 19>();
    global0 = array<u32, 19>();
    return !(!(!select(select(vec3<bool>(true, false, var_0), vec3<bool>(var_0, var_0, true), vec3<bool>(global3[_wgslsmith_index_u32(0u, 19u)], var_1.a.a, false)), select(vec3<bool>(false, var_1.d.a, true), vec3<bool>(var_0, var_1.a.a, false), vec3<bool>(false, false, global3[_wgslsmith_index_u32(0u, 19u)])), true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_1.d;
    let var_1 = -29853i;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c, 1090f, 637f, -883f))), vec4<f32>(_wgslsmith_div_f32(-595f, arg_1.c), 2117f, _wgslsmith_f_op_f32(min(arg_3.c, arg_1.c)), _wgslsmith_f_op_f32(ceil(487f))))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(259f)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(387f * _wgslsmith_f_op_f32(922f + arg_1.c))), 1935f));
    let var_3 = arg_0;
    global2 = array<vec4<bool>, 30>();
    return Struct_2(Struct_1(global3[_wgslsmith_index_u32((_wgslsmith_clamp_u32(1u, arg_2.x, 48201u) | arg_3.e) << (_wgslsmith_mod_u32(arg_3.e, 1u << (u_input.c.x % 32u)) % 32u), 19u)], -2147483647i), Struct_1(var_0.a, countOneBits(select(min(var_0.b, -1i), _wgslsmith_div_i32(24169i, arg_3.a.b), var_3.x))), -595f, Struct_1(true, arg_1.a.b), ~arg_1.e);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = !(!(!vec2<bool>(true, func_2().x)));
    return abs(abs(vec2<i32>(_wgslsmith_mult_i32(arg_0.b & arg_0.b, arg_0.b), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.d.b, arg_0.b, -2147483647i, arg_0.b), vec4<i32>(10185i, arg_2.d.b, arg_0.b, arg_0.b) ^ vec4<i32>(-2147483647i, 2147483647i, arg_0.b, arg_2.b.b)))));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> i32 {
    global1 = -1000f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-785f, -616f) - _wgslsmith_f_op_f32(ceil(661f)));
    let var_0 = -1119f;
    let var_1 = func_5(Struct_1(true, min(i32(-1i) * -1i, 0i)), func_4(select(func_2(), arg_1, !select(arg_1, vec3<bool>(true, false, true), arg_1.x)), Struct_2(Struct_1(false, ~arg_0), Struct_1(true, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 1i), vec2<i32>(arg_0, -30698i))), _wgslsmith_f_op_f32(-430f * 1112f), Struct_1(arg_0 > arg_0, arg_0), ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 19u)], 19u)])), firstTrailingBit(reverseBits(u_input.c.zz)), Struct_2(Struct_1(true, arg_0), Struct_1(arg_1.x, -2147483647i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))), Struct_1(any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 19u)], false, true)), 0i), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(16695u, 19u)] | 4294967295u, 4294967295u))), Struct_2(Struct_1(!arg_1.x, ~arg_0), Struct_1(true, 1i), -271f, func_4(!vec3<bool>(true, true, arg_1.x), Struct_2(func_4(vec3<bool>(arg_1.x, true, true), Struct_2(Struct_1(false, 15342i), Struct_1(false, arg_0), var_0, Struct_1(arg_1.x, -32615i), global0[_wgslsmith_index_u32(u_input.a, 19u)]), u_input.c.xx, Struct_2(Struct_1(true, arg_0), Struct_1(false, -1i), 639f, Struct_1(arg_1.x, arg_0), 118u)).a, Struct_1(global3[_wgslsmith_index_u32(u_input.c.x, 19u)], 474i), -853f, func_4(vec3<bool>(arg_1.x, arg_1.x, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 19u)], 19u)]), Struct_2(Struct_1(global3[_wgslsmith_index_u32(1u, 19u)], arg_0), Struct_1(false, 0i), 1000f, Struct_1(arg_1.x, 1i), 0u), u_input.c.yz, Struct_2(Struct_1(global3[_wgslsmith_index_u32(u_input.a, 19u)], arg_0), Struct_1(true, 1i), -908f, Struct_1(global3[_wgslsmith_index_u32(4294967295u, 19u)], arg_0), 44u)).a, _wgslsmith_add_u32(23847u, 41897u)), firstLeadingBit(max(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2336u, 19u)], 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]), u_input.c.yx)), Struct_2(func_4(vec3<bool>(false, false, true), Struct_2(Struct_1(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20314u, 19u)], 19u)], arg_0), Struct_1(arg_1.x, arg_0), var_0, Struct_1(false, arg_0), global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec2<u32>(0u, 37568u), Struct_2(Struct_1(global3[_wgslsmith_index_u32(34624u, 19u)], 33337i), Struct_1(true, -1i), -453f, Struct_1(arg_1.x, -1i), global0[_wgslsmith_index_u32(0u, 19u)])).a, Struct_1(true, arg_0), _wgslsmith_f_op_f32(var_0 * 455f), func_4(vec3<bool>(arg_1.x, true, true), Struct_2(Struct_1(false, arg_0), Struct_1(arg_1.x, 7807i), var_0, Struct_1(false, arg_0), u_input.a), vec2<u32>(57343u, u_input.b), Struct_2(Struct_1(global3[_wgslsmith_index_u32(0u, 19u)], arg_0), Struct_1(arg_1.x, arg_0), -405f, Struct_1(global3[_wgslsmith_index_u32(4294967295u, 19u)], -56760i), 46396u)).a, 958u)).d, global0[_wgslsmith_index_u32(1u, 19u)]));
    global1 = _wgslsmith_f_op_f32(round(190f));
    return ~4844i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(any(select(vec4<bool>(true, true, true, !global3[_wgslsmith_index_u32(u_input.b, 19u)]), select(!global2[_wgslsmith_index_u32(13796u, 30u)], select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(84588u, 19u)], false), global2[_wgslsmith_index_u32(8058u, 30u)], true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 19u)], true, true, false)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 0u), 19u)])), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-firstLeadingBit(vec3<i32>(-49312i, -32133i, -69467i)), _wgslsmith_add_vec3_i32(~vec3<i32>(222i, 21244i, 28014i), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -2147483647i, 0i), vec3<i32>(108454i, 42275i, 3451i)))), max(~vec3<i32>(1i, 1i, 1i), _wgslsmith_div_vec3_i32(~vec3<i32>(-2147483647i, -1i, 2085i), vec3<i32>(-23737i, 2147483647i, 34699i)))));
    let var_1 = ~(~(~vec4<u32>(_wgslsmith_add_u32(22598u, 3822u), 43946u, _wgslsmith_div_u32(0u, 72853u), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c))));
    var var_2 = Struct_1(true, func_1(~var_0.b, vec3<bool>(var_0.a, var_0.a, var_0.a)));
    let var_3 = -reverseBits(~vec2<i32>(-14765i, 1i) & reverseBits(min(vec2<i32>(var_0.b, var_0.b), vec2<i32>(2147483647i, var_2.b))));
    let var_4 = var_0;
    var_2 = Struct_1(global3[_wgslsmith_index_u32(0u, 19u)], 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * func_4(vec3<bool>(true, var_2.a, global3[_wgslsmith_index_u32(42714u, 19u)]), func_4(vec3<bool>(var_2.a, true, true), Struct_2(var_4, var_0, -588f, var_4, 7852u), u_input.c.yz, Struct_2(Struct_1(var_4.a, var_2.b), var_0, -1000f, var_4, global0[_wgslsmith_index_u32(var_1.x, 19u)])), _wgslsmith_clamp_vec2_u32(var_1.yz, vec2<u32>(4294967295u, 18405u), vec2<u32>(global0[_wgslsmith_index_u32(var_1.x, 19u)], 4294967295u)), Struct_2(var_4, var_4, -1364f, Struct_1(var_0.a, -2147483647i), 50308u)).c))));
}

