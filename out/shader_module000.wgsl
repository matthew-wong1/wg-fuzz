struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    var var_0 = select(!select(vec3<bool>(select(false, true, true), true, u_input.b.x != u_input.c), vec3<bool>(select(false, false, false), true, true), vec3<bool>(true, true, true)), select(vec3<bool>(all(vec3<bool>(false, true, true)), false, !(u_input.b.x > u_input.d)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), _wgslsmith_f_op_f32(step(206f, 667f)) <= 390f), all(vec4<bool>(true, true, -2147483647i == u_input.c, true))));
    return u_input.a;
}

fn func_2() -> bool {
    let var_0 = ~u_input.c;
    var var_1 = _wgslsmith_add_i32(-func_3(), max(-_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a), -7636i));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-633f, _wgslsmith_f_op_f32(727f + -1252f))))));
    var var_3 = firstLeadingBit(19092u);
    var var_4 = 1i;
    return false;
}

fn func_1() -> u32 {
    var var_0 = func_2();
    return ~select(1u, ~(~0u >> (~4294967295u % 32u)), countOneBits(_wgslsmith_mult_i32(u_input.a, -2147483647i)) < abs(u_input.b.x >> (18215u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>((i32(-1i) * -u_input.b.x) < u_input.c, all(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), true)), !(!all(vec3<bool>(false, true, false))), true);
    var var_1 = ~select(vec2<u32>(func_1(), _wgslsmith_clamp_u32(abs(58186u), _wgslsmith_add_u32(68180u, 11389u), ~1u)), vec2<u32>(1u, 1u) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(32681u, 40691u, 1u, 38079u), vec4<u32>(41603u, 1u, 0u, 64871u)), func_1()) % vec2<u32>(32u)), true);
    let var_2 = Struct_1(39968u, !(!vec4<bool>(true, var_0.x & var_0.x, all(vec4<bool>(var_0.x, var_0.x, false, false)), any(vec4<bool>(true, false, var_0.x, var_0.x)))));
    var var_3 = var_2.b.zw;
    var_0 = var_2.b;
    let var_4 = Struct_1(min(~(~var_2.a), _wgslsmith_sub_u32(var_2.a, 4294967295u)), select(select(vec4<bool>(all(var_0.yz), var_3.x, any(vec3<bool>(true, false, var_2.b.x)), var_0.x), !(!var_2.b), false), vec4<bool>(false, true, var_3.x, false), (func_2() || var_2.b.x) || true));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(var_2.a, 63927u), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(0u, 4294967295u)), min(vec2<u32>(var_2.a, 67824u), vec2<u32>(var_2.a, 1u))) >> (abs(~vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), !(_wgslsmith_f_op_f32(sign(1295f)) < _wgslsmith_f_op_f32(f32(-1f) * -126f))), -911f, u_input.b.yz);
}

