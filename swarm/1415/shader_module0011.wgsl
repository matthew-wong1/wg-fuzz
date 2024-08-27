struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = ~u_input.b.x;
    var_0 = u_input.d;
    var var_1 = select(select(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), true), select(vec2<bool>(any(vec2<bool>(false, true)), true), vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), true)), !all(vec3<bool>(true, true, true))), select(vec2<bool>((arg_1.x >= u_input.d) || any(vec4<bool>(true, true, false, false)), false), !vec2<bool>(any(vec4<bool>(true, true, true, false)), false), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true))), !select(vec2<bool>(true, arg_0 <= 625f), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec2<bool>(false, true))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1909f + 227f)))));
    var_1 = select(!select(!(!vec2<bool>(var_1.x, false)), vec2<bool>(!var_1.x, all(vec4<bool>(var_1.x, true, var_1.x, var_1.x))), select(vec2<bool>(true, var_1.x), select(vec2<bool>(false, var_1.x), vec2<bool>(false, true), var_1.x), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, var_1.x), vec2<bool>(false, var_1.x)))), vec2<bool>(any(vec3<bool>(false & var_1.x, arg_0 <= 1497f, var_1.x)), true), !var_1.x);
    return select(!vec2<bool>(!var_1.x, var_1.x), !vec2<bool>(any(vec4<bool>(var_1.x, true, true, var_1.x)), var_1.x), select(vec2<bool>(all(vec3<bool>(var_1.x, var_1.x, false)), true), !select(select(vec2<bool>(false, var_1.x), vec2<bool>(true, false), vec2<bool>(var_1.x, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), !vec2<bool>(var_1.x, false)), select(select(vec2<bool>(var_1.x, true), !vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x)), !(!vec2<bool>(var_1.x, var_1.x)), true)));
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_3(Struct_2(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -237f)), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -1i), select(vec2<i32>(-1i, 2147483647i), u_input.b.zx, true)), Struct_1(29156u & u_input.a.x, u_input.c), min(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(u_input.a.x, 0u, 1u))), 1f, !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -763f))) + 250f)), _wgslsmith_sub_u32(abs(50402u) >> (_wgslsmith_sub_u32(13513u << (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.zz)) % 32u), 91080u));
    return reverseBits(vec4<u32>(var_0.c, 0u, ~(0u >> (var_0.c % 32u)), firstTrailingBit(_wgslsmith_sub_u32(0u, u_input.a.x) << (countOneBits(var_0.c) % 32u))));
}

fn func_1() -> f32 {
    var var_0 = ~func_2();
    var_0 = vec4<u32>(27320u, ~0u, 97973u, select(_wgslsmith_sub_u32((4294967295u | u_input.c) ^ 36949u, ~4294967295u), 1u, all(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), u_input.d < u_input.b.x))));
    var var_1 = vec4<i32>(1i << (u_input.c % 32u), -2147483647i, u_input.b.x, u_input.b.x) >> (~_wgslsmith_mod_vec4_u32(select(countOneBits(vec4<u32>(72606u, 0u, 46474u, 1u)), vec4<u32>(u_input.c, 23823u, u_input.a.x, 0u), true), _wgslsmith_div_vec4_u32(abs(vec4<u32>(var_0.x, u_input.c, var_0.x, var_0.x)), vec4<u32>(u_input.a.x, 0u, 60787u, var_0.x))) % vec4<u32>(32u));
    var var_2 = firstTrailingBit(vec2<i32>(reverseBits(u_input.b.x), abs(-_wgslsmith_clamp_i32(0i, u_input.b.x, 1i))));
    var_0 = reverseBits(_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.c, 43277u, var_0.x, 4294967295u)), ~(~(vec4<u32>(61029u, 4294967295u, var_0.x, var_0.x) << (vec4<u32>(1u, 4294967295u, u_input.a.x, 30054u) % vec4<u32>(32u))))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, -208f)))), _wgslsmith_f_op_f32(299f + -705f)))));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    var var_0 = ~49678u;
    var var_1 = Struct_4(Struct_2(vec2<bool>((u_input.a.x != u_input.a.x) || all(arg_0.a.c), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(-arg_0.a.b)))), select(!(!vec4<bool>(false, true, arg_0.a.c.x, false)), !select(vec4<bool>(arg_0.a.a.x, false, false, true), arg_0.a.c, true), false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(974f + _wgslsmith_f_op_f32(sign(arg_0.a.b))))))));
    return Struct_1(_wgslsmith_dot_vec4_u32(max(vec4<u32>(max(57983u, 1u), u_input.a.x, u_input.c, _wgslsmith_mult_u32(55564u, 11693u)), firstTrailingBit(countOneBits(vec4<u32>(0u, u_input.c, u_input.c, u_input.a.x)))), vec4<u32>(0u, 40709u ^ u_input.a.x, 25875u, _wgslsmith_dot_vec3_u32(func_2().wyy, u_input.a))), ~_wgslsmith_div_u32(~_wgslsmith_mult_u32(26974u, u_input.a.x), ~u_input.c ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 11004u), vec2<u32>(u_input.c, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~15490u, countOneBits(~15857u));
    var_0 = func_4(Struct_4(Struct_2(vec2<bool>(true, u_input.c > var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -683f) * _wgslsmith_f_op_f32(max(-1064f, 141f))), 1f)));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(-(0i << (u_input.a.x % 32u)) << (abs(2055u) % 32u), min(2147483647i, 70932i)), (u_input.d & 1i) << (u_input.a.x % 32u));
    var var_2 = abs(~var_1);
    var_2 = -48331i;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_1));
}

