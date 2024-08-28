struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = Struct_1(false);
    var var_1 = Struct_2(Struct_1(var_0.a));
    var var_2 = -2147483647i;
    var_1 = Struct_2(var_1.a);
    var_2 = 16637i;
    return 120f;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = 5646u << (~(~reverseBits(u_input.b << (1854u % 32u))) % 32u);
    var var_1 = ~0u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1530f, -668f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(-_wgslsmith_div_i32(19974i, -6339i))), -714f)));
    var_1 = u_input.b ^ 2805u;
    var var_3 = Struct_2(Struct_1(true));
    return Struct_1(!var_3.a.a);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = true;
    let var_1 = 298f;
    var var_2 = var_1 >= -1406f;
    let var_3 = true;
    var var_4 = vec4<bool>(any(select(select(vec4<bool>(false, false, true, arg_0.a), vec4<bool>(false, false, true, arg_3.a), arg_1 >= -45866i), vec4<bool>(true, func_2(var_0).a, true, arg_0.a), vec4<bool>(true, var_0 && false, -9599i >= arg_1, true))), all(arg_2), u_input.c < ~max(~1u, ~u_input.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(4294967295u, 73920u))) == reverseBits(u_input.c));
    return Struct_2(arg_3);
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = -43976i;
    let var_1 = func_4(func_2(!any(vec3<bool>(false, true, true))), var_0, vec2<bool>(!any(vec4<bool>(true, true, true, true)), true), func_2(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)))));
    var var_2 = -2147483647i;
    let var_3 = func_4(var_1.a, 1i, vec2<bool>(var_1.a.a, true), func_2(var_1.a.a)).a;
    var var_4 = var_3;
    return Struct_2(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(firstTrailingBit(1674i));
    let var_1 = Struct_2(var_0.a);
    var var_2 = func_4(Struct_1(true), ~((44162i << (u_input.c % 32u)) >> (~0u % 32u)), vec2<bool>(false | all(vec3<bool>(true, var_0.a.a, var_0.a.a)), ~abs(31364u) == ~_wgslsmith_add_u32(u_input.b, 65793u)), Struct_1(true));
    let var_3 = Struct_1(var_0.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(func_3(-_wgslsmith_div_i32(~0i, firstLeadingBit(-44093i)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-653f, -438f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec4<i32>(~(-2147483647i), firstTrailingBit(~1i), min(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 7013i, -20701i), vec4<i32>(-2147483647i, 0i, -29267i, -2147483647i)), select(-28660i, 2147483647i, true) & (0i >> (u_input.a % 32u))), -((2147483647i << (u_input.a % 32u)) ^ 1i)), 1i | _wgslsmith_mult_i32(-30420i, select(-26430i, ~1i, true)));
}

