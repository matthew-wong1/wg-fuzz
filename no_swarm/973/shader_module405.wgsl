struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-696f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(58772u), 23u)] + global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 23u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.a.x, 23u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 23u)], -829f)) - -1752f))), -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_0.x, 21093i, arg_0.x), vec4<i32>(-2590i, 1i, arg_0.x, arg_0.x)), abs(vec4<i32>(arg_0.x, 0i, arg_0.x, 2147483647i))) != ~reverseBits(_wgslsmith_div_i32(0i, 1i)));
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(abs(var_0.a)), true);
    let var_1 = 53076u;
    return 17532u;
}

fn func_2() -> Struct_1 {
    var var_0 = 1u < ~firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, func_3(vec2<i32>(-2147483647i, 2147483647i))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-280f, global0[_wgslsmith_index_u32(4294967295u, 23u)], 1000f))), _wgslsmith_mod_u32(~reverseBits(~117126u), 4294967295u), vec2<u32>(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b, u_input.a.x), reverseBits(0u))), _wgslsmith_clamp_u32(4294967295u, 4294967295u, select(countOneBits(1u), u_input.a.x, false))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_1.b, 23u)], var_1.a.x, 825f, var_1.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 628f, var_1.a.x, global0[_wgslsmith_index_u32(16096u, 23u)]) - vec4<f32>(-633f, var_1.a.x, var_1.a.x, global0[_wgslsmith_index_u32(1u, 23u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-152f, var_1.a.x, global0[_wgslsmith_index_u32(1u, 23u)], var_1.a.x) - vec4<f32>(var_1.a.x, -960f, global0[_wgslsmith_index_u32(12612u, 23u)], -750f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_1.b, 23u)], 1415f, var_1.a.x, 170f)))), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(all(vec3<bool>(true, false, false)), true, true, true)))), all(select(vec2<bool>(true, all(vec4<bool>(false, true, false, true))), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true))));
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1555f, global0[_wgslsmith_index_u32(var_1.c.x, 23u)], 757f))) - var_2.a.wyw))) + _wgslsmith_f_op_vec3_f32(round(var_1.a))), u_input.b, min(max(max(var_1.c, abs(vec2<u32>(u_input.b, var_1.c.x))), firstLeadingBit(min(vec2<u32>(1u, u_input.a.x), u_input.a.zx))), ~(vec2<u32>(61529u, 4294967295u) >> (~vec2<u32>(u_input.b, u_input.a.x) % vec2<u32>(32u)))));
    let var_3 = u_input.b;
    return Struct_1(5081i);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: bool) -> i32 {
    var var_0 = 1u;
    global0 = array<f32, 23>();
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(max(~vec4<i32>(82534i, -1i, arg_0.a, arg_0.a), -(vec4<i32>(arg_0.a, -40359i, -10760i, -3921i) | vec4<i32>(arg_0.a, 5237i, 1i, arg_0.a))), _wgslsmith_mult_vec4_i32(-(vec4<i32>(arg_1.x, arg_0.a, arg_1.x, arg_1.x) << (vec4<u32>(8313u, 32835u, 4294967295u, u_input.a.x) % vec4<u32>(32u))), min(-vec4<i32>(-7315i, arg_0.a, -2147483647i, 2147483647i), vec4<i32>(arg_0.a, 2147483647i, 23670i, arg_1.x)))), -2147483647i | -arg_1.x);
}

fn func_5(arg_0: bool, arg_1: i32) -> Struct_3 {
    var var_0 = select(~_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 22107u, 54604u, 58454u), vec4<u32>(u_input.a.x, u_input.b, 1u, 48385u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 70500u, u_input.a.x, 4294967295u), vec4<u32>(18452u, 20424u, u_input.b, u_input.b) >> (vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), ~(func_3(vec2<i32>(320i, arg_1)) | (u_input.b >> (_wgslsmith_dot_vec2_u32(vec2<u32>(6250u, 47808u), u_input.a.yy) % 32u))), (~(u_input.a.x & u_input.a.x) <= 46104u) | (~(~4294967295u) == _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.a.x, 0u)), firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 59751u, u_input.b)))));
    global0 = array<f32, 23>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -824f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f)))))));
    var var_2 = u_input.a.x;
    var var_3 = func_2();
    return Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-321f * -339f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 23u)] - -205f)), 1098f)), ~u_input.a.x, ~vec2<u32>(select(~u_input.a.x, ~57822u, !arg_0), _wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(59709u, u_input.b, u_input.b, u_input.a.x)), max(33882u, u_input.a.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(~(~u_input.a.xz), _wgslsmith_div_vec2_u32(u_input.a.xy, vec2<u32>(_wgslsmith_clamp_u32(u_input.b, 1u, 4294967295u), ~66854u))), _wgslsmith_div_u32(u_input.a.x, 4294967295u), ~u_input.b);
    let var_1 = func_5(false, ~func_4(func_2(), abs(firstLeadingBit(vec2<i32>(53660i, 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1792f * global0[_wgslsmith_index_u32(35434u, 23u)])), true));
    var_0 = vec3<u32>(~4294967295u ^ u_input.b, abs(var_1.c.x), ~var_1.b);
    var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_0.x, _wgslsmith_add_u32(var_1.c.x, var_1.c.x) << (~u_input.b % 32u)), _wgslsmith_add_u32(~var_0.x, _wgslsmith_div_u32(u_input.a.x, var_0.x)), 4294967295u), ~u_input.a);
    let var_2 = func_5(false, 1i);
    return Struct_1(_wgslsmith_add_i32(1i, _wgslsmith_add_i32(22978i, -firstLeadingBit(-1i))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-1485f, arg_2.a.x, 733f, arg_2.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(func_3(vec2<i32>(arg_1.a, arg_0)), 23u)], -653f, 169f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 23u)])) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_2.b, 23u)], 2028f, arg_2.a.x, arg_2.a.x) + vec4<f32>(global0[_wgslsmith_index_u32(arg_2.c.x, 23u)], 671f, global0[_wgslsmith_index_u32(arg_2.b, 23u)], -645f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(510f, global0[_wgslsmith_index_u32(28213u, 23u)], arg_2.a.x, arg_2.a.x), vec4<f32>(-2157f, global0[_wgslsmith_index_u32(u_input.b, 23u)], arg_2.a.x, -1472f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(455f, arg_2.a.x, arg_2.a.x, arg_2.a.x)), vec4<f32>(global0[_wgslsmith_index_u32(22565u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], 1032f, -2364f)))));
    let var_1 = arg_0;
    let var_2 = ~1u;
    return Struct_4(_wgslsmith_f_op_vec4_f32(ceil(var_0)), any(vec2<bool>(true, any(vec4<bool>(true, false, false, false)))));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32, arg_3: Struct_4) -> Struct_5 {
    let var_0 = vec4<bool>(any(vec3<bool>(arg_0.b, any(!vec3<bool>(true, true, arg_0.b)), true)), arg_1.b == arg_0.b, (firstTrailingBit(1i) > ~(-1i)) || false, -181f > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1335f, -630f)), func_5(arg_3.b, -2147483647i).a.x)))));
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    let var_1 = func_6(_wgslsmith_div_i32(select(1019i, i32(-1i) * -5323i, arg_0.b), func_2().a) & -2147483647i, func_2(), func_5(arg_0.b, _wgslsmith_clamp_i32(1276i, _wgslsmith_add_i32(-1i, ~2963i), _wgslsmith_sub_i32(14431i, -9984i))));
    return Struct_5(arg_0, func_6(1i, func_2(), func_5(var_1.b, -28335i)), ~(-9253i), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), _wgslsmith_div_f32(-1837f, arg_3.a.x), true && arg_3.b)), _wgslsmith_f_op_f32(round(arg_1.a.x))), var_1.a.ww, all(var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    var var_0 = func_7(func_6(29277i, func_1(), Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(-535f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(419f, -726f, -642f) - vec3<f32>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]))), u_input.b, _wgslsmith_mult_vec2_u32(reverseBits(u_input.a.yx), vec2<u32>(u_input.b, u_input.b)))), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(13347u, 31104u), 23u)], _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(4141u, 23u)], global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), 1657f, _wgslsmith_f_op_f32(ceil(682f)))), func_6(-2147483647i, func_2(), func_5(false, ~(-2147483647i))).b), 268f, func_6(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(73113i, 32946i), vec2<i32>(9252i, 1i)), -1i >> (u_input.b % 32u)), Struct_1(-_wgslsmith_clamp_i32(-4871i, -9622i, -7296i)), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 23u)], 794f, global0[_wgslsmith_index_u32(14356u, 23u)]), vec3<f32>(-1000f, 1077f, global0[_wgslsmith_index_u32(u_input.b, 23u)]))), reverseBits(1u), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xx, vec2<u32>(94326u, 0u)), u_input.a.xx ^ vec2<u32>(u_input.a.x, u_input.b)))));
    var var_1 = func_5(select(func_6(func_1().a ^ -38987i, Struct_1(var_0.c), func_5(false, 1i)).b, min(~var_0.c, reverseBits(2147483647i)) > ~1i, var_0.a.b), var_0.c);
    let var_2 = abs(-vec2<i32>(-4052i, _wgslsmith_mult_i32(-30942i ^ var_0.c, var_0.c)));
    global0 = array<f32, 23>();
    var var_3 = Struct_5(func_7(func_7(Struct_4(var_0.a.a, true), var_0.b, -669f, func_6(_wgslsmith_div_i32(-21302i, var_0.c), func_1(), Struct_3(var_0.b.a.yzw, 48768u, u_input.a.xx))).b, func_6(~(-22603i) >> (~var_1.c.x % 32u), Struct_1(var_2.x << (u_input.a.x % 32u)), func_5(true, -23607i << (var_1.c.x % 32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(func_6(37239i, Struct_1(0i), Struct_3(vec3<f32>(752f, 2947f, -103f), u_input.b, u_input.a.yx)).a.x)))), Struct_4(var_0.b.a, var_0.b.b)).b, func_7(func_6(var_2.x, Struct_1(_wgslsmith_clamp_i32(var_2.x, -1305i, 0i)), Struct_3(_wgslsmith_f_op_vec3_f32(var_1.a - vec3<f32>(-136f, 1796f, var_1.a.x)), 4294967295u, vec2<u32>(4294967295u, var_1.b))), var_0.b, global0[_wgslsmith_index_u32(var_1.c.x, 23u)], Struct_4(var_0.b.a, true)).a, var_2.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a.x, -1598f) - _wgslsmith_f_op_vec2_f32(trunc(var_0.a.a.wy))));
    global0 = array<f32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(min(var_1.c, vec2<u32>(~var_1.b, u_input.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(f32(-1f) * -113f)), -385f, -231f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-530f, global0[_wgslsmith_index_u32(68280u, 23u)], -1685f, 1075f), var_3.b.a) * _wgslsmith_f_op_vec4_f32(-var_3.a.a)))))), -19928i, vec2<i32>(2147483647i, reverseBits(_wgslsmith_sub_i32(~1i, var_3.c))));
}

