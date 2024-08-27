struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(47905i, -29117i, -9773i, 5366i), vec4<i32>(6221i, -1i, -18130i, 2147483647i), vec4<i32>(-1i, -62818i, -32954i, i32(-2147483648)), vec4<i32>(13844i, 1i, -36098i, 1i), vec4<i32>(-1i, 0i, 14748i, 38058i), vec4<i32>(11969i, 14679i, -1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -30603i, -1i, 0i), vec4<i32>(1i, 1i, 27397i, 0i), vec4<i32>(-67036i, 21967i, -12885i, i32(-2147483648)), vec4<i32>(18107i, 0i, 13327i, -1i), vec4<i32>(1i, 1i, 1224i, 0i), vec4<i32>(2147483647i, 12003i, -28099i, 10372i), vec4<i32>(2515i, 0i, -3435i, 1i));

var<private> global1: Struct_2;

var<private> global2: i32 = 30225i;

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    var var_0 = global1.d;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -598f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-514f, -1220f))))));
    global1 = Struct_2(any(vec4<bool>(false, !(global1.e.a.x != global1.a), abs(32096u) == (u_input.a >> (1u % 32u)), (-1000f <= var_1) && (global1.c | false))), vec4<i32>(-14576i, _wgslsmith_div_i32(firstLeadingBit(~global1.b.x), max(-2147483647i, global1.b.x)), i32(-1i) * -1i, 78913i), true, Struct_1(!select(var_0.a, select(global1.d.a, vec2<bool>(var_0.a.x, false), global1.d.a), var_0.a)), global1.e);
    let var_2 = Struct_2(all(select(select(vec3<bool>(false, false, false), vec3<bool>(var_0.a.x, false, false), global1.e.a.x), !vec3<bool>(true, var_0.a.x, var_0.a.x), false)), -_wgslsmith_sub_vec4_i32(countOneBits(~global0[_wgslsmith_index_u32(u_input.b, 13u)]), ~vec4<i32>(global1.b.x, global1.b.x, 34716i, u_input.d.x)), all(!select(vec4<bool>(var_0.a.x, var_0.a.x, false, false), vec4<bool>(true, false, global1.c, true), var_0.a.x)) & var_0.a.x, global1.d, global1.d);
    global2 = ~2147483647i;
    return _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1)))), 911f))));
}

fn func_2() -> vec2<i32> {
    global2 = -abs(14135i);
    global0 = array<vec4<i32>, 13>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-151f - -494f), !(global1.d.a.x & global1.a))))) - -168f);
    global2 = 12560i;
    var var_1 = _wgslsmith_add_vec4_u32(~(_wgslsmith_div_vec4_u32(vec4<u32>(33011u, 1u, u_input.b, u_input.b), vec4<u32>(14931u, u_input.e, u_input.e, 4294967295u)) ^ ~vec4<u32>(1u, u_input.a, u_input.c.x, u_input.a)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.e, u_input.a, u_input.a), vec4<u32>(u_input.c.x, u_input.a, u_input.b, 1855u)))) << (~vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a, u_input.c.x, 1u, u_input.e), vec4<u32>(u_input.b, u_input.a, 1u, 1u)), firstLeadingBit(vec4<u32>(4294967295u, 80751u, u_input.c.x, u_input.e))), 1u, 0u) % vec4<u32>(32u));
    return _wgslsmith_sub_vec2_i32(vec2<i32>(58466i, u_input.d.x), global1.b.zx) & (vec2<i32>(-1i) * -global1.b.zy);
}

fn func_4(arg_0: vec2<i32>) -> Struct_2 {
    global1 = Struct_2(global1.e.a.x, min(~(~global1.b & global0[_wgslsmith_index_u32(4294967295u >> (u_input.c.x % 32u), 13u)]), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(firstTrailingBit(21023u), ~0u, select(67651u, u_input.e, true)), 13u)]), global1.a, global1.d, Struct_1(select(select(vec2<bool>(true, global1.e.a.x), !vec2<bool>(false, global1.e.a.x), vec2<bool>(false, false)), !vec2<bool>(false, global1.a), select(global1.e.a, select(global1.e.a, vec2<bool>(true, global1.a), global1.e.a.x), select(vec2<bool>(global1.d.a.x, true), vec2<bool>(global1.a, true), false)))));
    global2 = arg_0.x;
    var var_0 = Struct_2(false, ~global1.b, !global1.e.a.x, Struct_1(vec2<bool>(true, !global1.e.a.x)), Struct_1(select(!select(vec2<bool>(global1.e.a.x, false), global1.d.a, global1.c), select(vec2<bool>(true, global1.a), global1.d.a, select(vec2<bool>(global1.a, true), global1.e.a, global1.a)), true)));
    var var_1 = _wgslsmith_sub_vec2_u32(u_input.c.xz, ~(~vec2<u32>(u_input.a | u_input.b, ~u_input.b)));
    var var_2 = u_input.c.x;
    return Struct_2(!(!var_0.e.a.x), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-var_0.b.x, -2147483647i >> (var_1.x % 32u), var_0.b.x, u_input.d.x), vec4<i32>(i32(-1i) * -3800i, -1i, _wgslsmith_dot_vec2_i32(global1.b.wz, var_0.b.yz), firstLeadingBit(var_0.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-721f - 609f))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1343f)) + _wgslsmith_f_op_f32(f32(-1f) * -605f)), global1.e, Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(global1.c, var_0.d.a.x), select(vec2<bool>(var_0.c, true), global1.e.a, vec2<bool>(false, true))), !vec2<bool>(global1.d.a.x, var_0.a), global1.e.a)));
}

fn func_1() -> Struct_1 {
    let var_0 = ~min(global1.b.x, -(i32(-1i) * -u_input.d.x));
    global0 = array<vec4<i32>, 13>();
    let var_1 = true && global1.e.a.x;
    var var_2 = func_4(func_2());
    var var_3 = u_input.c.x;
    return func_4(vec2<i32>(-reverseBits(2147483647i), _wgslsmith_clamp_i32(abs(-1i), ~(-1707i), 1i))).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = Struct_2(global1.a, global1.b, all(select(!select(vec4<bool>(global1.a, global1.c, global1.e.a.x, global1.e.a.x), vec4<bool>(true, true, false, global1.c), false), vec4<bool>(true, global1.b.x >= -7423i, global1.d.a.x, true), true)), Struct_1(vec2<bool>(~24947u != reverseBits(u_input.a), select(true, true, global1.a))), func_1());
    var var_2 = vec3<u32>(4294967295u << (~u_input.a % 32u), ~u_input.a, var_0.x);
    let var_3 = ~var_0.x;
    var var_4 = abs(abs(1u));
    let var_5 = Struct_2(false, global1.b, global1.e.a.x, global1.d, var_1.e);
    var var_6 = _wgslsmith_f_op_f32(390f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1060f - _wgslsmith_f_op_f32(360f - _wgslsmith_div_f32(-1000f, -1810f)))));
    var_6 = _wgslsmith_f_op_f32(ceil(2165f));
    var var_7 = vec3<f32>(-302f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f))))), 2127f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-1711f * -935f), _wgslsmith_f_op_f32(abs(var_7.x))));
}

