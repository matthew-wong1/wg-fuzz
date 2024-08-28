struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec2<u32> {
    let var_0 = countOneBits(-arg_1.a.x & _wgslsmith_clamp_i32(-_wgslsmith_add_i32(arg_1.a.x, -1i), _wgslsmith_div_i32(0i, -1580i | arg_1.a.x), -1i));
    var var_1 = arg_1;
    var var_2 = 1i;
    let var_3 = vec3<i32>(_wgslsmith_dot_vec3_i32(-abs(countOneBits(vec3<i32>(-2147483647i, var_0, arg_1.a.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -4255i, var_1.a.x), var_1.a), ~arg_1.a.x, -var_1.a.x), arg_1.a)), 4230i, var_1.a.x & min(var_1.a.x, arg_1.a.x));
    let var_4 = true;
    return max(abs(vec2<u32>(_wgslsmith_add_u32(select(4294967295u, arg_0, var_4), 63672u), ~(~21992u))), ~vec2<u32>(1u, 9232u));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(u_input.a), 1u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(0u, 4294967295u))) ^ ~max(vec2<u32>(u_input.a, 4294967295u) ^ vec2<u32>(88095u, 1u), ~vec2<u32>(1u, u_input.a)), func_3(_wgslsmith_mod_u32(u_input.a << (_wgslsmith_add_u32(0u, 11973u) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 40362u), vec3<u32>(4294967295u, u_input.a, 1u)), vec3<u32>(u_input.a, 55454u, u_input.a))), Struct_1(vec3<i32>(1i, 1i, 1i)), 938f, (_wgslsmith_div_u32(u_input.a, u_input.a) & u_input.a) | 1u));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2472f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -659f))));
    var var_2 = select(vec2<bool>(_wgslsmith_f_op_f32(-var_1.x) < _wgslsmith_f_op_f32(abs(var_1.x)), false), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), vec2<bool>(u_input.a <= var_0.x, true)), vec2<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-827f * var_1.x) >= -415f)), true);
    var var_3 = Struct_1(~vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(23759i, 1i, 2147483647i, -37599i), -vec4<i32>(14493i, 15863i, -1i, -23569i)), 1i, 0i));
    var var_4 = var_2.x & !(!(!all(vec2<bool>(var_2.x, false))));
    return var_3.a.x < 5957i;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(((select(vec3<i32>(-1i, -20003i, -36848i), vec3<i32>(-18786i, -1i, 1i), false) & -vec3<i32>(-14005i, -8851i, 79924i)) >> (~vec3<u32>(76687u, u_input.a, u_input.a) % vec3<u32>(32u))) & select(vec3<i32>(1i, 1i, 1i), vec3<i32>(~(-1i), -2147483647i, -1i), func_2()));
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(0u, func_3(1u, Struct_1(vec3<i32>(1i, -2147483647i, 0i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(752f, 1137f)), 26554u & (u_input.a >> (u_input.a % 32u))).x), min(~u_input.a, u_input.a | ~0u));
    let var_2 = Struct_1(-var_0.a);
    var var_3 = Struct_1(firstTrailingBit(firstLeadingBit(~vec3<i32>(var_0.a.x, 15679i, var_2.a.x))));
    var_0 = Struct_1(var_0.a);
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, !any(vec2<bool>(true, true)) && true);
    var var_1 = var_0.x && var_0.x;
    var var_2 = Struct_1(vec3<i32>(~1i, -1i, -1i) | _wgslsmith_mult_vec3_i32(firstLeadingBit(firstLeadingBit(vec3<i32>(-14922i, 1i, 2904i))), vec3<i32>(24419i << (u_input.a % 32u), 61438i, _wgslsmith_dot_vec2_i32(vec2<i32>(45334i, -27103i), vec2<i32>(-7853i, -1i)))));
    let var_3 = ~func_1() ^ u_input.a;
    var_1 = var_0.x;
    var var_4 = firstLeadingBit(~((vec4<u32>(4294967295u, 82509u, var_3, u_input.a) >> (vec4<u32>(1u, 0u, u_input.a, 38226u) % vec4<u32>(32u))) >> ((vec4<u32>(4294967295u, var_3, u_input.a, 1u) ^ vec4<u32>(13027u, var_3, u_input.a, 33846u)) % vec4<u32>(32u)))) >> (countOneBits(vec4<u32>(abs(31598u), _wgslsmith_mult_u32(var_3, firstTrailingBit(1u)), ~(~42243u), var_3)) % vec4<u32>(32u));
    var_4 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_4.x, 0u, 1u, firstTrailingBit(var_4.x)), ~(~(~(vec4<u32>(var_4.x, u_input.a, 4294967295u, 1u) ^ vec4<u32>(77795u, 9285u, 37647u, 52346u)))));
    let var_5 = Struct_1(~vec3<i32>(var_2.a.x, 2147483647i, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-637f)))))), -vec2<i32>(var_2.a.x, var_2.a.x), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -461f) + 460f), -512f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1380f, -753f)))))));
}

