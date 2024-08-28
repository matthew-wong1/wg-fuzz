struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1384f, -704f, -157f);

var<private> global1: array<f32, 27>;

var<private> global2: array<f32, 21>;

var<private> global3: array<u32, 6>;

var<private> global4: array<i32, 6> = array<i32, 6>(-1850i, 30637i, i32(-2147483648), -7709i, -1i, 2147483647i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: i32) -> u32 {
    return ~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(20245u, 6u)], 0u), 1u)), vec2<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], _wgslsmith_div_u32(global3[_wgslsmith_index_u32(38976u, 6u)] | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(69606u, 6u)], 6u)], 127572u ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)], 6u)])));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> u32 {
    var var_0 = vec4<u32>(global3[_wgslsmith_index_u32(25641u, 6u)], arg_1.b.x, 42551u, 0u);
    var var_1 = arg_1.c;
    var var_2 = -_wgslsmith_sub_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(arg_1.c.b, vec4<i32>(-2147483647i, 17220i, u_input.a.x, -33991i))), ~arg_1.c.b);
    var var_3 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.a.x + -584f), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2710f, global1[_wgslsmith_index_u32(4294967295u, 27u)]))), ~firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(46471i, 14411i, global4[_wgslsmith_index_u32(79428u, 6u)], arg_1.c.b.x), vec4<i32>(-2147483647i, 2147483647i, var_2.x, global4[_wgslsmith_index_u32(2624u, 6u)]), vec4<i32>(23196i, 12446i, 44251i, u_input.b.x)))), ~vec2<u32>(~(~var_0.x), ~89677u), arg_1.a);
    global4 = array<i32, 6>();
    return _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(firstTrailingBit(select(var_3.b, arg_1.b, false)), vec2<u32>(~100388u, arg_1.b.x))), 381u, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(2315u, 46778u, var_3.b.x, 4294967295u), countOneBits(vec4<u32>(18621u, arg_1.b.x, 47494u, arg_1.b.x))), 6u)], 6u)], func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 21u)] + global2[_wgslsmith_index_u32(14941u, 21u)]), var_3.c.a.x, true)), _wgslsmith_clamp_i32(1i | var_1.b.x, ~global4[_wgslsmith_index_u32(11169u, 6u)], -1i))));
}

fn func_1() -> Struct_2 {
    var var_0 = ~1u;
    var var_1 = global4[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(55233u, 6u)], 6u)], 8280u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50302u, 6u)], 6u)]), ~vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20264u, 6u)], 6u)], 1u, global3[_wgslsmith_index_u32(5831u, 6u)]))) | 1u, 6u)];
    var var_2 = vec2<bool>(true, ~abs(1u ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]) >= ~(~func_2(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)], 21u)], -2147483647i)));
    let var_3 = vec4<i32>(min(-37490i, -3361i), global4[_wgslsmith_index_u32(~(~firstLeadingBit(firstTrailingBit(20710u))), 6u)], -global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(~4294967295u, select(1u, 1u, true)), 6u)], _wgslsmith_add_i32(global4[_wgslsmith_index_u32(~1u, 6u)], u_input.b.x));
    global1 = array<f32, 27>();
    return Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 21u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 27u)], global1[_wgslsmith_index_u32(7176u, 27u)]), vec3<f32>(-296f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 6u)], 21u)], 792f), var_2.x)), vec3<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 27u)], -121f, 2168f), var_2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(719f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)], 21u)], 2042f) + vec3<f32>(1002f, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12177u, 6u)], 6u)], 21u)], -1000f))), -vec4<i32>(-2147483647i, var_3.x, var_3.x, -2147483647i)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~0u, ~global3[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_mod_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], 0u) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), vec2<u32>(global3[_wgslsmith_index_u32(1u, 6u)], 40387u))), vec2<u32>(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 6u)], 6u)], ~378u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 21u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, func_3(var_2.x, Struct_2(Struct_1(vec3<f32>(-870f, -918f, 341f), vec4<i32>(1i, 1i, -1i, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)], 6u)])), vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)]), Struct_1(vec3<f32>(363f, -458f, 937f), vec4<i32>(var_3.x, -13329i, -2147483647i, u_input.a.x))))), 27u)]), ~vec4<i32>(1i, -14893i, -12713i, abs(global4[_wgslsmith_index_u32(4294967295u, 6u)]))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_2) -> vec4<i32> {
    global0 = arg_0.a;
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_1().a.a.zz) - vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~global3[_wgslsmith_index_u32(var_0.b.x, 6u)], var_0.b.x ^ global3[_wgslsmith_index_u32(var_0.b.x, 6u)]), 21u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.b, arg_3.b) >> (~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.b.x, 6u)], 6u)] % 32u), 27u)])) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.a.yx)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-355f, -510f), vec2<f32>(197f, global2[_wgslsmith_index_u32(0u, 21u)]))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_2.zy + vec2<f32>(arg_3.a.a.x, 1575f)), _wgslsmith_f_op_vec2_f32(max(global0.yz, vec2<f32>(var_0.c.a.x, arg_3.a.a.x))), any(vec2<bool>(arg_1, false))))), true)));
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_f32(select(arg_3.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.a.x, -338f))))), arg_1));
    return vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(0i, firstTrailingBit(2147483647i), -u_input.b.x, u_input.a.x), var_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(56373u, 6u)], 21u)]))), _wgslsmith_f_op_f32(f32(-1f) * -514f), global0.x), vec4<i32>(-11158i, -38668i, -1411i, ~(~u_input.a.x))), ~_wgslsmith_sub_u32(~44308u, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(46285u, 6u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 6u)]), 6u)]) <= 84053u, vec3<f32>(-842f, _wgslsmith_f_op_f32(-global0.x), global2[_wgslsmith_index_u32(~(~firstLeadingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29481u, 6u)], 6u)])), 21u)]), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(12176u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)], global3[_wgslsmith_index_u32(44853u, 6u)]), vec3<u32>(1u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(51909u, 6u)], 6u)])), _wgslsmith_add_vec3_u32(max(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 6u)], 6u)], 4294967295u), vec3<u32>(global3[_wgslsmith_index_u32(29264u, 6u)], 0u, global3[_wgslsmith_index_u32(1u, 6u)])), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 6u)], 6u)], global3[_wgslsmith_index_u32(5900u, 6u)], 4294967295u))), 1859f, -vec4<i32>(global4[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)]), 6u)], abs(0i), global4[_wgslsmith_index_u32(countOneBits(1u), 6u)], ~(-30704i)) >> ((vec4<u32>(global3[_wgslsmith_index_u32(15721u, 6u)] >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)] % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(40181u, 4294967295u), vec2<u32>(global3[_wgslsmith_index_u32(1u, 6u)], 4294967295u)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~30089u, 6u)], 6u)], 4294967295u) << (countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 6u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27549u, 6u)], 6u)], 6u)], 6u)], 4294967295u, 0u), vec4<u32>(global3[_wgslsmith_index_u32(14089u, 6u)], 1u, global3[_wgslsmith_index_u32(22576u, 6u)], 8964u))) % vec4<u32>(32u))) % vec4<u32>(32u)), -25718i);
}

