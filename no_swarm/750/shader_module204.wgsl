struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, false, true, false, true, true, false, false, false, true, false, false, true, false, false, true, true, false, false, true, true, false, false, false, true, false, false, false);

var<private> global1: array<u32, 16>;

var<private> global2: Struct_3;

var<private> global3: bool = false;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: bool) -> u32 {
    global1 = array<u32, 16>();
    let var_0 = -514f;
    global2 = Struct_3(global2.a, -27930i);
    var var_1 = arg_3;
    global1 = array<u32, 16>();
    return abs(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, 0u, firstLeadingBit(4294967295u)) << (~reverseBits(global1[_wgslsmith_index_u32(u_input.b, 16u)]) % 32u), 16u)]);
}

fn func_2() -> bool {
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(global1[_wgslsmith_index_u32(func_3(-954f, _wgslsmith_f_op_vec4_f32(vec4<f32>(555f, global2.a, global2.a, -2238f) * vec4<f32>(666f, -180f, 1912f, global2.a)), u_input.a, !(false || global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 16u)], 28u)])), 16u)], _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)], 16u)], 58024u, 4294967295u, 1u), vec4<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(54462u, 16u)], 1u)), ~abs(vec4<u32>(1056u, u_input.a.x, 0u, u_input.c.x))), !(!global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 16u)], 28u)])), 1u), 28u)];
    global2 = Struct_3(-1587f, select(global2.b, -(0i >> (_wgslsmith_mod_u32(29886u, 1u) % 32u)), any(vec3<bool>(!global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 28u)], true, global2.b < global2.b))));
    global2 = Struct_3(global2.a, -global2.b);
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(global2.b, 1i) ^ vec2<i32>(global2.b, global2.b), countOneBits(firstTrailingBit(vec2<i32>(40637i, -3965i)))), ~(-select(14216i, 0i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18076u, 16u)], 16u)], 28u)])), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(54121i, global2.b, global2.b), vec3<i32>(global2.b, global2.b, global2.b))) >> (1u % 32u)), _wgslsmith_div_vec3_i32(-vec3<i32>(global2.b, 7880i, 2147483647i) ^ ~(~vec3<i32>(-39420i, -39980i, global2.b)), reverseBits(vec3<i32>(_wgslsmith_mod_i32(global2.b, -1i), 13756i, 2147483647i ^ global2.b))));
    return any(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), global2.b >= var_0.x), !vec3<bool>(true | global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 16u)], 28u)], !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 16u)], 16u)], 28u)]), select(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)])), !select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 28u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 28u)], true, true), global0[_wgslsmith_index_u32(83729u, 28u)]), !(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c.x, 28u)])))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: u32) -> Struct_3 {
    global0 = array<bool, 28>();
    global3 = func_2();
    global0 = array<bool, 28>();
    global1 = array<u32, 16>();
    let var_0 = select(max(_wgslsmith_div_vec4_i32(max(vec4<i32>(global2.b, 1i, 18478i, 41790i), vec4<i32>(34970i, 2147483647i, 28406i, -16273i)), select(vec4<i32>(-2147483647i, -50497i, global2.b, global2.b), vec4<i32>(-39483i, 2147483647i, global2.b, -36382i), true)), -(vec4<i32>(global2.b, 1i, 6862i, global2.b) >> (vec4<u32>(u_input.c.x, u_input.a.x, 41917u, global1[_wgslsmith_index_u32(u_input.c.x, 16u)]) % vec4<u32>(32u)))), reverseBits(vec4<i32>(global2.b >> (1u % 32u), global2.b, abs(global2.b), i32(-1i) * -17734i)), select(vec4<bool>(false, any(vec2<bool>(false, true)), any(vec3<bool>(arg_0, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 28u)], false)), !global0[_wgslsmith_index_u32(4294967295u, 28u)]), !select(vec4<bool>(true, false, arg_1, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 28u)], arg_0, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2, 16u)], 28u)], global0[_wgslsmith_index_u32(0u, 28u)]), false), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2, 28u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(12557u, 28u)], arg_0, true), vec4<bool>(true, true, false, false)), vec4<bool>(arg_0, arg_0, arg_0, arg_1), select(vec4<bool>(arg_1, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43599u, 16u)], 28u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 28u)], arg_0), vec4<bool>(true, false, false, false), arg_0)))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(14830u, arg_2, ~global1[_wgslsmith_index_u32(u_input.b, 16u)], 4294967295u) >> (~vec4<u32>(arg_2, 4294967295u, u_input.a.x, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, global1[_wgslsmith_index_u32(45379u, 16u)], global1[_wgslsmith_index_u32(66825u, 16u)], 0u) >> (vec4<u32>(30972u, global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(arg_2, 16u)], 31266u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(27244u, u_input.a.x, 16023u, u_input.c.x), vec4<u32>(arg_2, 94880u, global1[_wgslsmith_index_u32(4294967295u, 16u)], arg_2), vec4<u32>(18390u, arg_2, global1[_wgslsmith_index_u32(82930u, 16u)], arg_2))), ~(~vec4<u32>(4294967295u, 54614u, 4294967295u, u_input.c.x)))) % vec4<u32>(32u));
    return Struct_3(-1574f, ~(max(-var_0.x, max(35154i, 0i)) << (_wgslsmith_mod_u32(max(25231u, 0u), global1[_wgslsmith_index_u32(u_input.a.x, 16u)] ^ u_input.a.x) % 32u)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global2.a))));
    let var_1 = func_1(select(!(!global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 38256u), 28u)]), all(!select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60051u, 16u)], 28u)], true, global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 28u)], false, arg_1, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 16u)], 28u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 28u)], arg_1))), (!global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11666u, 16u)], 28u)] || global0[_wgslsmith_index_u32(~5360u, 28u)]) || !(!arg_1)), arg_1, ~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b & 38667u, 0u), 16u)]);
    let var_2 = !select(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 28u)], arg_1, global0[_wgslsmith_index_u32(0u, 28u)]), vec3<bool>(true, arg_1, false), vec3<bool>(true, true, false))), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(24799u, ~u_input.b), 28u)], true, _wgslsmith_f_op_f32(1000f - global2.a) < _wgslsmith_div_f32(arg_0.a, 1179f)), !vec3<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(67633u, 16u)], 28u)], arg_1, false, false)), true, false || global0[_wgslsmith_index_u32(4294967295u, 28u)]));
    let var_3 = !all(var_2);
    let var_4 = all(vec4<bool>(false, false, arg_1, !(!(var_2.x & var_3))));
    return _wgslsmith_dot_vec3_u32(max(~u_input.a, vec3<u32>(~u_input.b, _wgslsmith_mod_u32(841u, global1[_wgslsmith_index_u32(1u, 16u)]), u_input.c.x) | ~(~u_input.a)), vec3<u32>(1u, _wgslsmith_clamp_u32(u_input.a.x, 1u, 1u), 1u));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, 191f))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1366f, _wgslsmith_f_op_f32(global2.a * -680f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, global2.a))))))));
    global0 = array<bool, 28>();
    global1 = array<u32, 16>();
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 16u)];
    var var_2 = arg_0.x;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(!vec4<bool>(global2.a > -249f, true, global0[_wgslsmith_index_u32(func_4(func_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 28u)], false, 18798u), true & global0[_wgslsmith_index_u32(0u, 28u)], 0i), 28u)], true), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global2.a, 406f), -518f) + global2.a), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-1751i, global2.b)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, -13517i), vec2<i32>(82213i, 2147483647i))))), u_input.a.yz);
    let var_0 = Struct_4(0u, -_wgslsmith_clamp_i32(global2.b, ~0i, _wgslsmith_sub_i32(global2.b ^ 2147483647i, _wgslsmith_mult_i32(global2.b, 1i))), Struct_1(global0[_wgslsmith_index_u32(~u_input.c.x, 28u)], vec2<bool>(~13370i == ~global2.b, !(!global0[_wgslsmith_index_u32(u_input.b, 28u)])), _wgslsmith_mod_u32(select(~global1[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_add_u32(u_input.a.x, u_input.a.x), true), 4294967295u)), Struct_2(Struct_1(true, vec2<bool>(!global0[_wgslsmith_index_u32(28348u, 28u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 28u)]), func_3(_wgslsmith_f_op_f32(min(111f, 874f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-835f, global2.a, -1107f, 637f) + vec4<f32>(1350f, -1114f, 501f, global2.a)), u_input.a ^ u_input.a, select(global0[_wgslsmith_index_u32(u_input.b, 28u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 28u)]))), Struct_1(any(vec4<bool>(true, global0[_wgslsmith_index_u32(16241u, 28u)], true, global0[_wgslsmith_index_u32(313u, 28u)])), select(!vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11912u, 16u)], 28u)], global0[_wgslsmith_index_u32(36153u, 28u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(119383u, 28u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 28u)]), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 28u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4975u, global1[_wgslsmith_index_u32(47020u, 16u)]), 28u)]), u_input.a.x), Struct_1(false, vec2<bool>(any(vec3<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 28u)], true)), global0[_wgslsmith_index_u32(min(48983u, 42322u), 28u)]), 0u), 60048u), Struct_2(Struct_1(any(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 28u)], false, global0[_wgslsmith_index_u32(37956u, 28u)], global0[_wgslsmith_index_u32(38845u, 28u)])), vec2<bool>(global0[_wgslsmith_index_u32(1u, 28u)] && global0[_wgslsmith_index_u32(u_input.b, 28u)], func_2()), u_input.c.x), Struct_1(true, vec2<bool>(global0[_wgslsmith_index_u32(~42155u, 28u)], all(vec4<bool>(false, global0[_wgslsmith_index_u32(21002u, 28u)], false, true))), ~0u), Struct_1(true, select(select(vec2<bool>(global0[_wgslsmith_index_u32(37286u, 28u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 28u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(20358u, 28u)]), true), vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5277u, 16u)], 28u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45579u, 16u)], 28u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 28u)]), vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 28u)]))), func_4(func_1(global0[_wgslsmith_index_u32(66712u, 28u)], global0[_wgslsmith_index_u32(42739u, 28u)], 1u), true, 1i)), ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(firstTrailingBit(global2.b), var_0.b, -2147483647i, _wgslsmith_add_i32(var_0.b, 47618i)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(var_0.b, 0i, 2147483647i, 0i), vec4<i32>(global2.b, 0i, 14181i, global2.b), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], false, var_0.e.a.b.x, var_0.c.b.x)), vec4<i32>(var_0.b, global2.b, global2.b, var_0.b))) | vec4<i32>(global2.b, -55271i, 2147483647i, var_0.b), func_4(func_1(true, var_0.d.c.a, _wgslsmith_add_u32(0u, 28596u)), true, var_0.b) >> (~func_3(_wgslsmith_f_op_f32(max(1470f, -727f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, -477f, 257f, global2.a)), ~vec3<u32>(60016u, global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c.c, 16u)], 16u)]), any(var_0.c.b)) % 32u), _wgslsmith_f_op_f32(ceil(global2.a)), firstLeadingBit(-reverseBits(1i)), ~(~(~global1[_wgslsmith_index_u32(u_input.b, 16u)])) | abs(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 38077u), vec3<u32>(56374u, 4294967295u, 82281u)))));
}

