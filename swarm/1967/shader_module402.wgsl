struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(i32(-2147483648), 678f, 74354u, false, 4294967295u));

var<private> global2: Struct_1 = Struct_1(2147483647i, 1618f, 57083u, false, 57228u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = select(select(!(!vec3<bool>(false, global0.d, false)), vec3<bool>(global2.d, false, true & !global0.d), false), vec3<bool>(!all(vec2<bool>(true, global2.d)) | !all(vec3<bool>(false, false, global0.d)), false, true), vec3<bool>(!((global2.b < global2.b) || select(global2.d, arg_0.d, arg_0.d)), global0.d, all(select(vec3<bool>(false, global2.d, true), !vec3<bool>(true, global2.d, false), !global0.d))));
    var var_1 = i32(-1i) * -global0.a;
    let var_2 = Struct_2(Struct_1(_wgslsmith_mult_i32(-u_input.a.x, i32(-1i) * -7501i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b))), ~global2.c, !arg_0.d, global0.e << (reverseBits(global2.e ^ 11404u) % 32u)), -32889i & _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.a << (vec3<u32>(1u, arg_0.e, arg_0.c) % vec3<u32>(32u))), vec3<i32>(global0.a & global2.a, _wgslsmith_clamp_i32(global2.a, arg_0.a, u_input.a.x), arg_0.a)), ~abs(abs(vec4<u32>(4467u, 0u, 3611u, global0.c) << (vec4<u32>(u_input.e, u_input.e, 4294967295u, global0.c) % vec4<u32>(32u)))), true);
    let var_3 = global1[_wgslsmith_index_u32(26161u, 1u)];
    let var_4 = select(!(!(!select(vec4<bool>(var_0.x, global0.d, false, false), vec4<bool>(var_2.d, arg_0.d, arg_0.d, global2.d), false))), vec4<bool>(!(1i <= var_3.a) || var_2.a.d, !any(!vec4<bool>(true, var_3.d, false, global2.d)), false, var_0.x), vec4<bool>(arg_0.d, var_2.a.d, true, !(!(-420f <= global2.b))));
    return all(!var_4.zwy);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = -23188i;
    var_0 = reverseBits(i32(-1i) * -8976i);
    return vec3<bool>(!arg_0, !((any(vec2<bool>(true, global2.d)) || true) || global2.d), global0.d);
}

fn func_2() -> u32 {
    var var_0 = select(vec4<bool>(global0.d, global0.b >= -348f, global0.d, global2.d), select(vec4<bool>(global2.d, select(true, true, false), select(true, global2.d, global2.d) | !global0.d, true), !(!(!vec4<bool>(true, true, true, global0.d))), vec4<bool>(global0.d, global0.d != (global0.a != 2147483647i), !global0.d, !(global2.b < 393f))), !any(!(!vec2<bool>(true, global2.d))));
    global2 = Struct_1(-1i & u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -483f), global0.e, true || all(func_4(func_3(global1[_wgslsmith_index_u32(global0.c, 1u)]), Struct_2(Struct_1(global2.a, 151f, 51034u, true, 73314u), 66946i, vec4<u32>(global2.e, 0u, 4294967295u, 1u), global0.d))), u_input.e | global0.c);
    var_0 = vec4<bool>(all(vec3<bool>(func_4(global2.a > 46960i, Struct_2(Struct_1(2147483647i, global0.b, 29262u, false, global0.e), 1i, vec4<u32>(0u, 0u, u_input.e, 41329u), global2.d)).x, any(var_0.yzy), true)), all(select(select(select(vec4<bool>(var_0.x, true, global2.d, false), vec4<bool>(global2.d, global0.d, false, var_0.x), false), !vec4<bool>(false, global2.d, false, var_0.x), global0.d), vec4<bool>(all(var_0.xx), true, false, true), vec4<bool>(any(vec3<bool>(true, global2.d, true)), true, u_input.e < global0.c, any(vec4<bool>(global0.d, var_0.x, global0.d, true))))), !func_4(false, Struct_2(global1[_wgslsmith_index_u32(u_input.e << (global0.c % 32u), 1u)], i32(-1i) * -4854i, ~vec4<u32>(0u, u_input.e, u_input.e, global0.c), true)).x, global2.d);
    var var_1 = global1[_wgslsmith_index_u32(~0u, 1u)];
    let var_2 = var_0.x;
    return ~(~_wgslsmith_div_u32(~4294967295u, ~global2.c)) | max(u_input.e, _wgslsmith_mult_u32(4294967295u, ~(~0u)));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(max(vec3<u32>(global2.e, 6853u, 0u), vec3<u32>(u_input.e, 4294967295u, u_input.e))), vec3<u32>(~33691u, ~global0.e, select(u_input.e, _wgslsmith_mult_u32(55697u, u_input.e), global2.d))), 1u)], -global2.a, reverseBits(firstLeadingBit(~vec4<u32>(u_input.e, u_input.e, 71759u, 4294967295u)) ^ vec4<u32>(min(0u, 51662u), abs(4294967295u), u_input.e | u_input.e, firstTrailingBit(0u))), global2.d);
    let var_1 = vec4<u32>(func_2(), global2.e, var_0.a.c, 0u);
    var var_2 = !vec3<bool>(false, any(!(!vec3<bool>(global2.d, false, var_0.a.d))), func_4(true, Struct_2(Struct_1(var_0.b, 556f, 19243u, true, 54657u), global2.a, ~var_0.c, func_4(global2.d, var_0).x)).x);
    var_2 = !vec3<bool>(global2.d, true, true);
    var_2 = func_4(true, Struct_2(global1[_wgslsmith_index_u32((countOneBits(global2.c) << (32237u % 32u)) & ~(~15814u), 1u)], u_input.a.x, var_1, global0.d));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c;
    var var_1 = abs(-select(-(vec4<i32>(0i, -43373i, -34491i, 10034i) | vec4<i32>(7175i, -1i, -6579i, global0.a)), countOneBits(reverseBits(vec4<i32>(global2.a, global0.a, 2147483647i, u_input.c))), false));
    let var_2 = Struct_2(Struct_1(abs(abs(4202i)), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_dot_vec2_u32(~(vec2<u32>(15165u, u_input.e) << (vec2<u32>(u_input.e, 1u) % vec2<u32>(32u))), vec2<u32>(0u, u_input.e)), true, func_1(vec2<f32>(_wgslsmith_f_op_f32(max(-1130f, -222f)), _wgslsmith_f_op_f32(-global0.b)))), -_wgslsmith_dot_vec3_i32(var_1.wyw, vec3<i32>(global0.a >> (global0.e % 32u), 1i, max(1i, var_1.x))), vec4<u32>(_wgslsmith_mult_u32(max(1u, ~1u), u_input.e), 0u >> (firstTrailingBit(u_input.e >> (u_input.e % 32u)) % 32u), u_input.e, max(1u, _wgslsmith_add_u32(~86839u, max(1u, 0u)))), _wgslsmith_div_f32(global2.b, global2.b) >= -404f);
    let var_3 = Struct_1(var_2.a.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -636f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b))))), 4294967295u, (countOneBits(var_1.x) & _wgslsmith_clamp_i32(-18814i, global2.a, ~2147483647i)) == (var_2.a.a << (global0.c % 32u)), ~0u);
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(~vec4<i32>(1i, 2147483647i, u_input.a.x, global0.a) << (var_2.c % vec4<u32>(32u))), var_4.c, ~var_2.a.c, global0.a);
}

