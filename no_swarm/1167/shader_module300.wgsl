struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(43955u, 0u, 1u, 36110u, 0u, 4294967295u, 4294967295u, 0u, 4294967295u, 29325u, 0u, 0u, 87086u, 49827u, 1u, 1u, 4294967295u, 52537u, 0u, 41077u, 51521u, 964u);

var<private> global1: array<vec3<u32>, 11>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: bool) -> i32 {
    global1 = array<vec3<u32>, 11>();
    let var_0 = Struct_2(countOneBits(u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(926f, -288f), vec2<f32>(2373f, 297f), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0))))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -13820i, -2147483647i, u_input.c.x), select(vec4<i32>(u_input.c.x, u_input.c.x, 1i, 24285i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(arg_0, false, arg_0, false))), reverseBits(u_input.c.x), _wgslsmith_add_i32(2147483647i, ~u_input.c.x)), ~(~vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, -13845i)), true, 1u), u_input.c.x, select(select(select(!vec4<bool>(false, true, arg_0, false), !vec4<bool>(arg_0, false, true, arg_0), select(true, arg_0, arg_0)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, arg_0, true, false), vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(arg_0, false, arg_0, false)), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, true, true, arg_0), true), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0), arg_0))), select(vec4<bool>(!arg_0, true, arg_0, true), select(select(vec4<bool>(true, true, false, arg_0), vec4<bool>(arg_0, true, arg_0, true), false), !vec4<bool>(true, arg_0, arg_0, true), true), all(vec4<bool>(false, arg_0, arg_0, false))), !vec4<bool>(!arg_0, arg_0, true, 0u > global0[_wgslsmith_index_u32(u_input.e, 22u)])));
    var var_1 = var_0.b.e;
    var var_2 = ~var_0.a;
    let var_3 = u_input.d;
    return ~var_0.c;
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec4<i32> {
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    let var_0 = Struct_2(_wgslsmith_add_vec2_u32(u_input.a, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 19921u), u_input.a)), Struct_1(arg_3.a, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, -2147483647i, -66355i), vec3<i32>(-1i, 4012i, arg_2.x), select(arg_3.b, vec3<i32>(-40202i, u_input.c.x, 1i), vec3<bool>(arg_3.d, true, arg_3.d))), vec4<i32>(_wgslsmith_sub_i32(u_input.c.x, ~1i), _wgslsmith_div_i32(abs(arg_2.x), ~arg_0.x), -20908i << (countOneBits(12861u) % 32u), arg_0.x), true, ~(~min(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11323u, 22u)], 22u)]))), _wgslsmith_div_i32(u_input.c.x, ~_wgslsmith_sub_i32(~0i, 0i)), !vec4<bool>(all(!vec4<bool>(arg_3.d, true, false, true)), true, true, false));
    var var_1 = var_0;
    var_1 = var_0;
    return vec4<i32>(_wgslsmith_add_i32(1i, arg_2.x), ~arg_3.b.x, var_0.b.b.x, -2147483647i) << ((select((vec4<u32>(u_input.a.x, u_input.e, 8210u, u_input.b) & vec4<u32>(u_input.a.x, 0u, 0u, var_0.a.x)) & firstLeadingBit(vec4<u32>(var_1.a.x, u_input.b, global0[_wgslsmith_index_u32(19527u, 22u)], 98113u)), vec4<u32>(firstTrailingBit(u_input.a.x), ~var_1.a.x, ~1u, firstLeadingBit(7980u)), select(vec4<bool>(false, true, false, false), var_0.d, !var_0.d.x)) >> (_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(var_1.a.x, 37072u, 0u, arg_3.e), vec4<u32>(0u, u_input.e, 4294967295u, 4294967295u), vec4<bool>(var_0.d.x, false, false, true)), vec4<u32>(arg_3.e, 0u, 53276u, arg_3.e) & vec4<u32>(arg_3.e, 4294967295u, arg_3.e, 0u)), ~(~vec4<u32>(arg_3.e, 23037u, u_input.a.x, u_input.b))) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = 0u;
    let var_1 = Struct_1(arg_3.a, min(arg_3.c.ywx, -(vec3<i32>(2147483647i, -2147483647i, arg_0.x) >> (global1[_wgslsmith_index_u32(4294967295u, 11u)] % vec3<u32>(32u)))), ~(vec4<i32>(-1i) * -arg_1.c) << (reverseBits((vec4<u32>(arg_1.e, 92321u, 0u, arg_3.e) ^ vec4<u32>(u_input.d.x, 14072u, u_input.d.x, u_input.b)) >> ((vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(arg_3.e, 22u)], 20278u, 20645u) ^ vec4<u32>(1u, arg_3.e, 16732u, 23337u)) % vec4<u32>(32u))) % vec4<u32>(32u)), false & (!(false && arg_2.x) != (abs(-66268i) <= _wgslsmith_dot_vec4_i32(vec4<i32>(-5752i, -15595i, u_input.c.x, arg_3.b.x), arg_1.c))), u_input.d.x);
    global1 = array<vec3<u32>, 11>();
    var var_2 = vec2<f32>(-1253f, arg_1.a.x);
    var_0 = 4294967295u;
    return vec4<i32>(u_input.c.x, i32(-1i) * -max(min(-1i, arg_0.x), ~arg_0.x), arg_0.x, -(~countOneBits(~1i)));
}

fn func_1() -> vec2<f32> {
    let var_0 = func_4(vec2<i32>(u_input.c.x, func_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(31131u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 22u)], 22u)], 22u)], 22u)], global0[_wgslsmith_index_u32(6218u, 22u)]), 22u)] > ~u_input.d.x)), Struct_1(vec2<f32>(468f, _wgslsmith_f_op_f32(-581f - 179f)), ((vec3<i32>(u_input.c.x, u_input.c.x, 0i) >> (global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 22u)], 11u)] % vec3<u32>(32u))) >> (vec3<u32>(501u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) ^ select(u_input.c >> (global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 22u)], 11u)] % vec3<u32>(32u)), vec3<i32>(u_input.c.x, -3361i, u_input.c.x), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-14886i, 1i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, 20600i) & vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, 35666i), ~vec4<i32>(-13010i, 2147483647i, u_input.c.x, 39766i)), false || ((u_input.c.x >= u_input.c.x) || true), 1u), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), true), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-389f, _wgslsmith_f_op_f32(min(-707f, -1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1036f, 115f)))), -(~firstTrailingBit(u_input.c)), _wgslsmith_add_vec4_i32(min(-vec4<i32>(55411i, u_input.c.x, 12279i, u_input.c.x), func_3(vec4<i32>(-31506i, 1i, u_input.c.x, 0i), 578f, vec4<i32>(-17930i, 2118i, u_input.c.x, u_input.c.x), Struct_1(vec2<f32>(1598f, 1510f), u_input.c, vec4<i32>(0i, 0i, u_input.c.x, -2147483647i), false, global0[_wgslsmith_index_u32(41523u, 22u)]))), firstLeadingBit(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2363i)) | ~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 46654i)), true, 0u));
    global0 = array<u32, 22>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-492f, -647f))))), var_0.yxz, vec4<i32>(abs(~u_input.c.x), -func_4(u_input.c.zx, Struct_1(vec2<f32>(-224f, -156f), var_0.wwy, var_0, true, global0[_wgslsmith_index_u32(u_input.e, 22u)]), select(vec2<bool>(true, true), vec2<bool>(false, false), true), Struct_1(vec2<f32>(232f, -2296f), vec3<i32>(u_input.c.x, -49445i, 2147483647i), var_0, false, global0[_wgslsmith_index_u32(u_input.b, 22u)])).x, abs(u_input.c.x), var_0.x ^ firstTrailingBit(u_input.c.x)), false, ~61046u);
    global1 = array<vec3<u32>, 11>();
    let var_2 = Struct_2(~(~select(u_input.d, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a), false)), var_1, -2147483647i, !select(!select(vec4<bool>(false, var_1.d, false, var_1.d), vec4<bool>(var_1.d, true, true, var_1.d), var_1.d), vec4<bool>(true, var_1.a.x >= var_1.a.x, true, var_1.d), true));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2216f, var_2.b.a.x))), vec2<f32>(1215f, _wgslsmith_f_op_f32(var_2.b.a.x * var_1.a.x)), vec2<bool>(var_2.d.x, all(var_2.d.yyx)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2030f, _wgslsmith_f_op_f32(var_2.b.a.x - -450f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~reverseBits(~u_input.d), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1038f, 247f) + vec2<f32>(830f, 905f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(214f, 668f))))), firstTrailingBit(u_input.c), -vec4<i32>(1i, u_input.c.x, abs(u_input.c.x), ~u_input.c.x), !(all(vec4<bool>(true, false, true, false)) || false), 98612u), 32214i, !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_2(~vec2<u32>(firstTrailingBit(abs(42501u)), abs(u_input.b >> (global0[_wgslsmith_index_u32(24185u, 22u)] % 32u))), var_0.b, max(var_0.b.b.x | ~(47437i ^ var_0.b.c.x), func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, 1i, u_input.c.x), -vec4<i32>(-58744i, -10489i, var_0.c, 0i)), var_0.b.a.x, -vec4<i32>(u_input.c.x, -31170i, 51349i, var_0.c), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.b.a), ~u_input.c, var_0.b.c | var_0.b.c, global0[_wgslsmith_index_u32(var_0.b.e, 22u)] >= var_0.a.x, reverseBits(var_0.b.e))).x), !vec4<bool>(var_0.b.b.x < -358i, false, false || any(vec2<bool>(false, var_0.d.x)), true));
    let var_2 = var_0.b;
    var var_3 = any(select(vec4<bool>(!any(vec3<bool>(var_1.b.d, var_2.d, var_0.d.x)), true, !var_2.d, !(!var_2.d)), !select(select(vec4<bool>(var_2.d, var_0.b.d, false, true), var_1.d, var_1.d), vec4<bool>(true, false, false, var_2.d), !var_0.d), !(!var_2.d)));
    let var_4 = vec2<i32>(_wgslsmith_sub_i32(min(1i, var_0.b.c.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, var_1.b.c.x), var_1.b.b.yz)), _wgslsmith_mod_i32(countOneBits(var_1.b.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, -2147483647i), vec3<i32>(var_2.c.x, var_1.b.c.x, var_2.b.x) & vec3<i32>(24192i, 37201i, var_1.b.b.x)))), ~select(-1i, ~2147483647i, var_0.d.x));
    var var_5 = Struct_1(var_1.b.a, vec3<i32>(var_4.x, i32(-1i) * -1i, firstLeadingBit(-2147483647i)), select(var_2.c, func_4(func_3(firstLeadingBit(var_1.b.c), _wgslsmith_f_op_f32(-var_1.b.a.x), vec4<i32>(-1i, var_1.c, var_1.b.b.x, var_4.x), Struct_1(var_2.a, vec3<i32>(1i, u_input.c.x, 16023i), var_2.c, true, var_2.e)).zz, var_1.b, select(select(vec2<bool>(var_1.d.x, var_0.b.d), vec2<bool>(var_2.d, false), var_1.d.yw), !vec2<bool>(var_1.b.d, true), select(var_1.d.yx, vec2<bool>(false, true), var_0.d.zz)), var_1.b), var_1.d), select(false, select(var_2.e <= var_0.a.x, var_2.d, (var_0.b.a.x >= -702f) & (var_0.b.a.x <= var_1.b.a.x)), !var_2.d), _wgslsmith_mod_u32(select(_wgslsmith_mod_u32(~0u, var_2.e ^ u_input.e), firstTrailingBit(var_0.b.e & var_0.b.e), true), abs(~89824u)));
    var var_6 = all(vec4<bool>(!var_1.d.x, all(select(vec3<bool>(true, var_1.d.x, true), var_1.d.ywy, select(var_5.d, true, false))), !select(true | var_1.d.x, false, var_5.d), any(var_1.d.wx)));
    var_0 = var_1;
    var var_7 = any(vec4<bool>(any(vec3<bool>(true, var_0.b.d, var_5.d)), firstLeadingBit(var_5.b.x) == -var_5.c.x, all(var_0.d) != !var_5.d, true & var_1.d.x)) && var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_1()), ~_wgslsmith_dot_vec3_u32(max(~global1[_wgslsmith_index_u32(var_0.b.e, 11u)], reverseBits(global1[_wgslsmith_index_u32(89711u, 11u)])), firstTrailingBit(global1[_wgslsmith_index_u32(~42534u, 11u)])), ~_wgslsmith_add_i32(-_wgslsmith_add_i32(var_2.b.x, var_4.x), _wgslsmith_sub_i32(var_4.x, -1i) ^ (var_2.c.x & 0i)), firstTrailingBit(var_2.b.xx), _wgslsmith_sub_u32(1u, firstTrailingBit(4294967295u)));
}

