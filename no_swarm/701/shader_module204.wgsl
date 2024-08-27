struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, true, true, false, true, true, false, false, true, false, false, false, true, false, false);

var<private> global1: array<u32, 3> = array<u32, 3>(4294967295u, 0u, 41470u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> i32 {
    var var_0 = ~0u;
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-1229f + 196f);
    let var_3 = vec2<i32>(-select(u_input.c.x, 8338i, arg_0.x) ^ u_input.e, u_input.e) | u_input.c;
    var var_4 = _wgslsmith_div_vec3_u32(~(~u_input.d), vec3<u32>(~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26787u, 3u)], 3u)] & u_input.a), ~u_input.b, u_input.d.x));
    return 6973i;
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<i32>(15870i, reverseBits(61475i), -u_input.e, ~(u_input.e & _wgslsmith_dot_vec4_i32(vec4<i32>(13085i, u_input.c.x, 2147483647i, -25248i), vec4<i32>(u_input.e, -18508i, 2147483647i, u_input.e)))) & _wgslsmith_sub_vec4_i32(~(-vec4<i32>(u_input.c.x, -2147483647i, u_input.e, 0i)), vec4<i32>(firstTrailingBit(5818i) >> ((4294967295u >> (global1[_wgslsmith_index_u32(0u, 3u)] % 32u)) % 32u), u_input.c.x, select(u_input.c.x, -u_input.e, false && global0[_wgslsmith_index_u32(52022u, 15u)]), -3225i));
    global0 = array<bool, 15>();
    global1 = array<u32, 3>();
    global0 = array<bool, 15>();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-338f * -1271f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(110f, 530f, true)) + 1f), -292f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(418f, -1384f, -878f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1266f, 552f, -1000f)))) - vec3<f32>(-535f, _wgslsmith_f_op_f32(abs(219f)), 429f))));
    return Struct_2(global1[_wgslsmith_index_u32(~countOneBits(92331u), 3u)]);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<i32>) -> bool {
    global1 = array<u32, 3>();
    global0 = array<bool, 15>();
    let var_0 = arg_1;
    var var_1 = min(0u, ~4294967295u);
    var var_2 = Struct_1(arg_2, !select(!(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 15u)], false)), select(vec2<bool>(false, false), !vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 15u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 15u)])), vec2<bool>(global0[_wgslsmith_index_u32(var_0.a, 15u)], global0[_wgslsmith_index_u32(12527u, 15u)])), !vec2<bool>(global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(0u, 3u)]), 3u)] <= arg_1.a, select(true, global0[_wgslsmith_index_u32(u_input.d.x, 15u)], true)), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1266f - -1353f) * _wgslsmith_f_op_f32(abs(1000f)))))), countOneBits(firstLeadingBit(abs(vec4<i32>(arg_0, arg_3.x, arg_0, arg_3.x) & vec4<i32>(-2147483647i, u_input.e, arg_0, arg_2.x)))));
    return true;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> vec4<bool> {
    var var_0 = u_input.d;
    var var_1 = Struct_2(~_wgslsmith_dot_vec3_u32(vec3<u32>(~global1[_wgslsmith_index_u32(var_0.x, 3u)], ~14936u, select(u_input.d.x, 1u, global0[_wgslsmith_index_u32(1u, 15u)])), vec3<u32>(0u, ~1u, ~global1[_wgslsmith_index_u32(u_input.a, 3u)])));
    let var_2 = countOneBits(vec4<u32>(firstTrailingBit(4294967295u), ~4294967295u, 4102u, ~u_input.b) >> (vec4<u32>(_wgslsmith_div_u32(12152u, 32510u), abs(u_input.d.x), select(62791u, u_input.b, global0[_wgslsmith_index_u32(22784u, 15u)]), global1[_wgslsmith_index_u32(u_input.b, 3u)] & global1[_wgslsmith_index_u32(var_0.x, 3u)]) % vec4<u32>(32u))) ^ (vec4<u32>(min(629u, 80014u >> (0u % 32u)), global1[_wgslsmith_index_u32(var_0.x, 3u)], abs(u_input.b << (89217u % 32u)), _wgslsmith_add_u32(31519u, ~82993u)) & vec4<u32>(u_input.b, (93571u & global1[_wgslsmith_index_u32(u_input.a, 3u)]) >> (40766u % 32u), abs(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d)), ~abs(4294967295u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(164f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f)))));
    let var_4 = Struct_1(vec2<i32>(max(~15264i, arg_1.x), 31483i), select(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, global0[_wgslsmith_index_u32(78101u, 15u)])), vec2<bool>(true, true), vec2<bool>(true, arg_0)), vec2<bool>(arg_0, all(!vec3<bool>(arg_0, false, global0[_wgslsmith_index_u32(5247u, 15u)]))), arg_0), select(select(!(!vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.x, 3u)], 15u)], true)), select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(global0[_wgslsmith_index_u32(0u, 15u)], true), vec2<bool>(arg_0, global0[_wgslsmith_index_u32(var_0.x, 15u)])), !vec2<bool>(global0[_wgslsmith_index_u32(30128u, 15u)], true)), vec2<bool>(global0[_wgslsmith_index_u32(75704u, 15u)] != false, !global0[_wgslsmith_index_u32(25209u, 15u)])), !vec2<bool>(func_3(-61097i, Struct_2(1u), vec2<i32>(arg_1.x, u_input.c.x), vec3<i32>(-2147483647i, 1i, -1055i)), select(arg_0, global0[_wgslsmith_index_u32(var_1.a, 15u)], false)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(true, arg_0)), vec2<bool>(33325i <= u_input.c.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39764u, 3u)] << (40985u % 32u), 15u)]), arg_0)), -1000f, vec4<i32>(0i, _wgslsmith_dot_vec3_i32(select(firstTrailingBit(vec3<i32>(u_input.e, 51379i, arg_1.x)), vec3<i32>(u_input.e, 16106i, u_input.c.x) << (u_input.d % vec3<u32>(32u)), 7731u == var_0.x), ~(vec3<i32>(0i, -1092i, -8572i) & vec3<i32>(46279i, 2147483647i, u_input.c.x))), (func_1(vec4<bool>(global0[_wgslsmith_index_u32(var_1.a, 15u)], arg_0, arg_0, true), global0[_wgslsmith_index_u32(24285u, 15u)]) & u_input.e) >> (0u % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(51700i, -68993i), vec2<i32>(arg_1.x, -15140i)), vec2<i32>(2147483647i, u_input.c.x) | u_input.c) << (~(6499u & global1[_wgslsmith_index_u32(21138u, 3u)]) % 32u)));
    return select(!vec4<bool>(true, arg_0, var_4.b.x | false, false), vec4<bool>(func_3(~2147483647i, Struct_2(min(0u, var_2.x)), firstLeadingBit(~vec2<i32>(-2147483647i, var_4.a.x)), var_4.e.xyx), false, !arg_0, !(!(!arg_0))), false);
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> f32 {
    return 403f;
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, -579f, _wgslsmith_f_op_f32(1f - -1000f), _wgslsmith_f_op_f32(-arg_1)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-277f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 * arg_1))))), 918f, arg_1, arg_1));
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(func_1(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 15u)], true, global0[_wgslsmith_index_u32(arg_2.a, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)]), true), 1i) & abs(max(-492i, u_input.c.x)), -2147483647i), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(!(!vec2<bool>(global0[_wgslsmith_index_u32(21569u, 15u)], global0[_wgslsmith_index_u32(68306u, 15u)])), !(!vec2<bool>(global0[_wgslsmith_index_u32(arg_2.a, 15u)], true)), !select(vec2<bool>(global0[_wgslsmith_index_u32(7372u, 15u)], true), vec2<bool>(false, false), global0[_wgslsmith_index_u32(0u, 15u)])), !(var_0.x > _wgslsmith_f_op_f32(sign(-1801f)))), !(!vec2<bool>(global0[_wgslsmith_index_u32(7735u, 15u)], true)), arg_1, _wgslsmith_mod_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.e, u_input.c.x, -6687i, -1i), vec4<i32>(u_input.c.x, 48390i, 1i, u_input.e), global0[_wgslsmith_index_u32(59828u, 15u)]), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 1i, 0i, -15446i), vec4<i32>(0i, u_input.e, -1i, -12392i)))), _wgslsmith_clamp_vec4_i32(-max(vec4<i32>(u_input.c.x, 54449i, -32824i, -53842i), vec4<i32>(u_input.e, -2147483647i, u_input.e, u_input.c.x)), -firstLeadingBit(vec4<i32>(u_input.e, 1i, u_input.e, 21753i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -2147483647i, u_input.c.x, 17228i), ~vec4<i32>(20762i, 0i, u_input.e, u_input.e)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0, var_0), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-500f, var_0.x, var_1.d, 1210f)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, -828f, -594f, 1872f), _wgslsmith_f_op_vec4_f32(var_0 + var_0)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_0, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-714f, arg_1, 1771f, var_1.d), vec4<f32>(var_0.x, 1144f, var_0.x, var_1.d))))) + vec4<f32>(_wgslsmith_f_op_f32(max(var_1.d, -1233f)), -2314f, _wgslsmith_f_op_f32(613f + -273f), var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0, vec4<f32>(var_0.x, var_1.d, 188f, arg_1)))))))));
    var var_3 = vec4<u32>(5674u, _wgslsmith_mod_u32(arg_2.a, arg_0.a & _wgslsmith_div_u32(~arg_2.a, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.a), 3u)])), ~(~max(1u, _wgslsmith_add_u32(u_input.b, 25442u))), u_input.a);
    global0 = array<bool, 15>();
    return var_2.wwy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 15>();
    let var_0 = _wgslsmith_mod_vec2_i32(-(~_wgslsmith_mult_vec2_i32(~vec2<i32>(0i, 2147483647i), ~vec2<i32>(u_input.c.x, u_input.e))), countOneBits(vec2<i32>(func_1(vec4<bool>(false, global0[_wgslsmith_index_u32(64975u, 15u)], true, false), all(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 15u)]))), firstTrailingBit(1i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_6(func_2(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(func_4(func_3(-2147483647i, Struct_2(56504u), vec2<i32>(-2147483647i, 2147483647i), vec3<i32>(39851i, var_0.x, -22306i)), vec2<i32>(-2147483647i, -1i) ^ u_input.c), 1f, func_2(), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1774f, 131f))))), 1f), func_2()));
    global1 = array<u32, 3>();
    let var_2 = -u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(abs(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-13216i, var_0.x, u_input.c.x), vec3<i32>(u_input.c.x, var_2, 0i)), select(vec3<i32>(var_0.x, 2147483647i, 1i), vec3<i32>(-2147483647i, var_0.x, var_2), global0[_wgslsmith_index_u32(4294967295u, 15u)]))), -_wgslsmith_div_i32(u_input.e, var_2 << (27209u % 32u))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, firstTrailingBit(-33014i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-3778i, var_0.x, -10924i) & vec3<i32>(35461i, 2147483647i, 0i), vec3<i32>(u_input.c.x, -31695i, var_2)) ^ 24127i));
}

