struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec4<i32> {
    var var_0 = vec2<bool>(true, false);
    let var_1 = vec4<bool>(true, true, arg_0, any(select(vec2<bool>(true, arg_0), vec2<bool>(all(vec4<bool>(arg_0, false, var_0.x, false)), !var_0.x), true)));
    let var_2 = Struct_1(1u, -148f, ~(~597u | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 38088u, 52424u, 20027u), vec4<u32>(65472u, 0u, 1u, 4294967295u))) & firstLeadingBit(27134u), var_1.zxx, all(!var_1));
    return select((select(max(vec4<i32>(u_input.b, u_input.a, u_input.b, 2147483647i), vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.a)), vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.a) ^ vec4<i32>(u_input.a, u_input.b, -2147483647i, 0i), select(var_1, var_1, var_0.x)) & (vec4<i32>(u_input.a, u_input.a, u_input.b, 2147483647i) | -vec4<i32>(-46206i, u_input.b, u_input.b, 0i))) & (vec4<i32>(u_input.a & -25141i, -u_input.a, -1i, u_input.b) >> (vec4<u32>(~var_2.a, var_2.c, ~6239u, abs(var_2.a)) % vec4<u32>(32u))), vec4<i32>(firstTrailingBit(-59253i) | -1i, u_input.a >> (~reverseBits(var_2.a) % 32u), abs(~(-1i)), -2147483647i), var_1.x);
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<i32>(437i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(max(10829i, -u_input.a), 1i), _wgslsmith_dot_vec4_i32(abs(func_3(true)), firstLeadingBit(~vec4<i32>(28098i, -13094i, u_input.b, u_input.a)))));
    return Struct_1(5130u, _wgslsmith_f_op_f32(1006f * _wgslsmith_f_op_f32(449f - _wgslsmith_f_op_f32(122f - -905f))), ~1u, vec3<bool>(!(any(vec2<bool>(true, false)) || true), all(vec4<bool>(true, true, true, true)), true), select(true, true, func_3(true).x < select(u_input.b << (10930u % 32u), -1i, true)));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(arg_0 | 53136u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1623f)), 1f)), arg_2, select(vec3<bool>(true & any(vec2<bool>(true, false)), true, all(vec2<bool>(false, false)) && all(vec2<bool>(true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), true), (!all(vec2<bool>(false, true)) & all(vec4<bool>(true, true, true, true))) && !(!select(false, false, false)));
    let var_1 = arg_1.zx;
    var_0 = func_2();
    var var_2 = reverseBits(1i);
    let var_3 = func_2();
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_u32(54840u, ~_wgslsmith_mod_u32(90923u, ~1u)), vec3<i32>(27235i, (_wgslsmith_mult_i32(0i, u_input.b) >> ((32978u << (0u % 32u)) % 32u)) >> (4294967295u % 32u), _wgslsmith_sub_i32(~(-10360i), _wgslsmith_mult_i32(i32(-1i) * -10908i, u_input.b))), 1u | (firstTrailingBit(1u) >> (countOneBits(1u) % 32u)));
    let var_1 = func_1(min(~var_0.a, 103118u), min(~(vec3<i32>(u_input.b, u_input.a, u_input.a) << (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.a, var_0.c), vec3<u32>(0u, 1u, 4294967295u)) % vec3<u32>(32u))), vec3<i32>(u_input.a, 1i, 11689i)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 13520u, var_0.c, 62367u) >> (countOneBits(vec4<u32>(var_0.a, var_0.c, 21716u, 41806u)) % vec4<u32>(32u)), vec4<u32>(var_0.c & var_0.a, ~4294967295u, 0u, var_0.a)), 4294967295u, ~u_input.a != abs(-22814i)));
    var_0 = Struct_1(1u, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(func_2().b, -493f))), func_2().c, select(!var_1.d, !var_1.d, !var_0.d.x), func_1(~(~var_1.a) >> ((~37607u & ~var_1.c) % 32u), vec3<i32>(u_input.b << (var_1.c % 32u), ~u_input.a, -1i) & (vec3<i32>(-1i) * -vec3<i32>(-54628i, u_input.a, -50934i)), var_0.c).e);
    let var_2 = vec4<i32>(1i, firstLeadingBit(u_input.b), 2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.b))) & vec4<i32>(~(-firstLeadingBit(u_input.b)), u_input.b, -24107i, u_input.b);
    var_0 = Struct_1(var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_1(((17413u ^ var_1.a) ^ 57894u) ^ _wgslsmith_mod_u32(50305u, var_1.c ^ var_1.a), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_2.x, u_input.b), vec3<i32>(u_input.b, 2147483647i, 74732i)), ~vec3<i32>(9412i, var_2.x, 20761i)), min(u_input.b, _wgslsmith_dot_vec2_i32(var_2.xy, vec2<i32>(2147483647i, u_input.a))), 1i), max(1u, ~var_0.c)).c, !func_2().d, any(var_1.d.zz));
    var_0 = Struct_1(70475u << (min(var_1.c, ~_wgslsmith_add_u32(var_1.c, 34017u)) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -616f), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a, 63205u, 1u), vec3<u32>(1u, var_1.c, 14431u), vec3<u32>(var_1.c, var_1.c, var_1.c)), vec3<u32>(4294967295u, var_0.a, var_0.a)), var_1.c, 1u), select(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.c, var_0.a, var_1.c), vec3<u32>(var_0.c, 125246u, 1u)), vec3<u32>(22530u, var_0.c, 15830u) | vec3<u32>(var_1.c, var_1.a, var_1.c)), select(vec3<u32>(var_1.c, var_0.c, var_0.c), reverseBits(vec3<u32>(1u, var_0.a, 0u)), select(var_0.d, var_1.d, var_1.d)), !var_0.d.x)), var_1.d, true);
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1000f, var_3.b));
}

