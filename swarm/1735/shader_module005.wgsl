struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 23>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-1000f, 747f), vec2<bool>(true, true), 1u);

var<private> global2: array<i32, 12> = array<i32, 12>(6288i, 1i, -7860i, -5918i, 5687i, 17551i, 31695i, 40041i, -1i, -84535i, -20816i, 1i);

var<private> global3: Struct_4 = Struct_4(953f, vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 0i), Struct_2(Struct_1(vec2<f32>(813f, 474f), vec2<bool>(false, true), 13944u), Struct_1(vec2<f32>(-334f, -1288f), vec2<bool>(false, true), 4294967295u), Struct_1(vec2<f32>(927f, -382f), vec2<bool>(false, false), 31500u), true, vec3<bool>(false, false, false)), false);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_4) -> i32 {
    var var_0 = global3.c.c.a.x;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f), arg_0.x)));
    var var_2 = ~(vec4<u32>(u_input.c, 4294967295u, 1u, max(~33271u, arg_1.c.a.c)) & ~(~u_input.b));
    var var_3 = global2[_wgslsmith_index_u32(1u, 12u)] & -1i;
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(149f, global3.c.b.a.x) * -162f)), 356f, 1986f, _wgslsmith_f_op_f32(-1811f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x)))));
    return ~((i32(-1i) * -global3.b.x) ^ -2147483647i);
}

fn func_3(arg_0: Struct_4) -> f32 {
    global2 = array<i32, 12>();
    let var_0 = true;
    var var_1 = Struct_5(arg_0.c, abs(vec2<u32>(global3.c.a.c, _wgslsmith_mult_u32(min(global3.c.c.c, 9721u), 39184u ^ global1.c))), Struct_1(vec2<f32>(global3.c.b.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1327f), 2855f))), !arg_0.c.a.b, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 23u)]), u_input.b.x, min(u_input.c, max(22270u, global1.c)))));
    let var_2 = arg_0.b.x;
    var var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~33734u), vec2<u32>(1u, 1u) & _wgslsmith_add_vec2_u32(vec2<u32>(17673u, var_1.b.x), vec2<u32>(0u, arg_0.c.c.c))), global3.c.a.c), ~firstLeadingBit(select(vec2<u32>(u_input.b.x, arg_0.c.c.c), select(var_1.b, var_1.b, global3.c.c.b), global1.b)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1318f * -205f) * var_1.a.a.a.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = vec3<i32>(abs(1i), 1i, global2[_wgslsmith_index_u32(4294967295u, 12u)]);
    global3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(global3.c.c.a.x, ~global3.b, Struct_2(global3.c.b, Struct_1(global1.a, arg_1, global3.c.c.c), Struct_1(global1.a, vec2<bool>(global3.d, false), 1u), false, vec3<bool>(global3.d, global3.d, true)), false)))), ~(-select(vec4<i32>(-28108i, global2[_wgslsmith_index_u32(arg_0.x, 12u)], global2[_wgslsmith_index_u32(41565u, 12u)], 14370i), vec4<i32>(-28736i, global2[_wgslsmith_index_u32(u_input.a, 12u)], -1i, global3.b.x), select(vec4<bool>(true, true, true, false), vec4<bool>(global3.c.a.b.x, global3.d, arg_1.x, arg_1.x), vec4<bool>(global3.d, false, arg_1.x, false)))), Struct_2(global3.c.a, Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.a.x, global1.a.x))), vec2<bool>(true, true), global3.c.c.c), global3.c.c, true, global3.c.e), countOneBits(arg_0.x) > _wgslsmith_mult_u32(14349u, select(40351u, ~26653u, any(vec4<bool>(arg_1.x, false, global1.b.x, arg_1.x)))));
    var_0 = ~(global3.b.xww << (vec3<u32>(509u, 11022u, max(~arg_0.x, 1u)) % vec3<u32>(32u)));
    let var_1 = arg_0.x;
    var var_2 = global3.a;
    return Struct_1(global1.a, global1.b, 62054u);
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.c.a.x * _wgslsmith_f_op_f32(sign(-304f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.b.a.x - _wgslsmith_div_f32(136f, global1.a.x)) - _wgslsmith_div_f32(665f, _wgslsmith_f_op_f32(min(global1.a.x, -1852f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-225f)), global3.c.b.a.x), global1.a.x));
    global1 = func_2(select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 0u, 4294967295u), u_input.b.xww << (u_input.b.xxz % vec3<u32>(32u)), ~u_input.b.wzw) ^ u_input.b.xxw, reverseBits(vec3<u32>(1u, 4294967295u, global1.c) | ~vec3<u32>(arg_0.c.c.c, global1.c, 0u)), arg_0.c.e), !select(!global3.c.a.b, vec2<bool>(36644u < global3.c.c.c, false), !(!vec2<bool>(arg_0.d, global3.d))));
    let var_2 = u_input.b.zw;
    var var_3 = func_2(max(global0[_wgslsmith_index_u32(~8118u, 23u)], _wgslsmith_sub_vec3_u32(~global0[_wgslsmith_index_u32(4294967295u, 23u)], vec3<u32>(4294967295u, global3.c.a.c, 64633u))) ^ u_input.b.xyw, !vec2<bool>(true, !(!arg_0.d))).b;
    return Struct_1(func_2(u_input.b.yyz, !(!arg_0.c.e.xx)).a, select(select(!vec2<bool>(global3.d, true), vec2<bool>(!arg_0.c.b.b.x, global3.c.c.b.x), select(global3.c.b.b, vec2<bool>(true, var_3.x), vec2<bool>(global3.c.a.b.x, true))), vec2<bool>(false, _wgslsmith_f_op_f32(-global1.a.x) <= global3.a), global1.b.x), reverseBits(0u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec2<f32>(-2306f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1188f)), _wgslsmith_f_op_f32(f32(-1f) * -372f))), vec2<bool>(true, all(vec4<bool>(!global1.b.x, false, any(vec4<bool>(global3.d, global3.c.c.b.x, false, global1.b.x)), global1.b.x | false))), 0u);
    let var_0 = any(!global3.c.e) & true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.c.a.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1046f)))));
    global0 = array<vec3<u32>, 23>();
    var var_2 = countOneBits(global3.b.wyx);
    var var_3 = func_4(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -2075f), abs(vec4<i32>(_wgslsmith_mod_i32(global3.b.x, 9926i), -14650i, func_1(vec2<f32>(-1000f, global1.a.x), Struct_4(515f, global3.b, Struct_2(Struct_1(vec2<f32>(global3.a, 445f), vec2<bool>(var_0, false), 1u), global3.c.a, global3.c.b, false, vec3<bool>(global1.b.x, true, false)), false)), global2[_wgslsmith_index_u32(global3.c.c.c, 12u)] << (24220u % 32u))), Struct_2(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-1922f, 308f), global1.a), global3.c.c.b, 68979u), func_2(global0[_wgslsmith_index_u32(0u & global3.c.a.c, 23u)], !global3.c.b.b), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 1498f)), func_2(vec3<u32>(1u, global1.c, 12372u), vec2<bool>(true, true)).b, 54984u), var_0, vec3<bool>(func_2(vec3<u32>(1u, u_input.c, global3.c.a.c), vec2<bool>(false, global3.d)).b.x, !global1.b.x, all(vec3<bool>(false, false, global1.b.x)))), any(!vec4<bool>(global1.b.x, global3.c.e.x, global3.c.e.x, global1.b.x)) | (~global1.c > global3.c.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - global3.a))) * global3.c.a.a.x));
    var var_4 = -vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global3.b.wyx, vec3<i32>(11786i, var_2.x, -2850i)), -30183i), global3.b.x, min(func_1(global1.a, Struct_4(global3.a, global3.b, global3.c, var_0)), _wgslsmith_mod_i32(8644i, 21582i)) | _wgslsmith_div_i32(12634i, abs(global2[_wgslsmith_index_u32(77922u, 12u)])));
    var var_5 = 884f;
    var var_6 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -428f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(761f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-449f, 413f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1298f, var_3.a.x), global3.c.c.a, true))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.a, var_3.a.x), var_3.a))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(183f, global1.a.x)))), 662f, _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(~76631u, 12u)], reverseBits(min(global2[_wgslsmith_index_u32(select(global3.c.b.c, global3.c.a.c, true), 12u)], ~1i)), _wgslsmith_mult_i32(var_4.x, global2[_wgslsmith_index_u32(global1.c, 12u)] | -25315i) >> (~_wgslsmith_mod_u32(var_3.c, 0u) % 32u)));
}

