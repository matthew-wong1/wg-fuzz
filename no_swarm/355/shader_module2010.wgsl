struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false));

var<private> global2: array<vec3<bool>, 6>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_2(1477f, _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, ~u_input.b, abs(u_input.b)), min(select(vec3<u32>(u_input.b, u_input.b, 35658u), vec3<u32>(u_input.b, 4294967295u, u_input.b), all(global1[_wgslsmith_index_u32(25597u, 25u)])), vec3<u32>(4294967295u, u_input.b | u_input.b, 1u))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)));
    let var_2 = ~vec2<i32>(u_input.d, 85455i);
    global2 = array<vec3<bool>, 6>();
    let var_3 = Struct_3(global1[_wgslsmith_index_u32(u_input.b, 25u)], Struct_1(~(~(-u_input.a))), ~(~(~vec4<u32>(1u, 4294967295u, var_0.b.x, 105101u) & max(vec4<u32>(var_0.b.x, 1u, 4294967295u, var_0.b.x), vec4<u32>(26594u, u_input.b, 70803u, 42047u)))));
    return var_1;
}

fn func_2(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(func_3(362f));
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(all(!(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 25u)], true, global0[_wgslsmith_index_u32(44581u, 25u)], false))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(27931u, u_input.b, 86243u, u_input.b), vec4<u32>(4294967295u, 40733u, 37316u, arg_0.b.x)), 25u)] & global0[_wgslsmith_index_u32(~(arg_0.b.x << (31514u % 32u)), 25u)]), global0[_wgslsmith_index_u32(1975u, 25u)]);
    let var_2 = Struct_3(vec4<bool>(_wgslsmith_f_op_f32(-arg_0.a) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1248f * 904f)), true, arg_0.b.x > u_input.b, (2176f == _wgslsmith_f_op_f32(-arg_0.a)) | true), Struct_1(u_input.a), vec4<u32>(~u_input.b, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(arg_0.b.xy, arg_0.b.yx) ^ ~u_input.b, arg_0.b.x, ~arg_0.b.x), arg_0.b.x, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_0.b.x, arg_0.b.x)), arg_0.b.zz)));
    let var_3 = Struct_2(arg_0.a, arg_0.b);
    global1 = array<vec4<bool>, 25>();
    return ~firstLeadingBit(vec3<i32>(var_2.b.a.x, -2147483647i, var_2.b.a.x));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = -vec2<i32>(-(~reverseBits(-2147483647i)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.c, u_input.a.x), func_2(Struct_2(-906f, vec3<u32>(4294967295u, 4294967295u, u_input.b))))));
    let var_1 = -1717f;
    let var_2 = u_input.b;
    global1 = array<vec4<bool>, 25>();
    var var_3 = false;
    return _wgslsmith_f_op_f32(var_1 * 1868f);
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1556f)) * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(-681f, 390f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1340f - 1179f)))));
    let var_1 = Struct_1(select(vec2<i32>(-1i) * -u_input.a, _wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.d << (u_input.b % 32u)), ~vec2<i32>(-18489i, u_input.c)), select(!select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 25u)], arg_0), vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 25u)], arg_0), arg_0), vec2<bool>(arg_0, any(vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 25u)], arg_0, arg_0, global0[_wgslsmith_index_u32(56897u, 25u)]))), vec2<bool>(arg_0, all(vec2<bool>(true, false))))));
    let var_2 = Struct_1(~abs(_wgslsmith_clamp_vec2_i32(var_1.a, var_1.a, var_1.a) | max(u_input.a, var_1.a)));
    global2 = array<vec3<bool>, 6>();
    global0 = array<bool, 25>();
    return global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_1, 0u, u_input.b), vec3<u32>(12045u, 1u, 1u), global2[_wgslsmith_index_u32(u_input.b, 6u)]), _wgslsmith_add_vec3_u32(vec3<u32>(77594u, arg_1, 1u), max(vec3<u32>(u_input.b, arg_1, 1u), vec3<u32>(1u, u_input.b, 75463u))))), 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.b, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstLeadingBit(~u_input.b), 22179u), u_input.b, u_input.b));
    var var_1 = Struct_1(~vec2<i32>(-(u_input.c | u_input.c), ~1i));
    var var_2 = Struct_3(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(52009u, 25u)] & false, true == global0[_wgslsmith_index_u32(var_0.x, 25u)], false), global1[_wgslsmith_index_u32(abs(1u), 25u)], global1[_wgslsmith_index_u32(u_input.b, 25u)]), vec4<bool>(!global0[_wgslsmith_index_u32(var_0.x, 25u)] && true, true, true, true), vec4<bool>(!all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 25u)], true)), func_4(global0[_wgslsmith_index_u32(max(u_input.b, 4294967295u), 25u)], var_0.x ^ 4435u, _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(u_input.b, 25u)], true, -53768i))), global0[_wgslsmith_index_u32(68799u, 25u)], !select(global0[_wgslsmith_index_u32(16139u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], true))), Struct_1(~var_1.a), _wgslsmith_add_vec4_u32(vec4<u32>(~firstTrailingBit(var_0.x), u_input.b, 4294967295u, var_0.x), vec4<u32>(abs(u_input.b) & _wgslsmith_dot_vec3_u32(vec3<u32>(59468u, 1u, var_0.x), vec3<u32>(u_input.b, u_input.b, u_input.b)), ~(~var_0.x), max(560u, 78090u & var_0.x), 1u)));
    let var_3 = Struct_3(vec4<bool>(true, true, false, true || global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(50989u, u_input.b), 25u)]), var_2.b, vec4<u32>(_wgslsmith_sub_u32(reverseBits(0u), 0u), 64745u, 34423u, u_input.b >> (4294967295u % 32u)));
    let var_4 = !select(true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_3.c.x, _wgslsmith_dot_vec2_u32(reverseBits(var_3.c.ww), vec2<u32>(1u, var_0.x))), 25u)], true);
    var var_5 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(378f + _wgslsmith_f_op_f32(1474f + -1619f))))), ~((vec3<u32>(u_input.b, u_input.b, 0u) ^ (var_2.c.wxx | var_3.c.zyy)) << (vec3<u32>(var_2.c.x | 4294967295u, var_0.x, ~u_input.b) % vec3<u32>(32u))));
    global0 = array<bool, 25>();
    let var_6 = var_2.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_2.b.a.x, 63258i, ~firstTrailingBit(u_input.a.x) >> ((1u >> (1u % 32u)) % 32u), _wgslsmith_div_i32(var_3.b.a.x >> (_wgslsmith_sub_u32(15534u, u_input.b) % 32u), i32(-1i) * -var_3.b.a.x)), -1270f, ~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(15612u, u_input.b)), var_2.c.zw | var_3.c.ww) >> ((~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.x, 4294967295u, u_input.b), vec3<u32>(var_3.c.x, var_0.x, 4294967295u)) ^ ~u_input.b) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-var_5.a)))) * _wgslsmith_f_op_f32(1014f * _wgslsmith_f_op_f32(var_5.a - _wgslsmith_div_f32(var_5.a, -1369f)))));
}

