struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(27759u, 30726u, 32151u, 0u, 30596u, 4294967295u, 60441u, 1u, 112258u, 4294967295u);

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: array<f32, 30> = array<f32, 30>(-642f, 1000f, -1000f, 361f, 103f, 1495f, 142f, 1008f, 374f, 516f, 1000f, 1942f, -630f, 477f, 253f, -227f, -245f, -912f, 206f, 351f, -909f, -1624f, 1000f, 401f, -1030f, 693f, 1000f, -450f, -684f, -1160f);

var<private> global3: bool;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> u32 {
    let var_0 = Struct_2(~arg_0.a, arg_0.b, vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(global1.x, !arg_0.c.x, !arg_0.c.x)), false));
    global4 = Struct_1(global4.a && !all(vec2<bool>(true, var_0.d.x)));
    let var_1 = true;
    var var_2 = vec4<bool>(!select(select(!var_1, false, !var_1), !(!global4.a), !(!arg_0.c.x)), global4.a, arg_0.a.x >= ~_wgslsmith_dot_vec4_u32(~arg_0.a, vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 10u)], 4294967295u, 0u) | var_0.a), global4.a);
    var var_3 = vec2<i32>(1i << (_wgslsmith_div_u32(80451u >> (0u % 32u), ~u_input.a.x) % 32u), _wgslsmith_div_i32(6074i, -16278i));
    return ~4294967295u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_2(vec4<u32>(~_wgslsmith_clamp_u32(62456u, u_input.a.x, 6347u), abs(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 10u)], 25703u)), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(86444u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), _wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(643u, 10u)] << (global0[_wgslsmith_index_u32(22104u, 10u)] % 32u))) >> ((vec4<u32>(global0[_wgslsmith_index_u32(func_3(Struct_2(vec4<u32>(u_input.a.x, 1u, global0[_wgslsmith_index_u32(64208u, 10u)], 8957u), 0i, vec2<bool>(false, arg_0), vec2<bool>(false, false)), vec2<u32>(u_input.a.x, 6191u)), 10u)], ~global0[_wgslsmith_index_u32(u_input.a.x, 10u)], _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28410u, 10u)], 10u)], 53523u), vec3<u32>(global0[_wgslsmith_index_u32(21167u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 70787u)), 70210u) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(81629u, 63581u, u_input.a.x, 1u), ~vec4<u32>(0u, 71611u, u_input.a.x, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)), reverseBits(~20484i), select(!select(!global1.yy, vec2<bool>(true, global1.x), vec2<bool>(true, false)), select(select(!vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), !global1.xy), !(!vec2<bool>(global4.a, true)), all(!vec2<bool>(global4.a, arg_1.a))), any(select(vec4<bool>(true, true, false, global1.x), select(vec4<bool>(false, false, false, arg_1.a), vec4<bool>(false, arg_0, global4.a, false), vec4<bool>(global4.a, global1.x, global1.x, arg_1.a)), true))), global1.xz);
    let var_1 = global0[_wgslsmith_index_u32(~var_0.a.x, 10u)];
    var var_2 = Struct_1(false);
    global2 = array<f32, 30>();
    var var_3 = Struct_1(global4.a);
    return Struct_2(vec4<u32>(1u, var_0.a.x, 1u, 39771u) >> (~vec4<u32>(u_input.a.x, 0u, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 114174u, u_input.a.x, 26750u), var_0.a)) % vec4<u32>(32u)), 1i, var_0.c, vec2<bool>(!all(vec3<bool>(false, false, var_0.c.x)), 0u >= _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 10u)] >> (24691u % 32u), ~u_input.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32) -> vec2<u32> {
    var var_0 = firstTrailingBit(arg_0.a.wyz);
    global3 = arg_0.d.x;
    let var_1 = Struct_1(true);
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4366u ^ u_input.a.x, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(41901u, 10u)], 4294967295u, 0u)), ~0u) | firstTrailingBit(~(u_input.a.x ^ 1u)), 14199u, 0u);
    global0 = array<u32, 10>();
    return countOneBits(~vec2<u32>(16360u, 4294967295u));
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_2 {
    global1 = !(!select(select(vec3<bool>(arg_0, false, global1.x), vec3<bool>(global1.x, true, true), !vec3<bool>(false, false, arg_1)), select(!vec3<bool>(false, false, global4.a), vec3<bool>(true, global1.x, global1.x), vec3<bool>(global4.a, true, arg_0)), !select(vec3<bool>(false, true, arg_0), vec3<bool>(global4.a, false, false), arg_1)));
    let var_0 = arg_0;
    var var_1 = _wgslsmith_div_f32(889f, -353f);
    var var_2 = (min(~vec2<u32>(26488u, 67947u) | vec2<u32>(u_input.a.x, u_input.a.x), u_input.a) | vec2<u32>(_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(u_input.a.x, 10u)], ~u_input.a.x), ~_wgslsmith_div_u32(0u, u_input.a.x))) >> (select(func_4(func_2(any(vec2<bool>(true, true)), Struct_1(true), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 30u)])), ~firstLeadingBit(vec2<i32>(2147483647i, -31403i)), _wgslsmith_f_op_f32(ceil(2596f))), vec2<u32>(firstTrailingBit(~u_input.a.x), func_2(!arg_1, Struct_1(global1.x), _wgslsmith_f_op_f32(855f + global2[_wgslsmith_index_u32(0u, 30u)])).a.x), vec2<bool>(true, max(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)]) < 4294967295u)) % vec2<u32>(32u));
    let var_3 = true;
    return Struct_2(reverseBits(vec4<u32>(select(u_input.a.x, select(45086u, u_input.a.x, arg_1), var_3), 1u, abs(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(49191u, 10u)], 48434u)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(62219u, var_2.x, 1u)), firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x, 14994u))))), _wgslsmith_div_i32(1i, ~(-5887i)), vec2<bool>(any(vec2<bool>(all(vec4<bool>(var_0, true, var_0, false)), !arg_1)), global4.a), global1.xx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_u32(0u, ~1u);
    let var_1 = func_1(global1.x, !any(vec2<bool>(!global1.x, true)));
    let var_2 = var_1;
    let var_3 = reverseBits(_wgslsmith_clamp_i32(1i, reverseBits(52978i & (0i >> (u_input.a.x % 32u))), ~(-2147483647i)));
    let var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.a.x, 30u)] * global2[_wgslsmith_index_u32(101764u, 30u)])), _wgslsmith_f_op_f32(627f - -952f), -1146f))));
    var var_5 = !vec3<bool>(any(var_2.d), var_1.d.x, any(select(vec2<bool>(true, true), !var_2.d, global4.a)));
    global2 = array<f32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(var_2.a.x)), _wgslsmith_f_op_f32(step(2123f, var_4.x)));
}

