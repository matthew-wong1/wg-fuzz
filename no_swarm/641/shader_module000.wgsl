struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(26966u, 45003u, 0u, 1u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(!any(vec2<bool>(true, true)), 1i << (~_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a >> (vec4<u32>(global0.x, 0u, u_input.b, global0.x) % vec4<u32>(32u))) % 32u), 1000f);
    global0 = vec4<u32>(~global0.x, 0u, reverseBits(u_input.b & 1u), abs(_wgslsmith_add_u32(32690u, countOneBits(86407u))));
    global0 = ~(u_input.a >> (((u_input.a | _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, global0.x, 1u, 0u), vec4<u32>(global0.x, u_input.b, u_input.b, 55846u))) | u_input.a) % vec4<u32>(32u)));
    let var_1 = firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(abs(u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a.xwy, u_input.a.zww) ^ ~u_input.a.x), 4294967295u));
    let var_2 = _wgslsmith_f_op_f32(-var_0.c);
    return Struct_1(~firstLeadingBit(~u_input.b) == u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-15414i, ~(var_0.b >> (var_1.x % 32u)), ~firstLeadingBit(-2147483647i), var_0.b), countOneBits(select(vec4<i32>(var_0.b, -1i, var_0.b, -9521i), vec4<i32>(var_0.b, var_0.b, -48266i, var_0.b), var_0.a) | vec4<i32>(-5619i, var_0.b, 0i, -2147483647i))), var_2);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global0 = vec4<u32>(~(~48331u), reverseBits(~117675u), u_input.b, global0.x);
    var var_0 = func_2();
    let var_1 = -2147483647i;
    let var_2 = var_0.b;
    var_0 = arg_2;
    return arg_3.c;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = 4294967295u;
    var_1 = 5621u;
    var_1 = ~(~u_input.b);
    let var_2 = Struct_1(!arg_0, arg_1.b, var_0.c);
    return var_0;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = func_4(all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), !all(vec3<bool>(false, true, false)))), func_2(), Struct_1(any(vec2<bool>(any(vec3<bool>(true, true, true)), true)), -(-53515i << (1u % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -2017f)), Struct_1(true, ~0i, _wgslsmith_f_op_f32(func_3(func_2(), vec4<bool>(true, false, true, 43904u <= global0.x), Struct_1(true, -1i, 1000f), Struct_1(true, ~(-2147483647i), 2464f)))));
    var_0 = func_4(all(vec3<bool>(var_0.a, !(!var_0.a), all(select(vec4<bool>(true, var_0.a, var_0.a, true), vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(true, var_0.a, var_0.a, true))))), func_4(!var_0.a, Struct_1(true, var_0.b, 277f), Struct_1(var_0.a, _wgslsmith_div_i32(-1104i, var_0.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -919f)))), Struct_1(firstLeadingBit(var_0.b) >= var_0.b, ~var_0.b, var_0.c)), func_4(true & all(!vec3<bool>(true, true, var_0.a)), func_2(), func_4(var_0.a || false, func_2(), Struct_1(true, var_0.b, _wgslsmith_div_f32(var_0.c, var_0.c)), func_2()), Struct_1(_wgslsmith_div_f32(var_0.c, 446f) == _wgslsmith_f_op_f32(-var_0.c), reverseBits(var_0.b >> (arg_0.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_0.c)))), func_2());
    var var_1 = vec3<i32>(1i, var_0.b, var_0.b);
    var_0 = func_4(false, Struct_1(true, func_2().b >> (1u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1206f * -332f)))), Struct_1(func_2().a, func_4(!any(vec2<bool>(var_0.a, true)), func_4(all(vec3<bool>(var_0.a, false, false)), Struct_1(true, var_0.b, var_0.c), func_4(true, Struct_1(true, -5875i, var_0.c), Struct_1(false, var_1.x, var_0.c), Struct_1(true, var_1.x, var_0.c)), Struct_1(var_0.a, 508i, var_0.c)), Struct_1(var_0.a, -1i, _wgslsmith_f_op_f32(268f * var_0.c)), Struct_1(func_2().a, 1i, -1490f)).b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1812f))), -109f, var_0.a))), func_4(var_0.a, func_4(var_0.a, func_4(true, Struct_1(true, -64912i, -1042f), func_4(var_0.a, Struct_1(var_0.a, 50481i, 1314f), Struct_1(true, 2147483647i, -1222f), Struct_1(false, -2147483647i, var_0.c)), Struct_1(var_0.a, var_0.b, 1000f)), func_4(var_0.a, Struct_1(var_0.a, 48857i, var_0.c), Struct_1(true, 93981i, var_0.c), func_4(false, Struct_1(true, -1117i, 316f), Struct_1(true, 31879i, var_0.c), Struct_1(var_0.a, -24967i, 372f))), func_4(func_2().a, Struct_1(var_0.a, var_1.x, var_0.c), func_4(false, Struct_1(true, -3612i, var_0.c), Struct_1(false, 53466i, var_0.c), Struct_1(true, 0i, -829f)), func_2())), Struct_1((var_0.b < 0i) | true, -50908i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.c, var_0.c))))), func_4(firstLeadingBit(5755i) >= func_4(var_0.a, Struct_1(false, var_0.b, var_0.c), Struct_1(var_0.a, -2147483647i, var_0.c), Struct_1(var_0.a, var_1.x, var_0.c)).b, func_4(var_0.a, func_4(var_0.a, Struct_1(var_0.a, var_1.x, var_0.c), Struct_1(false, 2147483647i, -1647f), Struct_1(var_0.a, var_0.b, -276f)), Struct_1(false, -14548i, var_0.c), Struct_1(false, -2952i, 388f)), Struct_1(all(vec3<bool>(var_0.a, var_0.a, var_0.a)), abs(1i), _wgslsmith_f_op_f32(-552f + -1054f)), func_2())));
    let var_2 = ~arg_0.x;
    return Struct_1(var_2 == _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(1u, 24185u, 11266u), reverseBits(~global0.x)), var_0.b, -636f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = func_1(u_input.a);
    var var_2 = -2147483647i;
    var var_3 = func_1(u_input.a);
    global0 = ~_wgslsmith_mod_vec4_u32(~u_input.a, vec4<u32>(abs(global0.x) & select(21207u, 33220u, true), ~(~global0.x), global0.x, _wgslsmith_div_u32(global0.x >> (54602u % 32u), 19209u << (0u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(vec2<i32>(1i, 1i))), global0.x, 0i);
}

