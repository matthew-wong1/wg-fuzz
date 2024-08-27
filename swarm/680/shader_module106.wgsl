struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, false, false, false, true, false, true, false, true, true, false, true, false, true, true, false, true, true, false, true, true);

var<private> global1: array<vec2<bool>, 19>;

var<private> global2: array<i32, 20> = array<i32, 20>(-46479i, 15201i, -24564i, 2147483647i, 9923i, -31179i, 34630i, 53172i, 1446i, -50160i, -1i, 20392i, 5837i, 1i, 33860i, 2147483647i, 2147483647i, i32(-2147483648), -45616i, 1i);

var<private> global3: f32;

var<private> global4: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> vec2<u32> {
    let var_0 = arg_0.x;
    global3 = 1847f;
    global0 = array<bool, 21>();
    var var_1 = _wgslsmith_add_vec3_u32(countOneBits(abs(_wgslsmith_add_vec3_u32(vec3<u32>(21260u, var_0, u_input.a), vec3<u32>(arg_0.x, 1u, var_0)))), ~(~firstLeadingBit(countOneBits(vec3<u32>(4294967295u, 0u, u_input.a)))));
    let var_2 = min(arg_0.x, 4294967295u << (abs(~u_input.a) % 32u));
    return vec2<u32>(_wgslsmith_mod_u32(115294u, ~1u), u_input.a);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = true;
    global0 = array<bool, 21>();
    global4 = true;
    var var_1 = 1000f;
    let var_2 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(20431u, arg_1.c ^ u_input.a), func_3(arg_1.b.xz << (arg_1.b.xw % vec2<u32>(32u)))) == (~firstLeadingBit(4294967295u) << (arg_1.b.x % 32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-415f, -194f) * -977f)))), _wgslsmith_mult_vec2_i32((abs(vec2<i32>(global2[_wgslsmith_index_u32(1u, 20u)], 6002i)) & vec2<i32>(1i, global2[_wgslsmith_index_u32(u_input.a, 20u)])) & countOneBits(vec2<i32>(global2[_wgslsmith_index_u32(arg_1.c, 20u)], global2[_wgslsmith_index_u32(0u, 20u)]) & vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 20u)], -9582i)), vec2<i32>(-_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(87980u, 20u)], 6471i), global2[_wgslsmith_index_u32(~u_input.a, 20u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(290f, _wgslsmith_div_f32(-865f, -1349f)) - -1224f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -730f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(-272f * -1000f), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.a, u_input.a), 21u)])))), arg_1);
    return var_2.e;
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    global0 = array<bool, 21>();
    let var_0 = Struct_3(arg_0);
    global1 = array<vec2<bool>, 19>();
    let var_1 = vec4<bool>(true, !global0[_wgslsmith_index_u32(var_0.a.b.x, 21u)], true, !all(vec4<bool>(true & global0[_wgslsmith_index_u32(u_input.a, 21u)], all(vec3<bool>(global0[_wgslsmith_index_u32(var_0.a.a, 21u)], global0[_wgslsmith_index_u32(var_0.a.c, 21u)], false)), !global0[_wgslsmith_index_u32(69633u, 21u)], all(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(56270u, 21u)])))));
    var var_2 = Struct_4(any(select(vec4<bool>(var_1.x, var_1.x, false == var_1.x, true), var_1, select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, var_1.x), var_1.x))), Struct_2(any(var_1), -1330f, max(~_wgslsmith_add_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], 46206i)), vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(arg_0.c, 20u)] ^ 0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1413f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -178f), 1000f, !global0[_wgslsmith_index_u32(var_0.a.a, 21u)]))), Struct_1(firstLeadingBit(1u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 18141u, u_input.a), arg_0.b), firstLeadingBit(4294967295u))), abs(func_2(!vec2<bool>(var_1.x, true), Struct_1(13519u, arg_0.b, u_input.a)).a) == u_input.a, _wgslsmith_f_op_f32(sign(189f)));
    return select(!(!var_1.yyw), !(!(!(!vec3<bool>(var_1.x, false, true)))), var_2.b.c.x > global2[_wgslsmith_index_u32(reverseBits(select(abs(1u), var_0.a.b.x, true)), 20u)]);
}

fn func_1(arg_0: Struct_3) -> Struct_4 {
    var var_0 = !func_4(func_2(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(40285u, 21u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], true), global1[_wgslsmith_index_u32(72303u, 19u)]), arg_0.a));
    var var_1 = abs(abs(_wgslsmith_add_vec2_u32(~arg_0.a.b.yw, vec2<u32>(1u, 31502u))) | vec2<u32>(7144u, ~u_input.a));
    global3 = -1333f;
    let var_2 = arg_0.a;
    var var_3 = Struct_4(all(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)]), select(vec3<bool>(true, var_0.x, true), vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 21u)], global0[_wgslsmith_index_u32(var_1.x, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec3<bool>(false, var_0.x, var_0.x)), func_4(arg_0.a))), Struct_2(!all(func_4(arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(global2[_wgslsmith_index_u32(var_2.a, 20u)]), 2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(var_2.b.x, 20u)], 34763i) ^ vec2<i32>(-75909i, global2[_wgslsmith_index_u32(u_input.a, 20u)]), vec2<i32>(global2[_wgslsmith_index_u32(var_2.c, 20u)], global2[_wgslsmith_index_u32(arg_0.a.c, 20u)]) & vec2<i32>(0i, 20300i)), vec2<i32>(-global2[_wgslsmith_index_u32(0u, 20u)], ~global2[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(955f)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-532f - -217f), 765f, !var_0.x))), var_2), !func_4(Struct_1(9501u, vec4<u32>(1u, 4294967295u, u_input.a, arg_0.a.b.x), ~1u)).x, _wgslsmith_f_op_f32(sign(412f)));
    return Struct_4(true != (true | !var_0.x), var_3.b, !global0[_wgslsmith_index_u32(1u, 21u)], 1000f);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    var var_0 = firstTrailingBit(u_input.a << (_wgslsmith_div_u32(1u, ~(~u_input.a)) % 32u));
    global3 = 393f;
    global0 = array<bool, 21>();
    let var_1 = firstLeadingBit(arg_1.b.c);
    global3 = arg_1.d;
    return Struct_1(firstTrailingBit(arg_0.x), ~max(arg_1.b.e.b, arg_1.b.e.b), firstLeadingBit(arg_1.b.e.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 38956u), ~vec2<u32>(u_input.a, 21411u)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 51611u), vec2<u32>(0u, u_input.a)), abs(vec2<u32>(u_input.a, 1u)))), func_1(Struct_3(Struct_1(u_input.a | u_input.a, min(vec4<u32>(u_input.a, u_input.a, 38251u, 105150u), vec4<u32>(0u, 1u, 75628u, u_input.a)), 0u))), any(select(select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec3<bool>(global0[_wgslsmith_index_u32(19313u, 21u)], true, true), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 21u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 21u)], false), vec3<bool>(false, false, true)), func_4(Struct_1(u_input.a, vec4<u32>(6750u, 0u, 1u, u_input.a), 25592u))), func_4(Struct_1(4294967295u, vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), 87992u)), func_1(Struct_3(Struct_1(u_input.a, vec4<u32>(46018u, u_input.a, u_input.a, u_input.a), u_input.a))).c)));
    global0 = array<bool, 21>();
    global2 = array<i32, 20>();
    global0 = array<bool, 21>();
    global4 = true;
    let var_1 = !global1[_wgslsmith_index_u32(1u, 19u)];
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(-2043f, _wgslsmith_f_op_f32(1331f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1126f, -2008f, false)), 2138f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2182f) * _wgslsmith_div_f32(-1221f, -1633f))), -539f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1424f)), _wgslsmith_f_op_f32(340f - _wgslsmith_div_f32(-697f, 2440f))))));
    let var_3 = _wgslsmith_add_i32(global2[_wgslsmith_index_u32(3589u, 20u)], -73034i);
    var var_4 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x))), 1f, 2720f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(var_2.x - 474f), _wgslsmith_f_op_f32(1392f - var_2.x), var_2.x)))), _wgslsmith_div_i32(1i, max(firstLeadingBit(global2[_wgslsmith_index_u32(func_2(vec2<bool>(var_1.x, global0[_wgslsmith_index_u32(0u, 21u)]), var_0).c, 20u)]), global2[_wgslsmith_index_u32(12201u, 20u)])), var_4.wz, ~(vec4<u32>(var_0.a, 4294967295u, u_input.a >> (4294967295u % 32u), u_input.a << (u_input.a % 32u)) ^ vec4<u32>(abs(var_0.c), 7208u, _wgslsmith_clamp_u32(var_0.b.x, 0u, u_input.a), func_2(var_1, Struct_1(var_0.c, vec4<u32>(34019u, 4294967295u, 1u, 0u), 3488u)).c)));
}

