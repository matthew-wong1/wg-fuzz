struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: Struct_2;

var<private> global2: vec2<f32> = vec2<f32>(-108f, 1006f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> u32 {
    var var_0 = Struct_3(arg_1, select(select(select(vec2<bool>(arg_2.a, true), vec2<bool>(true, true), !vec2<bool>(arg_0, arg_2.a)), select(!vec2<bool>(arg_2.a, arg_2.a), !vec2<bool>(arg_2.a, arg_2.a), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), arg_2.a), !vec2<bool>(!global1.a, !arg_0), vec2<bool>(arg_2.b.b.x > ~6811i, arg_0)), vec4<bool>(global1.a, any(vec2<bool>(true, any(vec2<bool>(false, true)))), arg_2.a, global1.a), Struct_2(!(_wgslsmith_clamp_u32(global1.b.c, 21701u, global1.b.a.x) >= global1.b.c), Struct_1(reverseBits(vec3<u32>(u_input.c.x, u_input.c.x, arg_2.b.a.x)), countOneBits(global1.b.b), _wgslsmith_add_u32(global1.b.a.x ^ 31437u, 41196u), global1.b.d)), vec4<i32>(~0i, countOneBits(-arg_2.b.b.x << (firstTrailingBit(arg_2.b.a.x) % 32u)), 4172i, _wgslsmith_div_i32(0i, arg_2.b.b.x)));
    var var_1 = !var_0.b;
    var var_2 = arg_2.b;
    global1 = arg_2;
    let var_3 = vec4<f32>(1450f, var_0.d.b.d.x, _wgslsmith_div_f32(1843f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-114f, var_2.d.x)))), _wgslsmith_f_op_f32(f32(-1f) * -2056f));
    return _wgslsmith_sub_u32(18215u, _wgslsmith_mult_u32(global1.b.a.x, 1u) ^ max(1u, ~41853u));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(257f, global1.b.d.x)))), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.d.x, -1216f) + global1.b.d)))));
    let var_0 = Struct_1(vec3<u32>(~select(global1.b.c, 14027u, false), func_3(global1.a, arg_0, Struct_2(global1.a, global1.b), 9132i) & func_3(true, -1i, Struct_2(false, global1.b), -2147483647i), firstTrailingBit(global1.b.a.x) & 1u) ^ vec3<u32>(select(u_input.c.x, _wgslsmith_div_u32(global1.b.a.x, 4294967295u), global1.a), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(7984u, u_input.c.x, 0u, 0u)), vec4<u32>(42976u, 4294967295u, global1.b.c, global1.b.c)), select(1u, global1.b.c, true) | 122882u), _wgslsmith_add_vec2_i32(global1.b.b, (max(global1.b.b, vec2<i32>(global1.b.b.x, -31247i)) & global1.b.b) >> (vec2<u32>(u_input.c.x | 8672u, 4294967295u & u_input.c.x) % vec2<u32>(32u))), u_input.c.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.b.d))));
    global0 = array<i32, 12>();
    return var_0;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    let var_0 = func_2(i32(-1i) * -2147483647i);
    var var_1 = _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(arg_0.d.b.a.x, 12u)], -28771i, ~(-2147483647i | -func_2(arg_1.e.x).b.x));
    let var_2 = arg_0.c;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.d.b.d.x + _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.b.d.x + arg_2.d.b.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1321f + arg_2.d.b.d.x) + _wgslsmith_f_op_f32(global1.b.d.x - -1108f)), func_2(-1i).d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1366f, -1000f, 2563f, global2.x)))));
    global0 = array<i32, 12>();
    return arg_0.d;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    return abs(~82026u);
}

fn func_5(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = global1.a;
    let var_1 = select(!vec4<bool>(all(!vec2<bool>(global1.a, false)), global1.a, !(!global1.a), _wgslsmith_f_op_f32(abs(global2.x)) >= _wgslsmith_f_op_f32(-global1.b.d.x)), select(select(select(select(vec4<bool>(false, global1.a, global1.a, true), vec4<bool>(true, global1.a, true, true), false), !vec4<bool>(true, global1.a, false, global1.a), !vec4<bool>(global1.a, global1.a, false, global1.a)), vec4<bool>(true, true, 0i != global1.b.b.x, !global1.a), global1.a), vec4<bool>(false, true, true, true), !select(!vec4<bool>(global1.a, true, global1.a, global1.a), !vec4<bool>(false, true, false, global1.a), true)), true);
    let var_2 = !all(var_1.xy);
    global0 = array<i32, 12>();
    var var_3 = Struct_3(min(-1i, reverseBits(_wgslsmith_mod_i32(global1.b.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global1.b.b.x, -12694i), vec3<i32>(-9418i, 1i, global1.b.b.x))))), !vec2<bool>(global1.a, var_2), vec4<bool>(var_2, var_1.x, false, true), Struct_2(any(var_1.zz), func_2(~_wgslsmith_add_i32(global0[_wgslsmith_index_u32(arg_0.x, 12u)], global1.b.b.x))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(global0[_wgslsmith_index_u32(32286u, 12u)], global1.b.b.x, 23029i, u_input.b), vec4<i32>(2147483647i, u_input.a, 39367i, u_input.b), false) << (_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.x, 1u, 0u, u_input.c.x)), vec4<u32>(52066u, arg_0.x, u_input.c.x, 18335u) | arg_0) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(min(abs(vec4<i32>(-2147483647i, -2147483647i, -18935i, -15657i)), ~vec4<i32>(u_input.b, u_input.b, global0[_wgslsmith_index_u32(4294967295u, 12u)], u_input.b)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(3692u, 12u)], global1.b.b.x, -36743i, global1.b.b.x), vec4<i32>(1i, 0i, global1.b.b.x, 1i)), -vec4<i32>(1i, u_input.b, -28644i, -24911i))), select(vec4<i32>(~1i, i32(-1i) * -29776i, 26693i, global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(60615u, 12u)], 1i, global1.b.b.x, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 2147483647i, global0[_wgslsmith_index_u32(8382u, 12u)], -2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(0u, 12u)], -31149i, 23990i, global0[_wgslsmith_index_u32(0u, 12u)]))), !vec4<bool>(var_2, var_1.x, var_2, var_1.x))));
    return func_1(Struct_3(~u_input.b, !(!(!var_1.yz)), select(select(select(vec4<bool>(false, var_3.d.a, var_2, true), var_3.c, var_1), var_3.c, var_1), !vec4<bool>(true, global1.a, var_3.b.x, var_1.x), vec4<bool>(true, true, global1.a && false, var_1.x)), Struct_2(false, func_1(Struct_3(u_input.b, var_3.b, vec4<bool>(var_1.x, var_2, false, var_3.b.x), var_3.d, var_3.e), Struct_3(var_3.d.b.b.x, vec2<bool>(false, global1.a), var_3.c, Struct_2(var_1.x, Struct_1(vec3<u32>(var_3.d.b.c, u_input.c.x, 4442u), global1.b.b, u_input.c.x, var_3.d.b.d)), vec4<i32>(-6164i, global0[_wgslsmith_index_u32(global1.b.a.x, 12u)], 36131i, 2147483647i)), Struct_3(-27930i, var_3.c.wz, vec4<bool>(var_3.d.a, global1.a, true, var_1.x), var_3.d, vec4<i32>(-1407i, var_3.d.b.b.x, global0[_wgslsmith_index_u32(u_input.c.x, 12u)], 1i))).b), -var_3.e), Struct_3(-2147483647i, !select(var_3.b, vec2<bool>(var_2, true), var_3.b), select(vec4<bool>(false && global1.a, true, var_1.x, false), var_1, !(!vec4<bool>(global1.a, var_3.b.x, true, var_2))), var_3.d, min(vec4<i32>(-7409i, -17468i, _wgslsmith_mult_i32(global1.b.b.x, 1i), u_input.a), _wgslsmith_add_vec4_i32(select(vec4<i32>(-6314i, global0[_wgslsmith_index_u32(3818u, 12u)], 17992i, var_3.d.b.b.x), var_3.e, var_3.d.a), var_3.e ^ var_3.e))), Struct_3(2147483647i, var_1.wz, !(!(!var_3.c)), func_1(Struct_3(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(var_3.d.b.c, 12u)], 30497i), !vec2<bool>(false, var_2), var_1, var_3.d, var_3.e), Struct_3(_wgslsmith_sub_i32(16456i, global1.b.b.x), vec2<bool>(var_1.x, true), !vec4<bool>(true, var_2, var_1.x, false), func_1(Struct_3(-8331i, var_3.b, var_3.c, var_3.d, var_3.e), Struct_3(2147483647i, var_3.b, vec4<bool>(var_3.c.x, false, var_3.c.x, true), Struct_2(true, Struct_1(global1.b.a, vec2<i32>(-4299i, 1i), 20835u, global1.b.d)), vec4<i32>(global1.b.b.x, 1i, global1.b.b.x, u_input.b)), Struct_3(-5002i, var_1.xz, var_1, var_3.d, vec4<i32>(23772i, global1.b.b.x, u_input.b, -5633i))), _wgslsmith_mult_vec4_i32(var_3.e, vec4<i32>(-53437i, 43189i, var_3.e.x, var_3.a))), Struct_3(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(var_3.d.b.c, 12u)], 30190i), vec2<bool>(true, true), !vec4<bool>(var_2, var_3.d.a, var_1.x, false), Struct_2(var_2, var_3.d.b), var_3.e)), var_3.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<u32>(0u, ~firstLeadingBit(~global1.b.c), 71352u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(15246u, _wgslsmith_add_u32(u_input.c.x, u_input.c.x)), func_4(_wgslsmith_f_op_f32(global1.b.d.x + global2.x), func_1(Struct_3(-2147483647i, vec2<bool>(true, true), vec4<bool>(true, global1.a, false, true), Struct_2(true, Struct_1(global1.b.a, vec2<i32>(global0[_wgslsmith_index_u32(global1.b.c, 12u)], global1.b.b.x), 4294967295u, vec2<f32>(global1.b.d.x, global2.x))), vec4<i32>(global0[_wgslsmith_index_u32(global1.b.a.x, 12u)], global1.b.b.x, global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(25771u, 12u)])), Struct_3(global0[_wgslsmith_index_u32(0u, 12u)], vec2<bool>(global1.a, false), vec4<bool>(global1.a, global1.a, global1.a, global1.a), Struct_2(false, global1.b), vec4<i32>(1i, -2147483647i, 0i, 2147483647i)), Struct_3(global1.b.b.x, vec2<bool>(global1.a, true), vec4<bool>(global1.a, global1.a, global1.a, true), Struct_2(global1.a, Struct_1(vec3<u32>(u_input.c.x, global1.b.c, u_input.c.x), global1.b.b, global1.b.c, global1.b.d)), vec4<i32>(u_input.b, -2147483647i, -28198i, global0[_wgslsmith_index_u32(70550u, 12u)]))), Struct_3(global0[_wgslsmith_index_u32(0u, 12u)], vec2<bool>(true, false), vec4<bool>(global1.a, true, global1.a, global1.a), Struct_2(false, global1.b), vec4<i32>(-1i, 63166i, 13025i, 410i))))));
    var var_1 = global1.a;
    global2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(154f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.d.x - global2.x)))), var_0.b.d)));
    let var_2 = Struct_3(func_1(Struct_3(firstLeadingBit(_wgslsmith_clamp_i32(-1i, u_input.a, var_0.b.b.x)), vec2<bool>(206f < var_0.b.d.x, var_0.a), vec4<bool>(!var_0.a, var_0.a, global1.a, global1.a || var_0.a), Struct_2(var_0.b.d.x >= 1206f, func_5(vec4<u32>(var_0.b.a.x, 101895u, 41015u, 1u)).b), _wgslsmith_div_vec4_i32(~vec4<i32>(-1i, 1i, 3717i, global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), ~vec4<i32>(7746i, 33600i, -1i, -1i))), Struct_3(-(var_0.b.b.x << (u_input.c.x % 32u)), select(select(vec2<bool>(false, global1.a), vec2<bool>(false, true), global1.a), vec2<bool>(global1.a, var_0.a), global1.a || true), !(!vec4<bool>(var_0.a, global1.a, false, var_0.a)), Struct_2(any(vec3<bool>(false, var_0.a, var_0.a)), Struct_1(global1.b.a, vec2<i32>(var_0.b.b.x, global1.b.b.x), var_0.b.a.x, var_0.b.d)), ~abs(vec4<i32>(u_input.b, var_0.b.b.x, -40486i, var_0.b.b.x))), Struct_3(-1i, vec2<bool>(global1.a, true), !(!vec4<bool>(global1.a, global1.a, var_0.a, global1.a)), Struct_2(!var_0.a, Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), global1.b.b, var_0.b.c, vec2<f32>(3447f, -2078f))), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, global1.b.b.x, global1.b.b.x, -1i), max(vec4<i32>(u_input.b, -32073i, -31493i, var_0.b.b.x), vec4<i32>(11325i, -27746i, 1i, var_0.b.b.x))))).b.b.x, select(!vec2<bool>(global1.a, var_0.a), select(vec2<bool>(var_0.a, func_1(Struct_3(global1.b.b.x, vec2<bool>(var_0.a, global1.a), vec4<bool>(false, var_0.a, true, var_0.a), Struct_2(true, Struct_1(global1.b.a, vec2<i32>(-2147483647i, 1i), u_input.c.x, global1.b.d)), vec4<i32>(0i, 0i, global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)])), Struct_3(2147483647i, vec2<bool>(true, global1.a), vec4<bool>(true, global1.a, true, var_0.a), Struct_2(false, global1.b), vec4<i32>(0i, 0i, -1i, global0[_wgslsmith_index_u32(global1.b.c, 12u)])), Struct_3(-38402i, vec2<bool>(true, var_0.a), vec4<bool>(true, global1.a, var_0.a, false), Struct_2(false, var_0.b), vec4<i32>(1i, 7702i, global1.b.b.x, 1i))).a), !(!vec2<bool>(global1.a, true)), true), vec2<bool>(any(vec4<bool>(var_0.a, false, global1.a, global1.a)), false)), select(select(select(select(vec4<bool>(global1.a, global1.a, global1.a, var_0.a), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, var_0.a)), select(vec4<bool>(true, global1.a, false, true), vec4<bool>(true, false, false, global1.a), vec4<bool>(false, true, var_0.a, true)), true), !vec4<bool>(var_0.a, false, false, var_0.a), vec4<bool>(!var_0.a, var_0.a, true, global1.a)), select(select(!vec4<bool>(true, var_0.a, var_0.a, true), !vec4<bool>(global1.a, true, true, var_0.a), var_0.a), !select(vec4<bool>(global1.a, var_0.a, var_0.a, global1.a), vec4<bool>(false, global1.a, var_0.a, false), true), !(false | var_0.a)), select(true, !(var_0.b.a.x >= var_0.b.a.x), false)), Struct_2(any(select(select(vec4<bool>(global1.a, true, false, global1.a), vec4<bool>(global1.a, var_0.a, global1.a, false), global1.a), vec4<bool>(var_0.a, global1.a, true, false), select(vec4<bool>(true, global1.a, false, var_0.a), vec4<bool>(var_0.a, false, global1.a, true), false))), func_2(~global0[_wgslsmith_index_u32(u_input.c.x, 12u)] ^ ~0i)), _wgslsmith_div_vec4_i32(countOneBits(min(vec4<i32>(-12410i, 1i, global1.b.b.x, u_input.a), vec4<i32>(global1.b.b.x, -61820i, global0[_wgslsmith_index_u32(var_0.b.a.x, 12u)], global1.b.b.x))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global1.b.a.x, 12u)], 44471i, 1i, global0[_wgslsmith_index_u32(42298u, 12u)]), vec4<i32>(u_input.b, global1.b.b.x, 16467i, global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), vec4<i32>(0i, var_0.b.b.x, 7341i, 0i)), -vec4<i32>(0i, 17121i, global0[_wgslsmith_index_u32(6147u, 12u)], u_input.b)) | (vec4<i32>(var_0.b.b.x, 21062i, 0i, -2008i) | ~vec4<i32>(23421i, var_0.b.b.x, global0[_wgslsmith_index_u32(28311u, 12u)], 14855i))));
    var var_3 = var_0.b.a;
    let var_4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.b.d.x, -2481f, 1194f, _wgslsmith_f_op_f32(floor(345f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_add_i32(0i, -3701i)), -2147483647i >> (1u % 32u)), i32(-1i) * -25336i);
}

