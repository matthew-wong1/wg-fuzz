struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(0u, 48487u, 4294967295u), vec4<f32>(295f, -1391f, -1000f, -1556f), vec2<f32>(171f, -244f), vec2<u32>(8664u, 20166u), vec2<bool>(false, true));

var<private> global2: array<f32, 23> = array<f32, 23>(1107f, -1167f, -793f, 458f, -1485f, 1014f, 860f, -510f, -930f, 427f, 359f, 703f, -184f, 317f, 1000f, -944f, -435f, -345f, -931f, -397f, 205f, 1551f, 354f);

var<private> global3: Struct_1;

var<private> global4: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(5496i, -1i), vec2<i32>(-31807i, 948i), vec2<i32>(-37746i, 0i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(1109i, 0i), vec2<i32>(-26494i, 0i), vec2<i32>(2516i, 7760i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), 20746i), vec2<i32>(657i, 74496i), vec2<i32>(1i, 34692i), vec2<i32>(2147483647i, 0i), vec2<i32>(0i, 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(1i, -12041i), vec2<i32>(-15281i, 20975i), vec2<i32>(0i, 0i), vec2<i32>(44010i, 38199i), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, 21275i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -1i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec2<u32> {
    global3 = Struct_1(vec3<u32>(4294967295u, abs(global1.d.x), 50102u), global1.b, _wgslsmith_f_op_vec2_f32(-global3.c), vec2<u32>(45330u, ~4294967295u), global3.e);
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-global3.b), Struct_1(~(~_wgslsmith_add_vec3_u32(global1.a, global3.a)), _wgslsmith_f_op_vec4_f32(global1.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(152f, -178f, global0[_wgslsmith_index_u32(0u, 24u)], -217f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1685f, 323f, global0[_wgslsmith_index_u32(59676u, 24u)], 575f)))), vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_f_op_f32(trunc(global1.b.x))), vec2<u32>(1u, _wgslsmith_add_u32(global3.a.x, _wgslsmith_mult_u32(u_input.d, 1u))), global3.e), Struct_1(reverseBits(_wgslsmith_sub_vec3_u32(global3.a, global3.a)), _wgslsmith_f_op_vec4_f32(-global3.b), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(global3.a.x, 24u)]))), 282f), firstLeadingBit(vec2<u32>(103190u, 4294967295u)), !global3.e), Struct_1(abs(~(vec3<u32>(global3.a.x, 1u, 46974u) << (global3.a % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.b - _wgslsmith_div_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, arg_1, -955f), vec4<f32>(global3.c.x, arg_1, 607f, global3.c.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b))), global3.b.yw, global1.a.zz, !global3.e), global3.e.x);
    global2 = array<f32, 23>();
    global0 = array<f32, 24>();
    let var_1 = vec2<bool>(any(vec4<bool>(true, !all(vec3<bool>(arg_0, global1.e.x, false)), true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, -3762i, u_input.c.x), u_input.b) == reverseBits(u_input.c.x))), select(15538i, -2345i, !var_0.e) <= -u_input.b.x);
    return global3.a.yz;
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = vec4<bool>(1i != _wgslsmith_div_i32(select(u_input.c.x, 30631i, !global1.e.x), (u_input.a.x << (0u % 32u)) << (_wgslsmith_dot_vec3_u32(global1.a, vec3<u32>(0u, 0u, 114191u)) % 32u)), false, true, false);
    let var_1 = 3373u;
    let var_2 = var_1;
    let var_3 = !((0i >= _wgslsmith_mod_i32(~(-1i), u_input.a.x)) || !(global3.e.x && (1u <= u_input.d)));
    global0 = array<f32, 24>();
    return -791f;
}

fn func_2(arg_0: u32, arg_1: u32) -> vec3<u32> {
    var var_0 = vec4<i32>(u_input.c.x, ~u_input.c.x, u_input.b.x, 41399i);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)), -169f)))));
    var var_2 = _wgslsmith_f_op_f32(func_4(Struct_2(global1.b, Struct_1(vec3<u32>(u_input.d, 1u, 4294967295u), _wgslsmith_f_op_vec4_f32(global3.b - _wgslsmith_f_op_vec4_f32(-global1.b)), _wgslsmith_f_op_vec2_f32(-global3.b.xz), func_3(true, _wgslsmith_f_op_f32(max(global1.b.x, 1426f))), !select(global3.e, vec2<bool>(global1.e.x, true), false)), Struct_1(vec3<u32>(44748u | arg_0, 1u, ~arg_0), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(global1.b, global1.b)))), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-global1.b.x)), global3.d, vec2<bool>(global3.e.x, false & global1.e.x)), Struct_1(~global1.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(0u, 24u)], 159f, global1.b.x, global3.c.x) * global1.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]) * global1.c), global3.a.xy, global3.e), global3.e.x && true)));
    var var_3 = var_1.x;
    let var_4 = _wgslsmith_mod_vec2_i32(-global4[_wgslsmith_index_u32(arg_1, 23u)], vec2<i32>(0i, u_input.a.x) >> (vec2<u32>(firstTrailingBit(~34980u), global3.a.x) % vec2<u32>(32u)));
    return vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_0, arg_1)), vec2<u32>(u_input.d, 32220u)), func_3(global3.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(537f + 825f))).x), 1u, global3.d.x);
}

fn func_1(arg_0: u32, arg_1: u32) -> f32 {
    global2 = array<f32, 23>();
    var var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3.a.x, 24u)]);
    global1 = Struct_1(global3.a, _wgslsmith_f_op_vec4_f32(-global3.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(404f, global2[_wgslsmith_index_u32(u_input.d, 23u)])) - _wgslsmith_f_op_vec2_f32(-global3.c)))), _wgslsmith_mult_vec2_u32(global1.d, ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 46248u), global1.d << (global3.d % vec2<u32>(32u)))), vec2<bool>(true, (-1i & (u_input.a.x ^ u_input.b.x)) >= _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(global1.d.x, 23u)], vec2<i32>(u_input.c.x, 1i)), u_input.c.x, _wgslsmith_sub_i32(u_input.a.x, -12399i))));
    var var_1 = vec2<bool>(true, global1.e.x);
    let var_2 = Struct_1(_wgslsmith_div_vec3_u32(~(~global3.a), global3.a) ^ func_2(_wgslsmith_dot_vec3_u32(global3.a | vec3<u32>(1811u, arg_1, 14010u), vec3<u32>(7021u, u_input.d, global3.d.x)), ~2043u), vec4<f32>(-1000f, _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(ceil(-1000f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1627f - -548f), 822f))), vec2<f32>(_wgslsmith_f_op_f32(min(global3.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(59266u, 23u)]))))), _wgslsmith_f_op_f32(-1790f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-413f))))), vec2<u32>(arg_1, arg_1 << (~(~4294967295u) % 32u)), !select(!(!vec2<bool>(global3.e.x, global3.e.x)), !select(vec2<bool>(true, var_1.x), vec2<bool>(global1.e.x, global3.e.x), vec2<bool>(true, var_1.x)), true | all(vec3<bool>(global1.e.x, var_1.x, var_1.x))));
    return global1.b.x;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !(~_wgslsmith_add_i32(firstLeadingBit(u_input.a.x), u_input.b.x) <= -(u_input.c.x >> (u_input.d % 32u)));
    let var_1 = ~(~countOneBits(firstTrailingBit(vec4<u32>(1773u, 12348u, 66083u, arg_1.d.x))));
    let var_2 = var_1.x;
    let var_3 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(205f, 2355f, global1.b.x, arg_0))), arg_1.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(59209u, 24u)], 1003f, global0[_wgslsmith_index_u32(1u, 24u)], 343f) - _wgslsmith_f_op_vec4_f32(-global3.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b)))), arg_1, arg_1, arg_1, !(!global3.e.x) & !global3.e.x);
    return var_3.b;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_2 {
    global3 = func_5(_wgslsmith_f_op_f32(-arg_0.b.x), Struct_1(firstLeadingBit(vec3<u32>(~34606u, func_2(1u, global3.d.x).x, arg_0.d.x << (global3.d.x % 32u))), global3.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.b.ww + vec2<f32>(arg_0.c.x, global2[_wgslsmith_index_u32(global3.a.x, 23u)])) * _wgslsmith_f_op_vec2_f32(-arg_0.b.yw))), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~global3.a.yy, arg_0.d), min(vec2<u32>(u_input.d, 0u) & vec2<u32>(42400u, 4294967295u), vec2<u32>(u_input.d, global3.d.x) | global3.a.zx)), !arg_0.e));
    global4 = array<vec2<i32>, 23>();
    global0 = array<f32, 24>();
    global1 = arg_0;
    var var_0 = ~_wgslsmith_clamp_u32(~(~0u) | arg_0.d.x, 0u, ~(~49791u));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global1.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(-870f, -1937f, arg_0.c.x, -222f) + vec4<f32>(237f, arg_0.c.x, 1402f, global2[_wgslsmith_index_u32(u_input.d, 23u)])))))), arg_0, func_5(416f, func_5(_wgslsmith_f_op_f32(-542f + _wgslsmith_f_op_f32(max(-1000f, 594f))), Struct_1(vec3<u32>(global3.d.x, global3.a.x, global3.a.x) << (vec3<u32>(21234u, global1.a.x, u_input.d) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1133f, -373f, global3.c.x, global1.b.x)), _wgslsmith_f_op_vec2_f32(arg_0.c * arg_0.c), func_2(global1.a.x, arg_0.d.x).xx, !vec2<bool>(arg_1.x, arg_0.e.x)))), arg_0, any(vec4<bool>((false && arg_1.x) && global1.e.x, !(arg_0.d.x < 24534u), global1.e.x, arg_0.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1014f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.d.x, 24u)]), global0[_wgslsmith_index_u32(reverseBits(0u), 24u)]))));
    let var_1 = func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1122f, -505f, global3.e.x))), Struct_1(~vec3<u32>(36345u, global1.d.x, u_input.d), vec4<f32>(-1347f, _wgslsmith_f_op_f32(func_1(u_input.d, 58805u)), global0[_wgslsmith_index_u32(~37576u, 24u)], _wgslsmith_f_op_f32(f32(-1f) * -1409f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(141f, global1.b.x), _wgslsmith_f_op_vec2_f32(global3.c - vec2<f32>(global3.b.x, global2[_wgslsmith_index_u32(0u, 23u)])), select(vec2<bool>(false, true), vec2<bool>(false, true), global1.e.x))), global1.d, global3.e)), vec3<bool>(false, !(any(vec4<bool>(global1.e.x, true, false, global3.e.x)) || !global3.e.x), false));
    var var_2 = vec2<bool>(!(!var_1.e), true);
    global0 = array<f32, 24>();
    global1 = var_1.d;
    var var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1746f * -929f), _wgslsmith_f_op_f32(global3.b.x - global2[_wgslsmith_index_u32(global3.d.x, 23u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24858u, 24u)])) + vec3<f32>(-592f, global3.b.x, 932f))));
}

