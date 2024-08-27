struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(9184i, -29883i, i32(-2147483648), 2147483647i, i32(-2147483648));

var<private> global1: array<vec4<u32>, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec2<u32> {
    var var_0 = vec3<u32>(u_input.c, select((u_input.c << (1u % 32u)) >> (min(0u, _wgslsmith_div_u32(69729u, u_input.c)) % 32u), countOneBits(select(arg_0.b.x, u_input.c, arg_0.a.x)), all(select(vec3<bool>(arg_0.a.x, arg_0.a.x, true), !vec3<bool>(true, arg_0.a.x, arg_0.a.x), arg_0.a.x & true))), arg_0.b.x);
    let var_1 = ~u_input.d;
    let var_2 = ~arg_0.b;
    var_0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(31662u, 7699u), _wgslsmith_mod_u32(82978u, var_2.x)), max(1u, _wgslsmith_mod_u32(var_2.x, 65396u))), _wgslsmith_clamp_vec3_u32(max(~vec3<u32>(130541u, u_input.c, 4294967295u), ~vec3<u32>(1u, 18477u, 22507u)), abs(countOneBits(vec3<u32>(arg_0.b.x, 27389u, 4294967295u))), _wgslsmith_mod_vec3_u32(vec3<u32>(30667u, var_0.x, 1u) >> (vec3<u32>(arg_0.b.x, 1u, arg_0.b.x) % vec3<u32>(32u)), select(vec3<u32>(4294967295u, u_input.d, 10594u), vec3<u32>(4294967295u, var_1, var_2.x), vec3<bool>(arg_0.a.x, false, false)))));
    global1 = array<vec4<u32>, 6>();
    return firstLeadingBit(vec2<u32>(var_1 & _wgslsmith_add_u32(~arg_0.b.x, arg_0.b.x), firstLeadingBit(u_input.c)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(~(~vec2<u32>(0u, u_input.c)), firstLeadingBit(func_3(arg_1.a, -12720i))), reverseBits(~(~countOneBits(arg_1.a.b))));
    global1 = array<vec4<u32>, 6>();
    let var_1 = !arg_1.a.a.yww;
    var var_2 = Struct_2(Struct_1(vec4<bool>(arg_1.a.a.x, false, !arg_1.a.a.x, all(vec2<bool>(true, true))), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 13922u), var_0)), -619f);
    let var_3 = _wgslsmith_div_i32(-30089i, _wgslsmith_mod_i32(-u_input.b.x, min(-global0[_wgslsmith_index_u32(var_0.x, 5u)], 0i)));
    return arg_1.a.b.x;
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    global1 = array<vec4<u32>, 6>();
    let var_0 = Struct_1(select(vec4<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true)), true, true, (-37316i ^ u_input.a) > ~(-71158i)), vec4<bool>(!any(vec2<bool>(true, true)), true, any(vec4<bool>(true, true, true, true)), !any(vec4<bool>(true, false, false, true))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), vec2<u32>(firstLeadingBit(u_input.c) >> (u_input.c % 32u), firstTrailingBit(66123u)) | _wgslsmith_div_vec2_u32(vec2<u32>(~1u, _wgslsmith_mod_u32(u_input.c, 23409u)), vec2<u32>(u_input.c, 2926u) | vec2<u32>(u_input.d, u_input.d)));
    let var_1 = vec3<bool>(any(!var_0.a.yz), var_0.a.x, (_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(424f, -486f)), -626f) >= 1630f) || true);
    let var_2 = -485f;
    let var_3 = ~countOneBits((~u_input.b.ww | abs(arg_0)) | -(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 5u)], -2147483647i)));
    return Struct_1(var_0.a, ~var_0.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global1 = array<vec4<u32>, 6>();
    global0 = array<i32, 5>();
    let var_0 = 1u;
    var var_1 = arg_2;
    let var_2 = func_4(min(u_input.b.ww, (vec2<i32>(u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 5u)]) ^ arg_0) >> ((arg_2.a.b | arg_2.a.b) % vec2<u32>(32u))) << (firstTrailingBit(vec2<u32>(func_2(vec2<i32>(global0[_wgslsmith_index_u32(11343u, 5u)], global0[_wgslsmith_index_u32(6759u, 5u)]), arg_2), 1u)) % vec2<u32>(32u)));
    return ~select(_wgslsmith_mod_u32(~1u, firstLeadingBit(1u)), 4294967295u, any(arg_3.a.zw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(vec4<u32>(~u_input.d, ~37614u, u_input.d, func_1(_wgslsmith_clamp_vec2_i32(u_input.e.zy, u_input.e.wz, vec2<i32>(-3235i, -11065i)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(1u, 4476u)), -240f), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, u_input.c)))), vec4<u32>(min(0u | u_input.d, 12061u), 45430u, ~_wgslsmith_sub_u32(u_input.d, u_input.c), min(u_input.c, firstTrailingBit(u_input.c))), !vec4<bool>(all(vec3<bool>(false, true, true)), true, true, true));
    let var_1 = func_4(vec2<i32>(-1i, u_input.b.x));
    var var_2 = true;
    global1 = array<vec4<u32>, 6>();
    global0 = array<i32, 5>();
    global1 = array<vec4<u32>, 6>();
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-330f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1068f), -474f), var_1.a.x && var_1.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 209f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -1996f)) * 925f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-114f, -191f, 237f, 678f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(365f, -1019f, 334f, -220f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(145f, 1000f, 778f, -1000f), vec4<f32>(-901f, 358f, -502f, 905f), var_1.a)))), !any(var_1.a.zyw) && var_1.a.x)), u_input.d, ~min(31771i, (global0[_wgslsmith_index_u32(26833u, 5u)] ^ global0[_wgslsmith_index_u32(1u, 5u)]) ^ max(global0[_wgslsmith_index_u32(var_0.x, 5u)], u_input.a)), _wgslsmith_dot_vec2_i32(-firstLeadingBit(u_input.b.wy), vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(func_2(vec2<i32>(2147483647i, -1i), Struct_2(Struct_1(var_1.a, var_0.yw), 130f)), 5u)])) ^ _wgslsmith_div_i32(-global0[_wgslsmith_index_u32(~u_input.d, 5u)], ~1i));
}

