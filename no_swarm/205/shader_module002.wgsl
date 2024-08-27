struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: array<bool, 3> = array<bool, 3>(true, true, true);

var<private> global2: array<u32, 27> = array<u32, 27>(0u, 16158u, 16260u, 0u, 1u, 97424u, 9646u, 4294967295u, 5564u, 1u, 22611u, 5409u, 30144u, 0u, 4294967295u, 10172u, 4294967295u, 47511u, 0u, 21910u, 25638u, 1u, 86256u, 67816u, 0u, 0u, 0u);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: vec2<bool>) -> f32 {
    var var_0 = vec3<bool>(all(arg_3), true, any(select(arg_3, !arg_3, true)));
    let var_1 = Struct_3(vec4<bool>(all(vec3<bool>(arg_0, arg_0, global2[_wgslsmith_index_u32(1u, 27u)] < arg_2)), !any(select(vec3<bool>(false, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52641u, 27u)], 27u)], 3u)], var_0.x), vec3<bool>(arg_0, false, false), vec3<bool>(arg_3.x, arg_3.x, arg_3.x))), true, true), var_0.zy, global0[_wgslsmith_index_u32(12650u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 345f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(597f, arg_1))), arg_3)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2643f, 247f))))) - vec2<f32>(_wgslsmith_f_op_f32(980f + arg_1), _wgslsmith_f_op_f32(arg_1 * arg_1)))));
    var var_2 = select(~(var_1.d.d.x >> (~4294967295u % 32u)) > ~(~u_input.a.x), ~_wgslsmith_mult_u32(~33515u, abs(global2[_wgslsmith_index_u32(var_1.c.d.x, 27u)])) > 1u, true);
    var_2 = (!any(var_1.a) == (true != var_0.x)) && arg_3.x;
    var var_3 = var_1.d.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1699f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(919f * _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -289f), global1[_wgslsmith_index_u32(u_input.a.x, 3u)]))))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: f32, arg_3: bool) -> u32 {
    let var_0 = ~4294967295u;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_2), 952f, -1636f), vec3<f32>(_wgslsmith_f_op_f32(max(arg_2, -1056f)), _wgslsmith_f_op_f32(sign(arg_2)), arg_2), arg_3))) - vec3<f32>(_wgslsmith_div_f32(782f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * arg_2)), _wgslsmith_f_op_f32(423f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-999f, arg_2) - -1000f) * -424f)));
    var var_2 = _wgslsmith_sub_i32(-_wgslsmith_add_i32(-1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -70171i), vec2<i32>(-2147483647i, -4732i))), reverseBits(1i >> (_wgslsmith_dot_vec3_u32(select(u_input.a, u_input.a, vec3<bool>(true, arg_1.x, false)), vec3<u32>(var_0, 0u, var_0)) % 32u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
    global2 = array<u32, 27>();
    return global2[_wgslsmith_index_u32(~min(~firstLeadingBit(var_0), u_input.a.x), 27u)];
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> vec2<bool> {
    var var_0 = vec3<u32>(~u_input.a.x, func_4(_wgslsmith_f_op_f32(func_3(true, _wgslsmith_f_op_f32(abs(807f)), 1u >> (global2[_wgslsmith_index_u32(1673u, 27u)] % 32u), arg_0)) >= -290f, !(!select(vec4<bool>(true, arg_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], arg_1), vec4<bool>(arg_1, false, false, false), arg_1)), -178f, all(vec2<bool>(false, all(vec2<bool>(true, true))))), global2[_wgslsmith_index_u32(abs(~_wgslsmith_sub_u32(min(45499u, global2[_wgslsmith_index_u32(0u, 27u)]), _wgslsmith_mod_u32(0u, 29623u))), 27u)]);
    global1 = array<bool, 3>();
    let var_1 = true;
    global1 = array<bool, 3>();
    let var_2 = ~vec2<i32>(abs(-25677i), 0i);
    return !select(select(vec2<bool>(arg_1 | global1[_wgslsmith_index_u32(50261u, 3u)], true), arg_0, !(!arg_0.x)), vec2<bool>(~(-1271i) <= var_2.x, false), select(arg_0, select(vec2<bool>(var_1, false), vec2<bool>(true, false), !arg_1), select(!arg_0, select(vec2<bool>(true, true), arg_0, arg_0), all(arg_0))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_4) -> u32 {
    let var_0 = min(~select(u_input.a.zz, vec2<u32>(u_input.a.x, 6615u) ^ arg_1.zz, global1[_wgslsmith_index_u32(~0u, 3u)]) | vec2<u32>(_wgslsmith_div_u32(~arg_1.x, 0u), ~arg_1.x ^ global2[_wgslsmith_index_u32(firstTrailingBit(0u), 27u)]), ~select(countOneBits(vec2<u32>(arg_1.x, arg_1.x)), arg_2.e.b, !func_2(vec2<bool>(false, false), global1[_wgslsmith_index_u32(arg_1.x, 3u)])));
    let var_1 = firstLeadingBit(vec3<i32>(abs(-arg_2.e.c.x), (0i & select(-6876i, arg_2.d.a, global1[_wgslsmith_index_u32(47014u, 3u)])) << (4294967295u % 32u), _wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_2.c.c.x, -2147483647i), abs(arg_2.b.x)) ^ (i32(-1i) * -2147483647i)));
    global1 = array<bool, 3>();
    var var_2 = !global1[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(arg_2.e.a, 27u)]), 3u)];
    let var_3 = Struct_4(global2[_wgslsmith_index_u32(~max(_wgslsmith_sub_u32(arg_2.d.b.b.x, reverseBits(arg_2.c.b.x)), ~select(4294967295u, arg_2.c.b.x, true)), 27u)], vec3<i32>(arg_2.d.a, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_2.e.c, arg_2.e.c & vec4<i32>(44042i, -24152i, -14842i, 16610i), firstLeadingBit(vec4<i32>(-2147483647i, arg_2.c.c.x, -2147483647i, 0i))), ~arg_2.c.c >> (min(vec4<u32>(global2[_wgslsmith_index_u32(var_0.x, 27u)], 4294967295u, u_input.a.x, u_input.a.x), arg_1) % vec4<u32>(32u))), arg_2.b.x), arg_2.e, Struct_2(-2147483647i, arg_2.c, arg_2.d.b, select(arg_2.d.d, select(max(arg_1, vec4<u32>(arg_2.e.b.x, arg_1.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], arg_2.e.a)), firstLeadingBit(vec4<u32>(10411u, 4294967295u, arg_2.a, 4294967295u)), arg_0.x >= arg_0.x), true)), arg_2.d.b);
    return _wgslsmith_mod_u32(arg_2.a, arg_2.d.b.b.x);
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(0u, 3u)];
    var var_1 = Struct_1(0u, _wgslsmith_sub_vec2_u32(vec2<u32>(abs(~arg_1), 35102u), min(_wgslsmith_div_vec2_u32(arg_2.yx, vec2<u32>(u_input.a.x, 66457u)), u_input.a.yy)), arg_0);
    global0 = array<Struct_2, 6>();
    let var_2 = arg_0.x;
    global1 = array<bool, 3>();
    return Struct_3(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 3u)], 4294967295u < func_1(_wgslsmith_div_vec2_f32(vec2<f32>(604f, 1126f), vec2<f32>(-272f, -1000f)), ~vec4<u32>(arg_2.x, arg_1, arg_2.x, 91665u), Struct_4(global2[_wgslsmith_index_u32(0u, 27u)], var_1.c.zxy, Struct_1(var_1.b.x, vec2<u32>(4294967295u, arg_1), vec4<i32>(var_2, 1i, -1i, var_1.c.x)), Struct_2(var_1.c.x, Struct_1(arg_2.x, u_input.a.zy, var_1.c), Struct_1(1137u, u_input.a.yx, vec4<i32>(76905i, arg_0.x, var_1.c.x, -1i)), arg_2), Struct_1(1113u, vec2<u32>(global2[_wgslsmith_index_u32(64293u, 27u)], arg_1), arg_0))), !any(vec4<bool>(false, global1[_wgslsmith_index_u32(var_1.b.x, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(var_1.a, 3u)]))), vec2<bool>(true & (func_2(vec2<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 27u)], 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]), false).x || global1[_wgslsmith_index_u32(countOneBits(1u), 3u)]), true), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~func_4(global1[_wgslsmith_index_u32(var_1.b.x, 3u)], vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(12686u, 3u)]), 1183f, global1[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 15940u), _wgslsmith_clamp_vec2_u32(u_input.a.xx, vec2<u32>(var_1.a, arg_1), vec2<u32>(global2[_wgslsmith_index_u32(0u, 27u)], 71811u)))), 6u)], Struct_2(_wgslsmith_add_i32(var_1.c.x, -1i >> (arg_1 % 32u)), Struct_1(select(arg_2.x, 0u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 27u)], 3u)]) & 21936u, ~var_1.b, select(~var_1.c, ~var_1.c, true)), Struct_1(4294967295u, abs(~u_input.a.xz), arg_0), vec4<u32>(37039u, _wgslsmith_dot_vec2_u32(u_input.a.zz & var_1.b, var_1.b), _wgslsmith_clamp_u32(~34011u, 1u, _wgslsmith_add_u32(u_input.a.x, global2[_wgslsmith_index_u32(8299u, 27u)])), ~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(arg_1, 27u)], u_input.a.x))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(724f, 1432f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-798f, 1331f)) + -620f), _wgslsmith_f_op_f32(948f * _wgslsmith_f_op_f32(f32(-1f) * -792f))))));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: bool, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec3_i32(arg_1.c.b.c.zzw, vec3<i32>(arg_1.c.c.c.x, select(_wgslsmith_add_i32(arg_1.c.c.c.x, arg_1.d.b.c.x), -1i, arg_1.a.x & arg_1.a.x), -(~(-24821i)))) | arg_1.c.c.c.zxw;
    var var_1 = Struct_5(var_0.x);
    global2 = array<u32, 27>();
    var var_2 = arg_1.a.wyw;
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_3);
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(-1494f, _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-692f)), -561f))));
    var var_1 = func_6(vec3<u32>(~_wgslsmith_mod_u32(1u, 1u), u_input.a.x, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(~1u, 27u)], global2[_wgslsmith_index_u32(~u_input.a.x, 27u)] & _wgslsmith_add_u32(16184u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)], 27u)]))), func_5(~vec4<i32>(~(-2147483647i), 1i, -2147483647i, -1i), u_input.a.x, vec4<u32>(~(~60873u), u_input.a.x, func_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1109f, var_0))), vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], u_input.a.x, 0u), Struct_4(25982u, vec3<i32>(52623i, -10157i, 2959i), Struct_1(0u, u_input.a.xx, vec4<i32>(-230i, 0i, 1i, 36234i)), global0[_wgslsmith_index_u32(0u, 6u)], Struct_1(global2[_wgslsmith_index_u32(1u, 27u)], vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)]), vec4<i32>(-30147i, 16965i, -39242i, 1i)))), 1u)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~1u), 3u)], _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(150f - var_0))))));
    let var_2 = Struct_4(global2[_wgslsmith_index_u32(~7047u, 27u)], _wgslsmith_mod_vec3_i32(vec3<i32>(~15998i, 61029i, -21813i), (-vec3<i32>(var_1.b.c.x, var_1.a, -2147483647i) | var_1.c.c.yxx) | vec3<i32>(2147483647i, 1i, -37091i)), var_1.b, func_6(~vec3<u32>(0u, 4294967295u, abs(2863u)), Struct_3(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(var_1.d.x, 3u)], true), false), !vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)]), global0[_wgslsmith_index_u32(4294967295u, 6u)], Struct_2(1i, var_1.c, Struct_1(0u, vec2<u32>(57775u, global2[_wgslsmith_index_u32(111024u, 27u)]), var_1.b.c), ~var_1.d), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1135f, 127f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0) + vec2<f32>(var_0, var_0))))), !all(!vec3<bool>(global1[_wgslsmith_index_u32(86947u, 3u)], global1[_wgslsmith_index_u32(3548u, 3u)], false)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, -1109f, global1[_wgslsmith_index_u32(4294967295u, 3u)]))), var_0)), Struct_1(~_wgslsmith_add_u32(4294967295u, u_input.a.x >> (1u % 32u)), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], var_1.b.a)), var_1.b.b), ~vec4<i32>(var_1.a, -37823i, ~(-13966i), var_1.b.c.x)));
    let var_3 = select(func_4(true, func_5(min(-var_2.e.c, -var_2.c.c), ~(~u_input.a.x), ~var_2.d.d).a, 799f, false), var_2.d.c.a, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(600f - -986f)), -648f, global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(61006u, 27u)], 3u)])), _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(var_1.c.b.x ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)], 27u)] > _wgslsmith_clamp_u32(1u, 5894u, var_2.d.c.b.x), var_0, max(~var_2.e.b.x, 4294967295u), select(vec2<bool>(global1[_wgslsmith_index_u32(49435u, 3u)], global1[_wgslsmith_index_u32(57676u, 3u)]), vec2<bool>(global1[_wgslsmith_index_u32(var_2.d.b.a, 3u)], true), func_5(var_2.d.c.c, 0u, var_2.d.d).b))), var_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(693f, var_0, var_0, var_0))))) - vec4<f32>(_wgslsmith_div_f32(func_5(var_2.d.c.c, 127435u, var_1.d).e.x, -1415f), 1751f, _wgslsmith_f_op_f32(floor(497f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1045f - var_0)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), var_0)))), var_1.d.xy, u_input.a.yx);
}

