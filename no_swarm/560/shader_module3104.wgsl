struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(1u, 1u), vec2<u32>(69559u, 45048u), vec2<u32>(4294967295u, 60747u), vec2<u32>(50315u, 4294967295u), vec2<u32>(55764u, 58124u), vec2<u32>(0u, 44576u), vec2<u32>(1375u, 18438u), vec2<u32>(1u, 0u), vec2<u32>(32712u, 4294967295u), vec2<u32>(16094u, 9274u), vec2<u32>(40168u, 1u), vec2<u32>(31136u, 59175u), vec2<u32>(0u, 37412u), vec2<u32>(48226u, 58033u), vec2<u32>(4294967295u, 98783u), vec2<u32>(9648u, 1u), vec2<u32>(32195u, 60437u), vec2<u32>(0u, 4294967295u), vec2<u32>(7079u, 1u), vec2<u32>(0u, 0u), vec2<u32>(70921u, 52098u), vec2<u32>(0u, 1u), vec2<u32>(62970u, 4294967295u));

var<private> global2: array<f32, 10>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> f32 {
    global2 = array<f32, 10>();
    let var_0 = Struct_5(Struct_2(Struct_1(u_input.a.x), select(!(!arg_2.c.yy), vec2<bool>(-227f >= arg_2.a.x, false), all(vec2<bool>(arg_2.c.x, false))), countOneBits(vec2<u32>(arg_0.x, arg_0.x)), 4294967295u), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], _wgslsmith_f_op_f32(round(-1528f)), all(arg_2.c.xzx))));
    global1 = array<vec2<u32>, 23>();
    return -142f;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(vec3<f32>(global2[_wgslsmith_index_u32(16330u, 10u)], _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(func_3(u_input.a, i32(-1i) * -2147483647i, Struct_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(67614u, 10u)], 1039f))), _wgslsmith_f_op_f32(f32(-1f) * -129f), vec4<bool>(true, true, true, true)), countOneBits(-2147483647i) >> (1u % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-720f - _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.a.x, 10u)])))), select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(select(true, true, true), all(vec2<bool>(false, false)), true, all(vec4<bool>(false, false, true, true))), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))), vec4<bool>(true, true, true, true), true));
    var var_1 = Struct_1(1u);
    var var_2 = vec2<i32>(i32(-1i) * -max(1i, -39154i), 21891i);
    let var_3 = Struct_1(~_wgslsmith_dot_vec2_u32(min(~global1[_wgslsmith_index_u32(0u, 23u)], u_input.a.yz), ~_wgslsmith_mod_vec2_u32(vec2<u32>(8436u, 1u), global1[_wgslsmith_index_u32(0u, 23u)])));
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1007f - -849f)));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1156f, _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(u_input.a.x, 10u)])), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_0.a, 10u)], -790f, 468f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(arg_0.a, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)]) + vec3<f32>(1390f, 1113f, global2[_wgslsmith_index_u32(1u, 10u)]))), select(any(vec2<bool>(true, true)), true, true))))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(49756u, 10u)], global2[_wgslsmith_index_u32(arg_0.a, 10u)], global2[_wgslsmith_index_u32(1u, 10u)])))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-289f, global2[_wgslsmith_index_u32(arg_0.a, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)]), vec3<f32>(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(43813u, 10u)], -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-973f))), 1212f, -1178f)));
    let var_1 = Struct_5(Struct_2(arg_0, vec2<bool>(false, true), vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 40369u), vec2<u32>(arg_1.x, arg_0.a)), arg_1.x), _wgslsmith_dot_vec2_u32((vec2<u32>(0u, arg_1.x) & global1[_wgslsmith_index_u32(arg_0.a, 23u)]) << (vec2<u32>(arg_0.a, 4294967295u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(min(global1[_wgslsmith_index_u32(arg_1.x, 23u)], vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(arg_1.x, 23u)], vec2<u32>(u_input.a.x, u_input.a.x))))), -339f);
    let var_2 = ~vec4<u32>(1u, ~u_input.a.x, 1u, select(~_wgslsmith_clamp_u32(arg_1.x, 7934u, 64262u), ~var_1.a.c.x, true));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(arg_0.a, var_2.x), ~arg_0.a), 10u)])), _wgslsmith_f_op_f32(f32(-1f) * -272f));
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-500f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-855f, var_1.b)) * 1566f) * _wgslsmith_f_op_f32(func_3(abs(vec4<u32>(arg_1.x, var_1.a.c.x, u_input.a.x, 74253u)), min(-3972i, 40200i), Struct_3(vec3<f32>(1829f, -1734f, -538f), var_0.x, vec4<bool>(false, true, true, var_1.a.b.x)), -53625i)))), 1730f));
    return arg_0.a;
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-201f)), -319f);
    let var_1 = vec2<i32>(-2147483647i, 81016i);
    return Struct_1(firstTrailingBit(func_4(func_2(), u_input.a)));
}

fn func_5(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: i32) -> Struct_4 {
    let var_0 = Struct_5(Struct_2(arg_0.a.a, vec2<bool>(true, true), vec2<u32>(0u, (47462u >> (1u % 32u)) ^ arg_0.a.d), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(firstTrailingBit(vec4<u32>(u_input.a.x, 16019u, arg_0.a.a.a, 50210u)) << (u_input.a % vec4<u32>(32u)), firstTrailingBit(arg_2), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.b, global2[_wgslsmith_index_u32(0u, 10u)]) - vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], arg_0.b, global2[_wgslsmith_index_u32(0u, 10u)])), global2[_wgslsmith_index_u32(0u, 10u)], !vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, false, arg_0.a.b.x)), _wgslsmith_dot_vec4_i32(-vec4<i32>(9350i, arg_1.x, arg_1.x, -1i), ~vec4<i32>(arg_2, -58217i, -10159i, arg_2))))));
    var var_1 = Struct_4(arg_0.a.a.a);
    global2 = array<f32, 10>();
    var var_2 = Struct_5(Struct_2(Struct_1(firstLeadingBit(_wgslsmith_div_u32(var_0.a.a.a, u_input.a.x))), arg_0.a.b, arg_0.a.c, min(~_wgslsmith_sub_u32(12907u, arg_0.a.a.a), ~_wgslsmith_clamp_u32(20868u, arg_0.a.d, 3795u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1642f))))));
    let var_3 = select(select(vec4<bool>(!var_0.a.b.x & !var_2.a.b.x, any(vec3<bool>(var_2.a.b.x, false, arg_0.a.b.x)), true || (arg_1.x > -2147483647i), false), select(vec4<bool>(any(vec2<bool>(false, var_2.a.b.x)), false, false, var_2.a.b.x && var_0.a.b.x), vec4<bool>(arg_0.a.b.x || false, var_2.a.b.x, !var_2.a.b.x, true), !select(vec4<bool>(false, false, false, arg_0.a.b.x), vec4<bool>(true, true, true, var_2.a.b.x), var_2.a.b.x)), vec4<bool>(select(false, var_0.a.b.x, true || arg_0.a.b.x), var_2.a.b.x, false, (var_1.a < u_input.a.x) == all(vec3<bool>(true, arg_0.a.b.x, var_0.a.b.x)))), select(!(!select(vec4<bool>(var_0.a.b.x, false, true, true), vec4<bool>(false, arg_0.a.b.x, var_0.a.b.x, false), vec4<bool>(var_0.a.b.x, arg_0.a.b.x, false, arg_0.a.b.x))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.a.b.x, true, false, arg_0.a.b.x), vec4<bool>(arg_0.a.b.x, var_2.a.b.x, var_2.a.b.x, var_0.a.b.x), false), !var_0.a.b.x), vec4<bool>(all(vec2<bool>(false, true)), true, !var_0.a.b.x, true), select(!var_2.a.b.x, select(false, false, var_2.a.b.x), var_0.a.b.x && true)), !(_wgslsmith_f_op_f32(f32(-1f) * -547f) > _wgslsmith_div_f32(var_2.b, arg_0.b))), !all(arg_0.a.b));
    return Struct_4(~reverseBits(~min(15845u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_5(Struct_2(func_1(vec3<bool>(true, true, true)), vec2<bool>(true, true), _wgslsmith_mod_vec2_u32(select(vec2<u32>(4294967295u, u_input.a.x), u_input.a.ww, true), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, 28524u))), ~(~u_input.a.x)), global2[_wgslsmith_index_u32(4294967295u, 10u)]), vec3<i32>(abs(_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(65743i, 11897i)))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-14703i, 2147483647i, 20638i), vec3<i32>(1i, 2147483647i, 0i)), i32(-1i) * -28688i) >> (4011u % 32u), 0i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 17593i, -10621i), vec3<i32>(_wgslsmith_sub_i32(-31672i, 1i), ~9861i, -89997i)), ~76086i));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a, 0u), 10u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-158f, -172f, global2[_wgslsmith_index_u32(func_5(Struct_5(Struct_2(Struct_1(u_input.a.x), vec2<bool>(false, false), vec2<u32>(12227u, var_0.a), u_input.a.x), 2111f), vec3<i32>(0i, -18358i, 1i), -1i).a, 10u)])), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 10u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1243f, global2[_wgslsmith_index_u32(35254u, 10u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec4<u32>(var_0.a, 58324u, 0u, 1u), 10916i, Struct_3(vec3<f32>(global2[_wgslsmith_index_u32(1u, 10u)], -1000f, -401f), global2[_wgslsmith_index_u32(var_0.a, 10u)], vec4<bool>(false, true, true, false)), 1i)), _wgslsmith_f_op_f32(f32(-1f) * -706f))))) - vec3<f32>(633f, global2[_wgslsmith_index_u32(var_0.a, 10u)], 344f));
    var var_3 = _wgslsmith_div_f32(-888f, _wgslsmith_f_op_f32(f32(-1f) * -666f));
    var var_4 = 1u;
    var_4 = abs(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(~u_input.a.x << (_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.a, var_0.a, u_input.a.x), 1u) % 32u), 23u)], _wgslsmith_clamp_vec2_u32(u_input.a.yw, reverseBits(u_input.a.xw), global1[_wgslsmith_index_u32(~(~u_input.a.x), 23u)])));
    var_0 = Struct_4(~4294967295u);
    var var_5 = _wgslsmith_f_op_vec2_f32(var_2.zx * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(var_2.xy, vec2<f32>(1699f, var_2.x))))) + var_2.yz))));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(func_2().a, 10u)], ~58181u << (~var_0.a % 32u), var_0.a);
}

