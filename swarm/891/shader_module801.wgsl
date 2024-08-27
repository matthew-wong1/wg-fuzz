struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(1149f, -1000f, -589f, 863f, -1735f, -1559f, -465f, -1513f, 1000f, 684f, -838f, 629f, -831f, -1877f, 1227f, -1000f);

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec2<bool>(true, true)), true), Struct_2(Struct_1(vec2<bool>(false, false)), true), Struct_2(Struct_1(vec2<bool>(true, true)), false), Struct_2(Struct_1(vec2<bool>(false, false)), true), Struct_2(Struct_1(vec2<bool>(true, false)), true), Struct_2(Struct_1(vec2<bool>(true, true)), true), Struct_2(Struct_1(vec2<bool>(false, false)), true), Struct_2(Struct_1(vec2<bool>(false, true)), true), Struct_2(Struct_1(vec2<bool>(false, true)), true), Struct_2(Struct_1(vec2<bool>(false, true)), true), Struct_2(Struct_1(vec2<bool>(true, true)), true), Struct_2(Struct_1(vec2<bool>(false, false)), true), Struct_2(Struct_1(vec2<bool>(false, false)), true), Struct_2(Struct_1(vec2<bool>(false, false)), false), Struct_2(Struct_1(vec2<bool>(false, false)), false), Struct_2(Struct_1(vec2<bool>(false, false)), false), Struct_2(Struct_1(vec2<bool>(false, false)), true), Struct_2(Struct_1(vec2<bool>(true, false)), true), Struct_2(Struct_1(vec2<bool>(false, false)), true), Struct_2(Struct_1(vec2<bool>(true, true)), false), Struct_2(Struct_1(vec2<bool>(true, false)), false), Struct_2(Struct_1(vec2<bool>(true, false)), false), Struct_2(Struct_1(vec2<bool>(true, false)), true), Struct_2(Struct_1(vec2<bool>(true, false)), true), Struct_2(Struct_1(vec2<bool>(true, false)), true), Struct_2(Struct_1(vec2<bool>(false, true)), true), Struct_2(Struct_1(vec2<bool>(false, true)), true), Struct_2(Struct_1(vec2<bool>(true, false)), true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> u32 {
    global0 = array<f32, 16>();
    global1 = array<Struct_2, 28>();
    var var_0 = arg_0.a;
    let var_1 = ~19872u;
    var_0 = Struct_2(Struct_1(select(select(select(var_0.a.a, vec2<bool>(var_0.b, true), var_0.a.a), vec2<bool>(true, var_0.a.a.x), arg_0.a.a.a), vec2<bool>(true, true), !vec2<bool>(false, var_0.a.a.x))), arg_2.a.x);
    return 4294967295u;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(u_input.b.x >> (u_input.c.x % 32u), ~u_input.b.x), ~(~(~u_input.c.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c), u_input.c), firstLeadingBit(u_input.b))), ~(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 35221u, u_input.b.x))) >> (select(countOneBits(vec3<u32>(u_input.b.x, 4294967295u, 0u)), vec3<u32>(u_input.c.x, 4294967295u, 0u) << (vec3<u32>(44509u, 0u, 1u) % vec3<u32>(32u)), true) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(max(func_3(Struct_3(Struct_2(Struct_1(vec2<bool>(arg_0, false)), arg_0)), ~firstLeadingBit(u_input.d), Struct_1(vec2<bool>(true, true))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 0u, u_input.b.x, var_0) | vec4<u32>(u_input.c.x, u_input.b.x, u_input.c.x, u_input.b.x), vec4<u32>(u_input.c.x, 0u, 4294967295u, var_0)), ~var_0 >> ((var_0 | var_0) % 32u), 17431u)), 16u)] + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(1032u, 16u)])))));
    let var_2 = u_input.c | ~vec2<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.c), ~vec2<u32>(106307u, u_input.c.x)), ~_wgslsmith_mult_u32(87618u, 44595u));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(321f)) - -1213f), -731f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1186f, global0[_wgslsmith_index_u32(1u, 16u)], var_1, var_1) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 742f, var_1, -952f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_2.x, 16u)], global0[_wgslsmith_index_u32(var_2.x, 16u)], global0[_wgslsmith_index_u32(var_0, 16u)], 512f) * vec4<f32>(var_1, -604f, global0[_wgslsmith_index_u32(var_2.x, 16u)], global0[_wgslsmith_index_u32(var_2.x, 16u)]))))))));
    let var_4 = var_3;
    return Struct_1(vec2<bool>(arg_0, all(!vec2<bool>(arg_0, arg_0))));
}

fn func_1() -> bool {
    let var_0 = func_2(!all(vec3<bool>(true, true, 1i <= u_input.a)));
    var var_1 = 1i;
    var var_2 = select(~(~u_input.a), _wgslsmith_clamp_i32(44968i, 0i, u_input.d), any(!vec3<bool>(any(vec3<bool>(true, var_0.a.x, false)), !var_0.a.x, all(vec3<bool>(false, var_0.a.x, var_0.a.x)))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-278f - global0[_wgslsmith_index_u32(u_input.c.x, 16u)]))) * -1089f)), global0[_wgslsmith_index_u32(4294967295u, 16u)]);
    var var_4 = Struct_2(func_2(var_3.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), var_0.a.x);
    return all(!vec3<bool>(!(var_4.b && var_0.a.x), false, true));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: u32, arg_3: u32) -> Struct_2 {
    global0 = array<f32, 16>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1684f, global0[_wgslsmith_index_u32(1u, 16u)], true)) * _wgslsmith_f_op_f32(round(arg_1.x))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(856f * global0[_wgslsmith_index_u32(1u, 16u)])), _wgslsmith_f_op_f32(select(-664f, 2063f, false)), select(arg_0.x, false, false) || arg_0.x)), _wgslsmith_f_op_f32(-139f - global0[_wgslsmith_index_u32(~20475u, 16u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(483f, 1503f))))));
    var var_2 = global1[_wgslsmith_index_u32(~arg_2, 28u)];
    let var_3 = global1[_wgslsmith_index_u32(~4294967295u, 28u)];
    return Struct_2(Struct_1(!(!select(arg_0, vec2<bool>(true, var_2.b), vec2<bool>(true, false)))), !(!(var_2.a.a.x & false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 16>();
    global1 = array<Struct_2, 28>();
    var var_0 = Struct_1(select(vec2<bool>(false, _wgslsmith_div_i32(u_input.e, u_input.d) < _wgslsmith_mod_i32(18142i, 2147483647i)), select(vec2<bool>(all(vec2<bool>(true, false)), 0u > u_input.c.x), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)));
    var var_1 = func_4(select(var_0.a, select(select(!var_0.a, select(vec2<bool>(false, false), var_0.a, var_0.a), vec2<bool>(var_0.a.x, var_0.a.x)), var_0.a, func_1() == false), func_2(!func_1()).a), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1060f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-154f)))))), abs(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_mult_u32(68460u, u_input.c.x), 4294967295u))), ~u_input.c.x);
    var_0 = Struct_1(vec2<bool>(!var_1.a.a.x, true || var_1.b));
    var_0 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 16u)] * global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_clamp_u32(1u, 98171u, 0u)), 16u)]), i32(-1i) * -countOneBits(-u_input.e));
}

