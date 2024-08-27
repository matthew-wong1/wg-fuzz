struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(1585f, 205f, 244f, -1391f, -290f, -1010f, 133f, -124f, 1582f, -1000f, 228f, 459f, 794f, 1265f, 879f, 930f, 2029f, 549f, -1233f, 1815f, -636f, -1924f, -1325f, 1236f, -309f);

var<private> global1: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

var<private> global2: vec2<u32> = vec2<u32>(0u, 76335u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.x, 25u)] + -1000f))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27798u, 25u)])));
    var_0 = -566f;
    let var_1 = Struct_5(firstTrailingBit(max(~vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(u_input.a, u_input.a)) << (reverseBits(vec2<u32>(35336u, 28783u)) % vec2<u32>(32u))), -798f, -(-30447i << (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(147189u, 41667u, global2.x, global2.x), vec4<u32>(4294967295u, global2.x, global2.x, 0u)), 66962u) % 32u)), Struct_1(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(firstLeadingBit(global2.x << (52226u % 32u)), 25u)])), true, ~(-2147483647i), any(global1[_wgslsmith_index_u32(global2.x, 20u)]), min(firstTrailingBit(47452u), global2.x)));
    global1 = array<vec3<bool>, 20>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_1.d.a, -881f)), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_1.d.e, 25u)])))))) * _wgslsmith_f_op_f32(-var_1.d.a)), any(vec4<bool>(false, true, all(!vec2<bool>(var_1.d.b, var_1.d.b)), true || var_1.d.d)), var_1.a.x, all(vec2<bool>(var_1.d.b, firstLeadingBit(var_1.d.e) > global2.x)), max(_wgslsmith_sub_u32(~reverseBits(46306u), select(global2.x, global2.x, true) & global2.x), 4294967295u));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~abs(15068u), abs(var_2.e), select(_wgslsmith_dot_vec2_u32(vec2<u32>(20174u, var_1.d.e), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 10463u), vec2<u32>(var_2.e, global2.x))), select(global2.x, 0u, true) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.d.e, 0u), vec3<u32>(30235u, 12090u, var_2.e)), true)), _wgslsmith_sub_vec3_u32(vec3<u32>(~var_1.d.e, ~(~var_2.e), var_1.d.e), _wgslsmith_mult_vec3_u32(reverseBits(abs(vec3<u32>(33076u, 7636u, 5004u))), vec3<u32>(72516u, _wgslsmith_div_u32(34167u, 4294967295u), ~var_2.e))));
}

fn func_2(arg_0: u32, arg_1: Struct_4) -> vec2<u32> {
    let var_0 = ~(~func_3());
    let var_1 = 17151u;
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    return _wgslsmith_add_vec2_u32(vec2<u32>(64179u, abs(global2.x)), abs(arg_1.c.b.xw));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, global2.x, 4294967295u), ~vec4<u32>(17385u, global2.x, 29795u, 6568u)), 42136u), max(~vec2<u32>(global2.x, global2.x), _wgslsmith_mult_vec2_u32(func_2(4294967295u, Struct_4(vec4<i32>(u_input.a, u_input.a, -33046i, 1i), u_input.a, Struct_2(Struct_1(146f, true, 4917i, false, global2.x), vec4<u32>(global2.x, 0u, 0u, 35161u), u_input.a))), _wgslsmith_sub_vec2_u32(vec2<u32>(47061u, global2.x), vec2<u32>(global2.x, 24285u))))) << (_wgslsmith_add_u32(_wgslsmith_mod_u32(global2.x, 112877u) >> (54202u % 32u), ~1u & ~global2.x) % 32u);
    let var_1 = !any(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false)));
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(global2.x, 25u)], -1070f, -1000f, global0[_wgslsmith_index_u32(1u, 25u)]), vec4<f32>(global0[_wgslsmith_index_u32(0u, 25u)], -293f, 358f, -2245f), var_1)) - vec4<f32>(global0[_wgslsmith_index_u32(19756u, 25u)], global0[_wgslsmith_index_u32(global2.x, 25u)], global0[_wgslsmith_index_u32(global2.x, 25u)], global0[_wgslsmith_index_u32(1u, 25u)])), vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.x, 25u)]), -1237f, _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(global2.x, 25u)])), _wgslsmith_f_op_f32(f32(-1f) * -846f)))))));
    let var_4 = var_3.x;
    return Struct_2(Struct_1(var_3.x, true, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, 39763i), abs(vec2<i32>(57212i, -32550i) | vec2<i32>(-18541i, u_input.a))), true, countOneBits(global2.x << (~global2.x % 32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(0u, global2.x, global2.x, 1u)), min(_wgslsmith_add_vec4_u32(vec4<u32>(global2.x, global2.x, 1u, global2.x), vec4<u32>(global2.x, global2.x, 76549u, global2.x)), min(vec4<u32>(8045u, global2.x, 15394u, global2.x), vec4<u32>(65843u, global2.x, 14306u, global2.x)))), global2.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(global2.x, global2.x, 4294967295u)), vec3<u32>(global2.x, global2.x, 62211u), vec3<u32>(global2.x, 40506u, 39894u)), vec3<u32>(0u, max(global2.x, 76155u), global2.x)), ~global2.x), _wgslsmith_add_i32(-(-1i << (global2.x % 32u)), u_input.a));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = 2507i;
    var var_1 = Struct_3(vec2<i32>(arg_0.c, _wgslsmith_sub_i32(_wgslsmith_mult_i32(2147483647i, arg_0.a.c) << (_wgslsmith_sub_u32(1u, global2.x) % 32u), _wgslsmith_sub_i32(-u_input.a, -10679i))), Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.x, 25u)] - arg_0.a.a), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1u, 25u)]))), arg_0.a.d, -56330i, arg_0.a.d == true, ~(~arg_0.a.e)), vec4<u32>(~4294967295u, func_1().a.e, 1u, _wgslsmith_add_u32(1u, arg_0.b.x)), arg_0.a.c), firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(arg_0.a.c, 12812i), -2147483647i, 1i, -215i) & -_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.c, 2147483647i, arg_0.a.c, arg_0.c), vec4<i32>(arg_0.a.c, u_input.a, arg_0.a.c, u_input.a))), 0u & ~(~global2.x | max(arg_0.b.x, 82708u)));
    global2 = vec2<u32>(~1u, 4294967295u);
    var var_2 = Struct_3(_wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_add_i32(arg_0.c, 0i), -var_1.b.c), select(_wgslsmith_sub_vec2_i32(vec2<i32>(37401i, var_1.a.x), select(vec2<i32>(arg_0.c, arg_0.c), vec2<i32>(arg_0.c, arg_0.c), vec2<bool>(var_1.b.a.d, true))), abs(countOneBits(var_1.c.zz)), !(!vec2<bool>(arg_0.a.d, arg_0.a.b)))), func_1(), ~vec4<i32>(1i, 50603i, -74593i, firstTrailingBit(_wgslsmith_div_i32(17287i, -66973i))), ~_wgslsmith_dot_vec2_u32(var_1.b.b.xy, ~var_1.b.b.ww) ^ global2.x);
    let var_3 = _wgslsmith_div_f32(646f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.b.b.yz, _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.d, 0u), ~var_1.b.b.yw), vec2<u32>(1u, arg_0.a.e))), 25u)]);
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(_wgslsmith_mod_u32(1u, abs(reverseBits(global2.x))), _wgslsmith_mult_u32(~1u, _wgslsmith_mod_u32(35472u, global2.x) >> (firstTrailingBit(1u) % 32u)), ~(~(global2.x >> (global2.x % 32u))), ~global2.x);
    global1 = array<vec3<bool>, 20>();
    var var_1 = func_4(func_1());
    let var_2 = func_1();
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, abs(var_2.a.c), ~_wgslsmith_add_i32(var_1.c, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, (26192i ^ u_input.a) >> (4294967295u % 32u), firstTrailingBit(2147483647i)), min(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.c, var_2.c, var_2.a.c), vec3<i32>(1i, 1i, -1i)), abs(vec3<i32>(u_input.a, -32240i, var_2.c))), select(vec3<i32>(11758i, -2147483647i, var_2.a.c), vec3<i32>(2147483647i, 57097i, -19264i), var_1.b) & vec3<i32>(-76892i, -2147483647i, 2147483647i)), -(-vec3<i32>(u_input.a, var_1.c, var_2.a.c) >> (_wgslsmith_div_vec3_u32(var_0.yyz, var_0.xyw) % vec3<u32>(32u)))));
    let var_4 = 59434u < _wgslsmith_div_u32(~var_1.e & global2.x, var_0.x ^ min(_wgslsmith_mult_u32(var_2.b.x, 4294967295u), ~var_0.x));
    global2 = ~var_0.wz;
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<u32>(min(86020u, var_1.e), ~1u, abs(59699u))) << (vec3<u32>(global2.x, min(var_0.x, 4294967295u) ^ func_1().b.x, ~global2.x) % vec3<u32>(32u)), min(vec3<i32>(firstLeadingBit(u_input.a), -_wgslsmith_sub_i32(33258i, 8836i), i32(-1i) * -9090i), -(vec3<i32>(-2147483647i, 19193i, var_3) << (~vec3<u32>(24495u, var_5.x, 76656u) % vec3<u32>(32u)))));
}

