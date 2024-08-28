struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_3) -> u32 {
    var var_0 = Struct_1(select(abs(countOneBits(vec4<u32>(4294967295u, arg_2.c, u_input.a.x, 0u))), vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(arg_2.c, 0u), u_input.a.x | u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(9134u, u_input.a.x))) | ~vec4<u32>(arg_2.b.a.x, arg_2.c, 50996u, 122603u), vec4<bool>(true, true, true, true)));
    var_0 = Struct_1(_wgslsmith_add_vec4_u32(arg_2.b.a, arg_2.b.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2041f) + 1125f));
    let var_2 = Struct_1(vec4<u32>(var_0.a.x, _wgslsmith_sub_u32(~(~0u), u_input.a.x), ~arg_2.c << (_wgslsmith_sub_u32(4139u, 1u) % 32u), select(var_0.a.x, 19947u << (~u_input.a.x % 32u), !all(vec3<bool>(false, true, true)))));
    let var_3 = vec4<bool>(any(vec3<bool>(true, true, true)), true, any(!vec4<bool>(all(vec2<bool>(true, true)), arg_0.x != -559f, all(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, true, true)))), (_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(var_0.a.x, 0u)) < 1u) & true);
    return firstLeadingBit(countOneBits(_wgslsmith_clamp_u32(abs(4294967295u), ~var_0.a.x, ~u_input.a.x)));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = ~_wgslsmith_mod_vec3_u32(~arg_2.a.a.yyz, vec3<u32>(arg_2.a.a.x, ~(~u_input.a.x), _wgslsmith_sub_u32(4294967295u, 7969u) | func_3(vec3<f32>(arg_1, arg_1, arg_1), -581f, Struct_3(5422i, Struct_1(u_input.a), u_input.a.x))));
    let var_1 = -1000f;
    var var_2 = Struct_2(arg_2.a);
    var_2 = arg_2;
    var var_3 = vec4<u32>(u_input.a.x, firstTrailingBit(_wgslsmith_sub_u32(~u_input.a.x, var_2.a.a.x)), ~(abs(max(20233u, arg_3.a.x)) >> (4294967295u % 32u)), 124385u);
    return _wgslsmith_mult_u32(30639u, arg_3.a.x);
}

fn func_1() -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(~u_input.a, vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 4294967295u), func_2(vec2<bool>(false, true), -1251f, Struct_2(Struct_1(u_input.a)), Struct_1(u_input.a)), _wgslsmith_add_u32(0u, u_input.a.x), 36258u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_3(1i, func_1().a, _wgslsmith_add_u32(abs(_wgslsmith_add_u32(83643u, var_0.a.a.x)), firstTrailingBit(37u)));
    var var_2 = vec4<bool>(false, any(vec4<bool>(true, true, true, true)) & (true || !any(vec3<bool>(false, true, false))), false, all(vec3<bool>(all(vec2<bool>(true, true)), select(true, true, u_input.a.x > u_input.a.x), var_1.a >= var_1.a)));
    let var_3 = func_1().a;
    var_2 = vec4<bool>(!any(var_2.xw), true, true, false);
    let var_4 = Struct_3(firstTrailingBit(_wgslsmith_div_i32(var_1.a, reverseBits(~var_1.a))), Struct_1(select(~(~u_input.a), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_3.a.x, 56356u, var_0.a.a.x, 0u), var_0.a.a), reverseBits(vec4<u32>(u_input.a.x, var_0.a.a.x, 7495u, 7582u)), ~vec4<u32>(4294967295u, 0u, 0u, var_3.a.x)), true)), var_3.a.x ^ ~(~0u));
    var var_5 = var_1;
    let var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.b.a.x & _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(1u, var_1.b.a.x), _wgslsmith_dot_vec3_u32(u_input.a.wyy, var_5.b.a.yzy)), var_5.b.a.ww), func_1().a.a, _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(max(var_1.b.a.x, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.a.x, var_4.c), var_6.b.a.xz), 1u, 1u)), var_1.b.a));
}

