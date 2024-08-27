struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> u32 {
    var var_0 = false;
    let var_1 = Struct_1(arg_2.a << ((arg_2.a << (~(~arg_2.a) % vec3<u32>(32u))) % vec3<u32>(32u)), 9081u, vec4<bool>(~(~8892u) < abs(arg_2.a.x & 4294967295u), any(vec2<bool>(true, true)), !any(!arg_2.c.wxw), !(select(false, arg_2.c.x, true) | true)));
    var var_2 = ~select(arg_2.a, vec3<u32>(~(4294967295u | arg_2.a.x), 38795u, arg_2.a.x), var_1.c.x);
    let var_3 = Struct_3(arg_2.b, _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-arg_1.b));
    var_2 = vec3<u32>(arg_2.a.x, var_2.x, (arg_0.x ^ arg_1.a) & (min(1u, min(var_3.a, var_1.b)) >> (arg_1.a % 32u)));
    return ~(~(~14582u));
}

fn func_3(arg_0: vec4<bool>) -> vec3<u32> {
    let var_0 = Struct_1(~(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1924u), max(vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(21166u, 1u, u_input.a))) | vec3<u32>(18083u, 1u, u_input.a)), abs(u_input.a), arg_0);
    var var_1 = _wgslsmith_mult_u32(u_input.b, _wgslsmith_div_u32(abs(u_input.a), ~69519u));
    let var_2 = Struct_3(_wgslsmith_sub_u32(~(~var_0.b << (_wgslsmith_add_u32(var_0.b, u_input.a) % 32u)), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1558f * -794f))) - _wgslsmith_f_op_f32(-418f * -1780f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -1103f))), -1557f))));
    var_1 = ~45964u & var_0.b;
    var_1 = firstTrailingBit(select(min(func_1(vec2<u32>(1u, u_input.a), Struct_3(86897u, var_2.b, var_2.b), var_0, true), _wgslsmith_sub_u32(var_0.a.x, 4294967295u)) >> (u_input.b % 32u), var_2.a, !var_0.c.x));
    return ~(~min(var_0.a, ~var_0.a));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = u_input.c.x;
    let var_1 = Struct_2(vec2<bool>(true, false));
    var_0 = abs(_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_add_i32(u_input.c.x, i32(-1i) * -1i)));
    var var_2 = ~arg_0.x | ~(~abs(arg_0.x) ^ arg_0.x);
    var_2 = _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 23977u, u_input.a, 596u), arg_0 ^ arg_0) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, u_input.b), vec2<u32>(arg_0.x, 4294967295u)), ~arg_0.wx) % 32u)), u_input.b);
    return Struct_1(select(arg_0.xxy, firstTrailingBit(reverseBits(arg_0.yyw)) & (arg_0.wxx | func_3(vec4<bool>(var_1.a.x, true, true, var_1.a.x))), !(func_1(vec2<u32>(27786u, arg_0.x), Struct_3(u_input.a, 783f, -217f), Struct_1(arg_0.xzx, u_input.a, vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x)), false) < func_3(vec4<bool>(var_1.a.x, true, true, false)).x)), ~max(~51221u, ~13583u), vec4<bool>(true, !var_1.a.x, all(select(select(vec3<bool>(true, var_1.a.x, var_1.a.x), vec3<bool>(true, var_1.a.x, false), vec3<bool>(var_1.a.x, false, var_1.a.x)), select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(var_1.a.x, false, true), vec3<bool>(var_1.a.x, true, true)), var_1.a.x)), var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(~firstTrailingBit(vec4<u32>(countOneBits(u_input.a), 4294967295u, func_1(vec2<u32>(u_input.b, 21384u), Struct_3(4294967295u, -2218f, 780f), Struct_1(vec3<u32>(1u, 44979u, 0u), u_input.a, vec4<bool>(true, false, false, true)), false), u_input.b & 0u)));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~43211u, _wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(77995u, u_input.a, 1u, var_0.b), vec4<u32>(4294967295u, 49333u, u_input.b, var_0.b))), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(var_0.a.yy, var_0.a.xy), firstTrailingBit(vec2<u32>(0u, 0u)))), ~u_input.a), ~select(vec3<u32>(var_0.a.x, _wgslsmith_mod_u32(11072u, 46806u), u_input.a), vec3<u32>(1u, var_0.b, select(1u, var_0.a.x, true)), var_0.c.x));
    var var_2 = true;
    var_2 = all(select(var_0.c, vec4<bool>(!any(vec3<bool>(var_0.c.x, true, var_0.c.x)), true, true, any(var_0.c.xz)), any(select(var_0.c.zw, var_0.c.wx, var_0.c.xy)) == false));
    var var_3 = ~(-countOneBits(vec3<i32>(1i, reverseBits(44453i), ~u_input.c.x)));
    let var_4 = Struct_3(func_2(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a, 11582u, u_input.a, 83529u), vec4<u32>(u_input.a, var_0.a.x, 0u, 6937u), false), max(vec4<u32>(var_0.b, var_0.b, 0u, u_input.a), vec4<u32>(var_0.a.x, var_0.b, 1u, u_input.b)))).a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1068f, 752f, false)))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1421f) - 876f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -558f) - _wgslsmith_f_op_f32(f32(-1f) * -445f))), _wgslsmith_f_op_f32(sign(-463f))));
    let var_5 = -1i;
    let var_6 = Struct_3(4294967295u, var_4.c, var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_add_i32(u_input.c.x, var_5)), min(40689i, _wgslsmith_div_i32(min(_wgslsmith_clamp_i32(var_5, -55822i, u_input.c.x), -1i), -firstLeadingBit(41948i))), ~firstLeadingBit(_wgslsmith_sub_u32(1u, var_0.a.x)), min(~(-20915i), _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -12647i), u_input.c.zz)));
}

