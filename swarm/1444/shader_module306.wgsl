struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(341f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    let var_0 = 1u;
    var var_1 = Struct_4(Struct_1(vec3<u32>(36278u, ~max(var_0, var_0), _wgslsmith_add_u32(var_0, 15862u)), vec3<u32>(var_0, reverseBits(1u), 4294967295u), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(var_0, 1u)], 882f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1188f, global0[_wgslsmith_index_u32(var_0, 1u)])))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(261f, global0[_wgslsmith_index_u32(var_0, 1u)]))))))), ~u_input.a < u_input.a);
    global0 = array<f32, 1>();
    return 33463u;
}

fn func_2() -> Struct_4 {
    global0 = array<f32, 1>();
    var var_0 = Struct_5(vec3<bool>(true, true, true), Struct_4(Struct_1(firstTrailingBit(vec3<u32>(31022u, 1u, 12623u)) << (~vec3<u32>(4294967295u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(51124u, 1003u, 0u), vec3<u32>(26789u, 1u, 223u), true)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(543f, -2297f) + vec2<f32>(global0[_wgslsmith_index_u32(5420u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(975f, -757f) - vec2<f32>(global0[_wgslsmith_index_u32(49075u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)])))), func_3(16838i, true) >= 1u));
    global0 = array<f32, 1>();
    let var_1 = Struct_3(true, 666f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.a.a.x, var_0.b.a.a.x, var_0.b.a.b.x, var_0.b.a.b.x), vec4<u32>(14060u, var_0.b.a.a.x, var_0.b.a.b.x, 4647u)), 1u)]))), Struct_1(vec3<u32>(~var_0.b.a.b.x, 70142u, _wgslsmith_sub_u32(1u, select(var_0.b.a.b.x, 0u, var_0.b.b))), var_0.b.a.b ^ ~(vec3<u32>(var_0.b.a.b.x, var_0.b.a.a.x, var_0.b.a.b.x) | vec3<u32>(var_0.b.a.a.x, 1u, 4294967295u)), all(select(select(vec3<bool>(false, var_0.b.a.c, var_0.b.b), var_0.a, var_0.b.b), !vec3<bool>(false, var_0.a.x, var_0.a.x), var_0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(abs(271f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -843f)))));
    var var_2 = Struct_3(all(vec4<bool>(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.a, 1i, -490i)) <= -u_input.b.x, !var_1.d.c, var_1.d.c, _wgslsmith_div_u32(var_0.b.a.b.x, 1u) <= var_0.b.a.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(abs(1212f)))), 1378f, var_0.b.a);
    return Struct_4(var_2.d, any(!select(select(vec4<bool>(false, var_1.a, var_0.a.x, var_2.a), vec4<bool>(var_2.d.c, false, true, true), vec4<bool>(var_2.a, true, var_0.a.x, false)), vec4<bool>(var_1.d.c, var_0.b.b, false, true), vec4<bool>(false, var_1.a, false, var_1.d.c))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = func_2();
    global0 = array<f32, 1>();
    var var_1 = var_0.a.c;
    var var_2 = Struct_3(func_2().a.c, arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f))), Struct_1(arg_1.zzz, arg_1.xzy, any(vec4<bool>(false, true & arg_2.c, false, arg_2.c)), vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~9362u, 1u)], _wgslsmith_f_op_f32(min(arg_0.a.d.x, global0[_wgslsmith_index_u32(arg_2.a.x, 1u)]))), -1099f)));
    let var_3 = arg_2.c;
    return Struct_2(72851i, vec3<f32>(var_0.a.d.x, _wgslsmith_f_op_f32(-arg_0.a.d.x), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 1u)] - arg_0.a.d.x)))), select(vec3<u32>(arg_2.a.x, 22196u, arg_2.a.x), ~min(_wgslsmith_sub_vec3_u32(vec3<u32>(77763u, var_0.a.a.x, arg_2.a.x), vec3<u32>(1u, 4294967295u, arg_1.x)), ~vec3<u32>(var_2.d.a.x, 1u, 30170u)), select(select(select(vec3<bool>(true, arg_0.a.c, true), vec3<bool>(true, true, true), true), select(vec3<bool>(var_0.b, arg_2.c, true), vec3<bool>(true, var_3, false), var_0.b), select(vec3<bool>(var_0.b, true, arg_2.c), vec3<bool>(true, var_3, false), var_2.a)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true && arg_2.c), !vec3<bool>(arg_0.a.c, false, false))), any(select(vec4<bool>(true, true, true, true), select(!vec4<bool>(true, arg_2.c, false, var_2.a), vec4<bool>(false, false, var_2.d.c, true), vec4<bool>(false, arg_0.a.c, var_3, true)), !vec4<bool>(false, var_2.d.c, false, var_0.b))));
}

fn func_1() -> vec4<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 1u)] - 1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 1u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 1u)] * -1415f)))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 1u)]));
    var var_1 = func_4(func_2(), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 34182u), vec2<u32>(13685u, 1u)), max(33027u, 4294967295u)), 1u, ~firstTrailingBit(40352u), 47390u)), Struct_1(firstTrailingBit(select(vec3<u32>(46196u, 27740u, 11244u), vec3<u32>(18141u, 29645u, 4294967295u), true)) >> (_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(97113u, 27821u, 2115u)), ~vec3<u32>(1u, 31205u, 67843u), func_2().a.b) % vec3<u32>(32u)), (vec3<u32>(1u, 1u, 1u) >> (firstTrailingBit(vec3<u32>(84979u, 7628u, 8313u)) % vec3<u32>(32u))) | vec3<u32>(max(278u, 55240u), 1u, 0u), !(true & all(vec3<bool>(false, true, true))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(35672u, 1u)])))))));
    let var_2 = Struct_5(select(select(vec3<bool>(var_1.d, true, any(vec3<bool>(var_1.d, var_1.d, var_1.d))), !(!vec3<bool>(var_1.d, false, var_1.d)), true), vec3<bool>((var_1.d | var_1.d) & !var_1.d, !var_1.d, any(select(vec2<bool>(true, var_1.d), vec2<bool>(var_1.d, true), var_1.d))), func_4(func_2(), reverseBits(vec4<u32>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)), Struct_1(vec3<u32>(var_1.c.x, var_1.c.x, 0u), ~var_1.c, var_1.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + var_1.b.zz))).d), Struct_4(Struct_1(var_1.c, vec3<u32>(var_1.c.x, 93995u, 4294967295u), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, 1010f))), true));
    global0 = array<f32, 1>();
    var var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), var_1.c.xx), countOneBits(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), var_1.c.xy))), 1u, _wgslsmith_dot_vec2_u32(~(~var_2.b.a.b.zz), var_2.b.a.a.zy), ~28160u);
    return vec4<bool>(!(!(!(1040f < global0[_wgslsmith_index_u32(var_1.c.x, 1u)]))), false, _wgslsmith_mult_u32(var_2.b.a.b.x, var_2.b.a.a.x) <= ~var_1.c.x, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    var var_0 = ~((_wgslsmith_mult_vec2_u32(select(vec2<u32>(298u, 0u), vec2<u32>(0u, 4294967295u), vec2<bool>(true, false)), vec2<u32>(1u, 1u)) & vec2<u32>(1u, 1u)) << (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(1u, 1u))) % vec2<u32>(32u)));
    let var_1 = vec4<u32>(abs(_wgslsmith_sub_u32(~4294967295u, select(4294967295u, 69157u, true))) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 30208u) & vec2<u32>(var_0.x, 45750u), ~vec2<u32>(78371u, var_0.x)), vec2<u32>(28871u, ~66358u)), 1u, ~(_wgslsmith_sub_u32(~var_0.x, 1u) & var_0.x), max(_wgslsmith_add_u32(~(~278u), _wgslsmith_dot_vec3_u32(vec3<u32>(46475u, var_0.x, var_0.x) >> (vec3<u32>(4294967295u, 41366u, var_0.x) % vec3<u32>(32u)), vec3<u32>(var_0.x, 1u, var_0.x) ^ vec3<u32>(var_0.x, var_0.x, 88274u))), 4294967295u));
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    var var_2 = _wgslsmith_f_op_f32(select(-752f, -1079f, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 1u)] > global0[_wgslsmith_index_u32(var_0.x, 1u)], true, true), func_1()))));
    var_2 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, var_1.x, 0u), 4294967295u), var_0.x, 61292u), 1u)] + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-529f, global0[_wgslsmith_index_u32(var_0.x, 1u)]) + _wgslsmith_f_op_f32(func_2().a.d.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(3432f)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(Struct_4(Struct_1(vec3<u32>(var_1.x, 14988u, var_1.x), vec3<u32>(var_0.x, var_0.x, var_1.x), true, vec2<f32>(430f, 118f)), false), vec4<u32>(var_1.x, 34720u, var_0.x, var_0.x) >> (vec4<u32>(16000u, 25988u, 1u, var_1.x) % vec4<u32>(32u)), Struct_1(vec3<u32>(24502u, 5910u, var_1.x), var_1.xyx, true, vec2<f32>(global0[_wgslsmith_index_u32(50030u, 1u)], global0[_wgslsmith_index_u32(var_0.x, 1u)]))).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(var_1.x, 1u)]))), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~57787u, 1u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(0u, 1u)], 210f, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(~((_wgslsmith_mod_vec3_i32(u_input.b, u_input.b) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, var_1.x, 21822u), vec3<u32>(var_1.x, var_1.x, var_1.x)) % vec3<u32>(32u))) | vec3<i32>(-16104i, _wgslsmith_dot_vec2_i32(u_input.b.xx, u_input.b.zy), i32(-1i) * -2147483647i)), var_0.x, (vec2<i32>(u_input.b.x & u_input.a, u_input.a) & u_input.b.yz) & reverseBits(u_input.b.xy), _wgslsmith_f_op_f32(var_3.x * func_4(Struct_4(func_2().a, -2147483647i < u_input.b.x), _wgslsmith_mult_vec4_u32(select(var_1, vec4<u32>(58067u, 0u, var_0.x, var_0.x), vec4<bool>(false, false, true, true)), var_1), func_2().a).b.x), u_input.b);
}

