struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, false, true, false, false, true, false, true, true, false);

var<private> global1: f32;

var<private> global2: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: u32) -> i32 {
    global0 = array<bool, 10>();
    var var_0 = Struct_2(vec2<bool>(true, true), _wgslsmith_sub_vec3_u32(~abs(~vec3<u32>(0u, u_input.e, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_2, 0u), reverseBits(vec3<u32>(1u, 55160u, arg_3)))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1000f, 1300f)))))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1115f + 1435f), -850f))))));
    var var_2 = !(u_input.b == _wgslsmith_mod_u32(u_input.b, 10921u));
    var_0 = Struct_2(var_0.a, var_0.b);
    return firstLeadingBit(~arg_1);
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: f32) -> u32 {
    let var_0 = max(max(u_input.c.zww, -(~(-vec3<i32>(15360i, u_input.c.x, -16247i)))), u_input.a.yxw);
    var var_1 = global0[_wgslsmith_index_u32(min(~abs(~u_input.e & _wgslsmith_mult_u32(1u, 4294967295u)), 15438u), 10u)];
    global2 = (_wgslsmith_dot_vec2_i32(u_input.c.xy, abs(vec2<i32>(1i, -1i))) << (1u % 32u)) & func_3(2147483647i, select(-u_input.d, u_input.c.x, !(true | global0[_wgslsmith_index_u32(u_input.e, 10u)])), u_input.e, 80184u);
    var var_2 = select(any(select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 10u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 10u)])), select(vec2<bool>(true, true), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]), vec2<bool>(global0[_wgslsmith_index_u32(87007u, 10u)], global0[_wgslsmith_index_u32(u_input.e, 10u)]), false), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(3431u, 10u)]), vec2<bool>(global0[_wgslsmith_index_u32(11304u, 10u)], true), vec2<bool>(global0[_wgslsmith_index_u32(33075u, 10u)], global0[_wgslsmith_index_u32(8503u, 10u)]))), !(!global0[_wgslsmith_index_u32(u_input.b, 10u)]))), var_0.x < _wgslsmith_div_i32(u_input.c.x, ~abs(var_0.x)), false);
    let var_3 = false;
    return countOneBits(min(u_input.e, 10867u));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = firstLeadingBit(~(~(vec4<u32>(u_input.e, 55950u, arg_2.b.b.x, 3462u) ^ vec4<u32>(4294967295u, 0u, u_input.e, 66745u))) >> (~vec4<u32>(arg_0, arg_0, ~arg_0, 0u) % vec4<u32>(32u)));
    var var_1 = arg_2.a.a;
    let var_2 = Struct_1(arg_2.a.a, any(select(vec4<bool>(true, true, false, false), vec4<bool>(arg_2.b.a.x && true, all(vec3<bool>(false, arg_2.c.x, true)), true, true), !global0[_wgslsmith_index_u32(1u, 10u)])));
    var var_3 = var_2;
    var var_4 = vec2<bool>(global0[_wgslsmith_index_u32(0u, 10u)], !(!(arg_2.a.a.x >= _wgslsmith_f_op_f32(arg_2.a.a.x + var_2.a.x))));
    return arg_2.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32) -> Struct_4 {
    global1 = -853f;
    global1 = arg_1.x;
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    var var_0 = func_4(arg_0.b.x, ~u_input.a.zw, Struct_3(Struct_1(arg_1.zx, !any(arg_0.a)), arg_0, vec2<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 10u)], global0[_wgslsmith_index_u32(25446u, 10u)], false, false)), !arg_0.a.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.d, u_input.c.x, -1i), ~(~(~u_input.a)), reverseBits(vec4<i32>(-2147483647i, u_input.a.x, u_input.c.x, u_input.d))));
    return Struct_4(vec4<f32>(_wgslsmith_div_f32(-717f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1891f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2))), _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(round(arg_1.x))))), 547f), 1000f);
}

fn func_6(arg_0: Struct_4, arg_1: u32) -> i32 {
    global2 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, firstTrailingBit(u_input.a.x)), -u_input.c.x);
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x))), 1000f), arg_0.a.x, -118f, 1321f), 122f);
    global2 = -(~(-50111i));
    global0 = array<bool, 10>();
    var var_1 = select(vec4<u32>(u_input.e, arg_1 & 64957u, ~(~arg_1), _wgslsmith_div_u32(~arg_1, func_4(22890u, vec2<i32>(u_input.a.x, 5576i), Struct_3(Struct_1(var_0.a.wx, true), Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(25620u, 10u)], global0[_wgslsmith_index_u32(8189u, 10u)]), vec3<u32>(arg_1, 29751u, u_input.b)), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 10u)])), vec4<i32>(u_input.c.x, 0i, -9297i, u_input.c.x)).b.x)) & ~abs(abs(vec4<u32>(arg_1, 79017u, 6365u, 115912u))), ~abs(vec4<u32>(func_2(var_0.b, var_0, 414f), ~arg_1, u_input.e, arg_1)), ~u_input.c.x < ~(-36787i));
    return firstLeadingBit(u_input.c.x);
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    global2 = _wgslsmith_sub_i32(func_6(func_5(func_4(func_2(717f, Struct_4(vec4<f32>(621f, 713f, 274f, 330f), 242f), -806f), vec2<i32>(1i, 0i) >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), Struct_3(Struct_1(vec2<f32>(-775f, -1874f), global0[_wgslsmith_index_u32(u_input.b, 10u)]), Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 10u)], false), vec3<u32>(u_input.b, u_input.e, 1u)), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 10u)], true)), _wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(arg_0.x, u_input.a.x, arg_0.x, -1i), vec4<i32>(-10182i, 2147483647i, 2147483647i, arg_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(828f, 1214f, -1333f)) - vec3<f32>(-1000f, 263f, 101f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(759f)))), _wgslsmith_mult_u32(abs(u_input.e >> (6764u % 32u)), 1u)), _wgslsmith_sub_i32(2147483647i | u_input.d, _wgslsmith_div_i32(2147483647i, func_3(-8324i, u_input.c.x, func_2(-790f, Struct_4(vec4<f32>(808f, 787f, 1000f, 509f), 1782f), 1262f), ~u_input.b))));
    global2 = -arg_0.x;
    var var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1927f) * -209f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(941f)), _wgslsmith_f_op_f32(select(-492f, -484f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -468f))), 1f), -369f);
    global2 = u_input.c.x;
    let var_1 = Struct_1(var_0.a.wx, true | global0[_wgslsmith_index_u32(~abs(u_input.b), 10u)]);
    return Struct_2(vec2<bool>(!any(vec3<bool>(true, var_1.b, false)), true), select(~firstTrailingBit(vec3<u32>(22452u, 4294967295u, u_input.b)), ~min(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.e), vec3<u32>(0u, u_input.e, u_input.e)), vec3<u32>(40244u, u_input.e, 0u) & vec3<u32>(44505u, 35487u, 11063u)), select(!select(vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(var_1.b, var_1.b, global0[_wgslsmith_index_u32(u_input.e, 10u)]), global0[_wgslsmith_index_u32(34493u, 10u)]), vec3<bool>(var_1.b && true, global0[_wgslsmith_index_u32(u_input.b, 10u)] | var_1.b, true), !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 10u)], false, var_1.b), vec3<bool>(false, var_1.b, var_1.b), global0[_wgslsmith_index_u32(605u, 10u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 10>();
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.c.zx, ~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(u_input.d, u_input.a.x), vec2<i32>(u_input.c.x, 0i))) & u_input.a.zz);
    var var_1 = func_1(u_input.c.wwz & _wgslsmith_mod_vec3_i32(vec3<i32>(~0i, i32(-1i) * -32373i, 2147483647i), -select(vec3<i32>(1867i, 27953i, var_0), u_input.c.yyy, global0[_wgslsmith_index_u32(u_input.b, 10u)])));
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~firstLeadingBit(var_1.b.x), _wgslsmith_mult_u32(u_input.e, _wgslsmith_dot_vec3_u32(var_1.b, var_1.b))) >> (vec2<u32>(~(~1u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b.x, 13865u, var_1.b.x, var_1.b.x), vec4<u32>(u_input.e, var_1.b.x, 0u, 4294967295u)), ~vec4<u32>(13840u, var_1.b.x, var_1.b.x, 1u))) % vec2<u32>(32u)), ~(~abs(var_1.b.yz << (var_1.b.yy % vec2<u32>(32u)))), vec2<u32>(~(~1u), 66403u));
    let var_3 = Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(max(43173u, ~var_2.x), 10u)] || false, global0[_wgslsmith_index_u32(44146u, 10u)]), (select(var_1.b, var_1.b >> (var_1.b % vec3<u32>(32u)), select(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(u_input.e, 10u)])) | var_1.b) << (vec3<u32>(var_1.b.x, 4294967295u, _wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(4294967295u, var_2.x))) % vec3<u32>(32u)));
    let var_4 = !vec2<bool>(func_4(~0u, vec2<i32>(var_0 << (var_2.x % 32u), -1i), Struct_3(Struct_1(vec2<f32>(-146f, 2444f), var_1.a.x), var_3, func_4(32610u, vec2<i32>(-58081i, -20587i), Struct_3(Struct_1(vec2<f32>(-231f, -178f), false), var_3, vec2<bool>(true, false)), u_input.c).a), select(vec4<i32>(2147483647i, 0i, -2147483647i, 0i), vec4<i32>(-2147483647i, 0i, 0i, var_0), global0[_wgslsmith_index_u32(46744u, 10u)]) ^ reverseBits(vec4<i32>(-11918i, 15713i, 11891i, u_input.d))).a.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(var_3.b.x, var_1.b.x, 0u), countOneBits(vec3<u32>(8245u, 9983u, var_3.b.x)), false), vec3<u32>(21822u, u_input.b, var_1.b.x) & vec3<u32>(var_2.x, var_3.b.x, 25736u)), 10u)]);
    global0 = array<bool, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(2377f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(982f, 274f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(-1000f, -1083f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-497f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-921f + 1125f)))));
}

