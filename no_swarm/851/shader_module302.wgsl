struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: i32 = -53094i;

var<private> global2: vec4<i32>;

var<private> global3: array<vec2<f32>, 26>;

var<private> global4: array<u32, 21> = array<u32, 21>(1u, 14183u, 25906u, 17190u, 4270u, 0u, 54771u, 4294967295u, 109583u, 4294967295u, 29749u, 0u, 4294967295u, 0u, 76930u, 1262u, 36465u, 76942u, 33493u, 3255u, 1u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = 377f;
    var var_1 = ~32677i;
    var_1 = max(u_input.a.x, 63458i);
    return ~u_input.a.x;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(1538f - 613f);
    global1 = 0i;
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global2.x), vec2<i32>(3195i, global2.x)), select(func_3(), global2.x, arg_2.x), i32(-1i) * -arg_1) & ~vec3<i32>(-47910i, countOneBits(u_input.a.x), u_input.a.x), vec2<bool>(!((-31315i ^ arg_1) <= firstLeadingBit(1i)), true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1003f, 664f, -1000f) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-524f, -601f, 987f), vec3<f32>(1351f, -203f, -258f))))))));
    global0 = array<Struct_1, 3>();
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(arg_0, ~(~min(542u, 0u))), 0u, 4294967295u);
    return var_1.b;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_1, 21u)], 21u)], 26117u, arg_1) | vec3<u32>(1u, 4294967295u, global4[_wgslsmith_index_u32(41315u, 21u)])) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(~42981u, 12029u, arg_1), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, global4[_wgslsmith_index_u32(arg_1, 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(7900u, 21u)], 21u)]), ~vec3<u32>(global4[_wgslsmith_index_u32(7919u, 21u)], arg_1, arg_1), countOneBits(vec3<u32>(arg_1, global4[_wgslsmith_index_u32(0u, 21u)], 0u)))) % vec3<u32>(32u)), abs(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 46207u, global4[_wgslsmith_index_u32(arg_1, 21u)], arg_1), _wgslsmith_sub_vec4_u32(vec4<u32>(96655u, 39624u, 57343u, 1u), vec4<u32>(0u, arg_1, 5880u, arg_1))), ~_wgslsmith_add_u32(arg_1, global4[_wgslsmith_index_u32(64458u, 21u)]), ~abs(86060u))), vec3<u32>(arg_1, global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(~(~14166u), 21u)], 21u)], 0u));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(min(1i, -2147483647i), global2.x), ~reverseBits(-1i), ~(-global2.x), -u_input.a.x), vec4<i32>(min(_wgslsmith_sub_i32(46997i, -28989i), global2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, -2147483647i, global2.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -10759i, u_input.a.x), global2.zwx, vec3<i32>(global2.x, u_input.a.x, 2147483647i))), ~0i, max(u_input.a.x, -3251i) & abs(2147483647i))), u_input.a.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(871f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1534f, -1092f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(457f + _wgslsmith_f_op_f32(-712f + 1008f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1563f))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-579f)), 678f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_f_op_f32(-798f * -845f))))));
    let var_4 = _wgslsmith_mod_vec3_u32(var_0, vec3<u32>(25817u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 42448u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]), vec4<u32>(arg_1, arg_1, 0u, global4[_wgslsmith_index_u32(1u, 21u)])) & ~arg_1, ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(36308u, 4294967295u), 21u)], 21u)]) & _wgslsmith_add_vec3_u32(var_0, ~vec3<u32>(67238u, arg_1, 0u)));
    return !(!func_2(arg_1, -13849i, vec2<bool>(true, true)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.c.x);
    global3 = array<vec2<f32>, 26>();
    var var_1 = arg_1.b;
    let var_2 = var_0;
    global4 = array<u32, 21>();
    return Struct_1(arg_1.a, func_4(all(func_2(countOneBits(global4[_wgslsmith_index_u32(67025u, 21u)]), ~(-1i), select(vec2<bool>(false, var_1.x), vec2<bool>(true, arg_1.b.x), arg_1.b))), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 35749u, 27276u, 31988u), vec4<u32>(4294967295u, 13980u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(35669u, 21u)], 21u)], 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)])) << (155790u % 32u)), true | any(vec4<bool>(arg_1.b.x, arg_1.b.x, false, var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2189f))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0, -1064f), -122f), 313f));
}

fn func_5(arg_0: Struct_1) -> f32 {
    global3 = array<vec2<f32>, 26>();
    var var_0 = select(-(~u_input.a.x | -global2.x), ~(~arg_0.a.x), arg_0.b.x);
    var var_1 = Struct_1(-_wgslsmith_div_vec3_i32(~arg_0.a, u_input.a.zyz) ^ _wgslsmith_div_vec3_i32(vec3<i32>(0i ^ global2.x, u_input.a.x >> (0u % 32u), u_input.a.x), ~u_input.a.yxy), func_4(!((global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)] >> (global4[_wgslsmith_index_u32(4294967295u, 21u)] % 32u)) == _wgslsmith_add_u32(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)])), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(46105u, 21u)], 21u)], 21u)], 21u)], 21u)]), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 4294967295u) | vec2<u32>(77419u, 0u)), firstTrailingBit(~vec2<u32>(14522u, 13516u))), ~global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(19422u, 21u)], 21u)] > ~(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 21u)], 21u)] << (0u % 32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1224f * -1316f)), 1092f) * arg_0.c));
    return -2214f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f), -709f))), _wgslsmith_f_op_f32(max(371f, _wgslsmith_f_op_f32(func_5(func_1(-vec3<i32>(0i, 2147483647i, u_input.a.x), Struct_1(vec3<i32>(2147483647i, global2.x, global2.x), vec2<bool>(true, true), vec3<f32>(-1073f, 1318f, -735f))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(max(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(100731u, 21u)], 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(30889u, 21u)], 21u)]), vec3<u32>(global4[_wgslsmith_index_u32(65900u, 21u)], global4[_wgslsmith_index_u32(4294967295u, 21u)], global4[_wgslsmith_index_u32(1u, 21u)]), vec3<u32>(596u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(19414u, 21u)], 21u)], global4[_wgslsmith_index_u32(2039u, 21u)])), vec3<u32>(73997u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 21u)], 21u)], global4[_wgslsmith_index_u32(26001u, 21u)]) ^ vec3<u32>(global4[_wgslsmith_index_u32(22629u, 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(37890u, 21u)], 21u)], global4[_wgslsmith_index_u32(100578u, 21u)]))), reverseBits(~reverseBits(vec3<u32>(global4[_wgslsmith_index_u32(43027u, 21u)], global4[_wgslsmith_index_u32(0u, 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(22174u, 21u)], 21u)], 21u)], 21u)])))), 21u)], 26u)], _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(-2031f, var_0.x)) + _wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)], 26u)] - vec2<f32>(var_0.x, 828f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(global3[_wgslsmith_index_u32(68064u, 26u)], global3[_wgslsmith_index_u32(76644u, 26u)])))))))));
    var var_1 = countOneBits(-8740i);
    var var_2 = _wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(min(vec4<u32>(36516u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], global4[_wgslsmith_index_u32(44682u, 21u)], 53102u), vec4<u32>(29940u, 55622u, global4[_wgslsmith_index_u32(32514u, 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(17579u, 21u)], 21u)])), _wgslsmith_mult_vec4_u32(vec4<u32>(21794u, global4[_wgslsmith_index_u32(4294967295u, 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(23095u, 21u)], 21u)], 9163u), vec4<u32>(4294967295u, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(8094u, 21u)], 21u)], 21u)])), _wgslsmith_mult_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 94500u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(67013u, 21u)], 21u)], 66675u), vec4<u32>(global4[_wgslsmith_index_u32(7870u, 21u)], 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 34003u))) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(0u, 21u)], global4[_wgslsmith_index_u32(52059u, 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], global4[_wgslsmith_index_u32(36503u, 21u)]), vec4<u32>(global4[_wgslsmith_index_u32(1u, 21u)], global4[_wgslsmith_index_u32(80309u, 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 4294967295u) & vec4<u32>(1u, 22405u, 23642u, global4[_wgslsmith_index_u32(0u, 21u)])), (_wgslsmith_div_vec4_u32(~vec4<u32>(29001u, global4[_wgslsmith_index_u32(4294967295u, 21u)], 46263u, global4[_wgslsmith_index_u32(1u, 21u)]), ~vec4<u32>(86280u, 24965u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)], 58906u)) | (vec4<u32>(11111u, global4[_wgslsmith_index_u32(1213u, 21u)], global4[_wgslsmith_index_u32(50404u, 21u)], 1u) & ~vec4<u32>(73352u, global4[_wgslsmith_index_u32(4294967295u, 21u)], global4[_wgslsmith_index_u32(24597u, 21u)], global4[_wgslsmith_index_u32(4654u, 21u)]))) & ~(~firstLeadingBit(vec4<u32>(global4[_wgslsmith_index_u32(20793u, 21u)], 29707u, global4[_wgslsmith_index_u32(9532u, 21u)], 4294967295u))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1429f, -268f))), -635f))), _wgslsmith_f_op_f32(func_5(func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, global2.x, global2.x) >> (vec3<u32>(global4[_wgslsmith_index_u32(94506u, 21u)], global4[_wgslsmith_index_u32(var_2.x, 21u)], 46750u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(global2.xzy, vec3<i32>(u_input.a.x, 1i, global2.x))), func_1(global2.wwx, global0[_wgslsmith_index_u32(1u, 3u)])))));
    let var_4 = global0[_wgslsmith_index_u32(max(var_2.x, _wgslsmith_dot_vec2_u32(min(min(~var_2.xy, var_2.xz), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, global4[_wgslsmith_index_u32(var_2.x, 21u)]), vec2<u32>(4294967295u, 0u))), vec2<u32>(~(~var_2.x), var_2.x))), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, 218f, var_4.c.x, var_0.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(453f, -269f, var_4.c.x, 693f))), true)))), _wgslsmith_f_op_f32(678f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_sub_vec3_u32(vec3<u32>(33438u, ~global4[_wgslsmith_index_u32(1u, 21u)], var_2.x), vec3<u32>(~78035u >> (abs(global4[_wgslsmith_index_u32(1u, 21u)]) % 32u), 0u, 0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.c.x, var_0.x, var_4.c.x, 1836f) * vec4<f32>(-868f, -245f, var_0.x, -721f)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_4.c.x, var_4.c.x, var_0.x, 438f), vec4<f32>(var_4.c.x, var_4.c.x, 857f, 1000f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_div_f32(-260f, _wgslsmith_f_op_f32(func_5(global0[_wgslsmith_index_u32(0u, 3u)]))))) + var_3.x));
}

