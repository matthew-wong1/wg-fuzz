struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5>;

var<private> global1: array<u32, 4> = array<u32, 4>(24878u, 0u, 4294967295u, 0u);

var<private> global2: array<vec2<i32>, 25>;

var<private> global3: array<u32, 12> = array<u32, 12>(19231u, 0u, 4294967295u, 14781u, 0u, 0u, 4294967295u, 3337u, 0u, 57810u, 0u, 0u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: bool) -> bool {
    var var_0 = vec4<u32>(0u, 18616u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, global3[_wgslsmith_index_u32(min(max(55024u, global3[_wgslsmith_index_u32(14280u, 12u)]), ~48486u), 12u)], ~countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], 4u)])), vec4<u32>(~74938u, 57155u & (89534u | u_input.a), 72728u, ~0u)), 12u)], 18609u ^ ~global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, global1[_wgslsmith_index_u32(43341u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)]), 4u)]);
    global1 = array<u32, 4>();
    global2 = array<vec2<i32>, 25>();
    let var_1 = global1[_wgslsmith_index_u32(1u, 4u)];
    global0 = array<vec2<u32>, 5>();
    return arg_3;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>) -> Struct_3 {
    let var_0 = select(vec4<bool>(true, all(vec2<bool>(true, true)), true, !any(vec2<bool>(true, true))), vec4<bool>(true & (true && all(vec3<bool>(false, true, true))), any(vec2<bool>(true, true)), true, -select(-38830i, -1i, false) != ~_wgslsmith_clamp_i32(-50861i, 0i, -17522i)), select(vec4<bool>(func_3(-vec3<i32>(-1i, 0i, 839i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-389f, 414f)), vec4<i32>(0i, 58414i, -21300i, -1i) << (vec4<u32>(arg_1.x, u_input.b.x, global1[_wgslsmith_index_u32(arg_0.x, 4u)], 51225u) % vec4<u32>(32u)), true), true, any(vec3<bool>(true, false, true)), all(vec2<bool>(true, true))), vec4<bool>(true, true, any(vec2<bool>(true, true)), any(vec2<bool>(true, false)) & true), any(vec3<bool>(true, false, func_3(vec3<i32>(-1i, 1i, -39148i), vec2<f32>(2469f, 1481f), vec4<i32>(2147483647i, -2147483647i, -1i, 0i), false)))));
    global3 = array<u32, 12>();
    let var_1 = vec3<f32>(-428f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1681f, 1f)), -1000f);
    global3 = array<u32, 12>();
    let var_2 = firstTrailingBit(_wgslsmith_mod_vec4_u32(~(~u_input.b), u_input.b));
    return Struct_3(all(select(select(var_0.wxw, vec3<bool>(false, var_0.x, true), var_0.zyx), select(select(var_0.xzz, vec3<bool>(var_0.x, true, true), vec3<bool>(true, false, true)), var_0.yzz, var_0.yyy), var_0.wwy)), var_1.x, Struct_1(all(select(var_0.zxz, !var_0.xxz, var_0.zxw))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = arg_0.c;
    let var_1 = Struct_3(any(arg_1), -1000f, Struct_1(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 4u)], 12u)], 4u)], 12u)], 1u) < ~(0u | u_input.b.x)));
    let var_2 = _wgslsmith_f_op_f32(-arg_0.b);
    var var_3 = global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(28971u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], 4u)], 12u)], 12u)]), ~u_input.a) & (~u_input.a << (~u_input.a % 32u)), _wgslsmith_mod_u32(4294967295u, max(global3[_wgslsmith_index_u32(29492u, 12u)], u_input.a))), 4u)], 12u)] & min(firstLeadingBit(select(_wgslsmith_dot_vec4_u32(vec4<u32>(38600u, 54318u, global3[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)]), vec4<u32>(4294967295u, 10450u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], 4u)], 12u)], 4u)], u_input.b.x)), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5813u, 12u)], 12u)], true)), firstLeadingBit(_wgslsmith_add_u32(select(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 12u)], false), 1u)));
    global0 = array<vec2<u32>, 5>();
    return select(!vec3<bool>(all(!vec3<bool>(arg_1.x, false, true)), arg_1.x, true), select(!select(!vec3<bool>(var_1.a, var_1.c.a, true), !vec3<bool>(arg_0.a, true, false), true), arg_1.zww, ~(~0u) <= global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(8088u, 4u)] << (4294967295u % 32u)), 4u)]), select(!(!arg_1.wwz), vec3<bool>(any(vec4<bool>(true, var_1.a, true, false)), _wgslsmith_f_op_f32(min(-1367f, arg_0.b)) != _wgslsmith_f_op_f32(trunc(var_1.b)), arg_1.x), arg_1.x));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_2 {
    global3 = array<u32, 12>();
    var var_0 = select(func_4(func_2(global0[_wgslsmith_index_u32(4294967295u, 5u)], u_input.b ^ ~u_input.b), vec4<bool>(true, !all(vec3<bool>(false, false, true)), true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(func_4(func_2(vec2<u32>(1u, u_input.a), u_input.b), vec4<bool>(true, true, true, true)).x || false, !(func_3(vec3<i32>(arg_0, -32509i, arg_0), vec2<f32>(arg_1, 2094f), vec4<i32>(2147483647i, arg_0, arg_0, 42396i), true) | func_3(vec3<i32>(arg_0, -2147483647i, 0i), vec2<f32>(arg_1, arg_1), vec4<i32>(arg_0, arg_0, -1i, 60815i), true)), (_wgslsmith_mod_u32(4294967295u, u_input.a) <= 4294967295u) && !all(vec2<bool>(false, false))));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-903f * -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1555f - arg_1)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -802f) - vec3<f32>(arg_1, arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -603f)))), !(!vec3<bool>(var_0.x, true, var_0.x)))))));
    var var_2 = !(!var_0.yx);
    var var_3 = ~(~(~1u));
    return Struct_2(func_2(vec2<u32>(global1[_wgslsmith_index_u32(firstLeadingBit(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22808u, 4u)], 4u)], global1[_wgslsmith_index_u32(92200u, 4u)])), 4u)], 107077u), select(abs(u_input.b) >> (u_input.b % vec4<u32>(32u)), ~u_input.b, vec4<bool>(false, false, var_0.x, any(vec4<bool>(true, true, false, false))))).c, _wgslsmith_f_op_f32(floor(-967f)), u_input.b, vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-3979i, arg_0), 36958i) & _wgslsmith_div_i32(abs(arg_0), arg_0), arg_0, arg_0, firstLeadingBit(~min(arg_0, -17419i))), Struct_1(!((var_2.x && false) | true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(countOneBits(-1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1182f)))) - 507f)));
    var var_1 = func_4(Struct_3(var_0.e.a, -706f, Struct_1(var_0.e.a)), !(!select(select(vec4<bool>(false, false, var_0.a.a, false), vec4<bool>(true, var_0.e.a, true, var_0.e.a), var_0.a.a), select(vec4<bool>(false, true, var_0.a.a, true), vec4<bool>(var_0.e.a, var_0.e.a, true, var_0.a.a), vec4<bool>(true, var_0.a.a, true, var_0.e.a)), !vec4<bool>(var_0.a.a, var_0.a.a, var_0.e.a, true))));
    var var_2 = var_0;
    var var_3 = var_0.d.x;
    global3 = array<u32, 12>();
    let var_4 = func_2(select(_wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(var_0.c), ~var_0.c), 5u)], min(vec2<u32>(u_input.a, var_2.c.x), ~vec2<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)]))), ~(~(u_input.b.xy | u_input.b.yw)), !func_4(Struct_3(var_1.x, var_2.b, Struct_1(var_2.e.a)), !vec4<bool>(true, var_0.e.a, var_0.a.a, false)).zx), u_input.b);
    var var_5 = countOneBits(_wgslsmith_add_vec2_u32(~u_input.b.wy, vec2<u32>(var_0.c.x, 74062u))) | vec2<u32>(_wgslsmith_mod_u32(0u, 68089u), _wgslsmith_div_u32(28476u, u_input.a << ((u_input.b.x ^ 0u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec3_i32(var_2.d.yyw, var_0.d.xxy)), ~1u);
}

