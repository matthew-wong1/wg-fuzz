struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_3 {
    var var_0 = -1919f;
    let var_1 = u_input.d;
    var var_2 = Struct_2(Struct_1(min(_wgslsmith_add_vec3_u32(abs(vec3<u32>(66264u, u_input.c.x, u_input.c.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 13427u, 14047u), vec3<u32>(u_input.c.x, 1u, 91039u))), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1521f, _wgslsmith_f_op_f32(f32(-1f) * -883f)))), 50895u, false));
    var var_3 = Struct_3(var_2.a.d);
    let var_4 = Struct_1(var_2.a.a, _wgslsmith_f_op_f32(var_2.a.b * -1733f), ~(~40574u ^ ~(~u_input.c.x)), true);
    return Struct_3(!var_3.a);
}

fn func_3(arg_0: f32) -> vec3<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 - 1182f))), _wgslsmith_f_op_f32(sign(-1499f)), _wgslsmith_f_op_f32(arg_0 * 981f));
    let var_1 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(true, false, true, false)), all(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, false))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-569f, _wgslsmith_f_op_f32(abs(-1974f))))))));
    let var_3 = vec4<u32>(firstLeadingBit(~_wgslsmith_add_u32(u_input.c.x, 55889u)), 1u, ~u_input.c.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.xy, vec2<u32>(u_input.c.x, u_input.c.x)), ~vec2<u32>(u_input.c.x, 4889u) >> (u_input.c.xx % vec2<u32>(32u)))) << (_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, 0u, 54205u, 4294967295u), vec4<u32>(4294967295u, u_input.c.x, 5232u, 6892u)), ~select(~vec4<u32>(u_input.c.x, u_input.c.x, 64845u, 75740u), vec4<u32>(1u, u_input.c.x, 1u, 42391u), var_1.x)) % vec4<u32>(32u));
    var var_4 = _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.d, u_input.a.x >> (0u % 32u)), u_input.a.xx);
    return ~_wgslsmith_add_vec3_u32(abs(~(~vec3<u32>(66293u, var_3.x, u_input.c.x))), reverseBits(vec3<u32>(abs(var_3.x), 7429u, ~u_input.c.x)));
}

fn func_1() -> bool {
    let var_0 = func_2();
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(u_input.c.x) ^ (firstTrailingBit(0u) >> (u_input.c.x % 32u)), ~u_input.c.x), _wgslsmith_div_u32(select(9397u, _wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)), func_2().a), _wgslsmith_mult_u32(~u_input.c.x >> (1u % 32u), 59984u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(1u, u_input.c.x), ~u_input.c.zy, var_0.a), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 25143u), vec2<u32>(1u, u_input.c.x)))), u_input.c.xx));
    var_1 = _wgslsmith_clamp_vec3_u32(reverseBits(abs(~vec3<u32>(u_input.c.x, 33789u, 18037u)) ^ vec3<u32>(_wgslsmith_clamp_u32(1u, 0u, 1u), 38646u, _wgslsmith_mult_u32(32151u, 52615u))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-748f * _wgslsmith_f_op_f32(f32(-1f) * -525f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(291f, -812f))))), _wgslsmith_add_vec3_u32(u_input.c, u_input.c));
    let var_2 = Struct_1(~((~vec3<u32>(u_input.c.x, u_input.c.x, var_1.x) ^ _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(0u, u_input.c.x, 1u))) & ~firstTrailingBit(u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -806f), u_input.c.x, !(u_input.d > _wgslsmith_sub_i32(reverseBits(17853i), u_input.a.x)));
    let var_3 = Struct_2(var_2);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~u_input.c.x ^ 87286u, u_input.c.x, select(u_input.c.x, select(max(~u_input.c.x, 9462u), ~(~u_input.c.x), func_1()), true));
    var var_1 = vec3<bool>(all(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, all(vec4<bool>(false, false, false, true))))), _wgslsmith_f_op_f32(-1135f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(717f * 549f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1397f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -617f), _wgslsmith_f_op_f32(-749f + -378f), 0i <= u_input.b))), false);
    var_1 = select(vec3<bool>(var_1.x, _wgslsmith_mult_u32(~var_0.x, select(u_input.c.x, 61452u, var_1.x)) < var_0.x, false), vec3<bool>(true, !var_1.x, true), select(vec3<bool>(true, true, true), vec3<bool>(!all(vec3<bool>(true, var_1.x, true)), true, var_1.x), !select(!var_1.x, !var_1.x, true)));
    var var_2 = _wgslsmith_sub_u32(26667u, ~(84702u << (_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) % 32u)));
    var_2 = u_input.c.x;
    let var_3 = func_2();
    var var_4 = !select(vec4<bool>(!any(vec3<bool>(false, var_3.a, false)), !var_3.a, var_3.a, false), vec4<bool>(true, !(u_input.c.x > 15079u), any(!vec4<bool>(var_3.a, var_1.x, false, var_3.a)), var_3.a), vec4<bool>(true, any(!vec4<bool>(var_1.x, var_3.a, var_3.a, true)), var_3.a, var_3.a));
    let var_5 = 75695u;
    var_4 = select(!vec4<bool>(true, true, var_3.a, true), select(!(!(!vec4<bool>(var_4.x, true, var_4.x, false))), vec4<bool>(var_3.a, true, true, true & var_4.x), any(!(!vec4<bool>(true, true, false, var_4.x)))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-1000f * 471f), _wgslsmith_f_op_f32(f32(-1f) * -1248f))))), _wgslsmith_div_i32(-2147483647i, u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1897f, _wgslsmith_f_op_f32(step(-865f, 176f)))) * -2379f));
}

