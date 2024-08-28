struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: u32) -> bool {
    let var_0 = !vec4<bool>(all(vec3<bool>(all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), true)), all(vec2<bool>(any(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, true, true)))), select(true, false & any(vec3<bool>(false, false, false)), !all(vec3<bool>(true, false, true))), false);
    let var_1 = vec2<u32>(50956u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 24671u, arg_2, 0u), vec4<u32>(23257u, 1u, arg_2, u_input.b), vec4<u32>(0u, 3974u, 0u, arg_1))), ~vec4<u32>(24406u, 1u, 62653u, arg_0), vec4<u32>(~5751u, firstTrailingBit(58820u), arg_1, 4294967295u | arg_0)), ~vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.b), ~u_input.b, _wgslsmith_add_u32(u_input.c, arg_1), 1u)));
    var var_2 = 40598u;
    var_2 = arg_1;
    var var_3 = var_0.ww;
    return !((~_wgslsmith_add_u32(arg_0, 1u) == 37724u) | (true | var_3.x));
}

fn func_2() -> i32 {
    let var_0 = false;
    let var_1 = var_0;
    let var_2 = select(select(vec4<bool>(all(vec4<bool>(var_0, var_1, true, var_1)), false, func_3(_wgslsmith_mult_u32(u_input.b, u_input.b), 1u, max(u_input.a, 21433u)), var_0), !(!vec4<bool>(var_0, false, var_1, var_1)), select(select(vec4<bool>(true, var_1, false, false), vec4<bool>(var_0, true, var_0, var_0), false), !vec4<bool>(var_1, var_1, var_0, var_0), vec4<bool>(all(vec2<bool>(var_1, true)), var_1 && false, all(vec2<bool>(var_0, true)), true))), select(vec4<bool>(false, var_1, !var_0, ~u_input.a <= _wgslsmith_dot_vec3_u32(vec3<u32>(44418u, 43768u, u_input.a), vec3<u32>(u_input.c, u_input.b, u_input.a))), select(vec4<bool>(!var_0, var_0, false, var_0), !select(vec4<bool>(true, var_1, var_0, false), vec4<bool>(false, var_0, var_1, var_0), false), !any(vec3<bool>(var_0, var_0, var_0))), var_0), !select(vec4<bool>(any(vec2<bool>(true, true)), true, false, true), select(vec4<bool>(false, false, var_0, false), !vec4<bool>(true, true, var_0, true), var_1), any(vec2<bool>(false, var_0))));
    let var_3 = var_2;
    return countOneBits(1i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1.d.x;
    let var_1 = min(func_2(), -arg_1.d.x);
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~firstTrailingBit(1u), min(0u, func_1(Struct_1(1303f, u_input.c, 1541f, vec2<i32>(-2147483647i, -1i), vec2<bool>(false, false)), Struct_1(220f, 22856u, 785f, vec2<i32>(-2147483647i, 9639i), vec2<bool>(true, false)))), max(1u, _wgslsmith_add_u32(~0u, firstLeadingBit(u_input.a)))) >> (vec3<u32>(61646u << (u_input.a % 32u), ~4294967295u, abs(u_input.a)) % vec3<u32>(32u));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -503f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(505f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_dot_vec3_i32(vec3<i32>(-26785i, func_2(), 1i), vec3<i32>(1i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 14500i, 2147483647i, -1i), vec4<i32>(-1i, -8010i, -1i, 1i)), reverseBits(1i)), ~65636i)), _wgslsmith_mod_u32(1u, firstTrailingBit(_wgslsmith_sub_u32(u_input.c, ~92240u))), ~vec2<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.a, u_input.a) << (vec4<u32>(u_input.c, var_0.x, u_input.a, 0u) % vec4<u32>(32u)), select(vec4<u32>(u_input.b, var_0.x, u_input.a, 1u), vec4<u32>(var_0.x, u_input.a, u_input.a, 1u), vec4<bool>(false, true, true, true)))));
}

