struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, abs(19090u), ~abs(u_input.c.x), ~_wgslsmith_mod_u32(1u << (0u % 32u), ~u_input.c.x)), vec4<u32>(max(~_wgslsmith_mod_u32(u_input.c.x, 26862u), ~(0u >> (u_input.c.x % 32u))), 1u, ~4294967295u, u_input.c.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-639f - 1351f), _wgslsmith_f_op_f32(717f * -1347f), -1356f))));
    return var_1.x;
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(vec2<u32>(u_input.c.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 10639u), u_input.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f)))), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -1i, 0i, 1i) ^ vec4<i32>(2147483647i, 0i, u_input.a.x, 0i), -vec4<i32>(-2147483647i, u_input.b, -2147483647i, -10690i)), -vec4<i32>(u_input.b, -1i, u_input.a.x, -7243i))), _wgslsmith_sub_i32(u_input.a.x, u_input.b), ~0u);
    var_0 = Struct_2(var_0.a, var_0.b, reverseBits(u_input.c.x));
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(func_3()) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.a.b)), -111f)), !any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), true);
    var var_2 = _wgslsmith_dot_vec3_u32(min(vec3<u32>(max(~u_input.c.x, var_0.c), ~abs(u_input.c.x), 72470u), u_input.c), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 74391u), abs(u_input.c)), u_input.c.x, var_0.c));
    var var_3 = vec4<u32>(4294967295u, ~(~47688u), select(firstLeadingBit(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 36340u, var_0.a.a.x, u_input.c.x), vec4<u32>(18637u, var_0.c, var_0.c, 0u)))), u_input.c.x, var_1.x), 4294967295u);
    return !select(select(vec4<bool>(true | var_1.x, true, var_1.x & true, false), vec4<bool>(any(vec4<bool>(false, true, false, true)), var_1.x & var_1.x, var_1.x, var_1.x), select(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, true, true, var_1.x), var_1.x), vec4<bool>(true, true, true, true), !vec4<bool>(var_1.x, var_1.x, true, var_1.x))), vec4<bool>(select(select(var_1.x, true, true), var_1.x, !var_1.x), true, false, ~var_0.b != -u_input.b), true);
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = vec2<bool>(true, any(!func_2()));
    let var_1 = Struct_2(Struct_1(~u_input.c.xz, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(167f))))), vec4<i32>(8645i, -u_input.a.x >> (arg_0 % 32u), u_input.a.x, -62091i)), u_input.a.x, min(~arg_0, u_input.c.x));
    let var_2 = func_2().xyz;
    let var_3 = var_2.x;
    let var_4 = Struct_2(Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(13820u, var_1.c), ~vec2<u32>(11048u, 1u)), reverseBits(firstLeadingBit(u_input.c.zz))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b)))), -var_1.a.c), select(~(~10073i), firstLeadingBit(u_input.a.x), any(vec4<bool>(var_0.x, true, false, var_2.x))) | -2147483647i, arg_0);
    return vec3<bool>(func_2().x, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-1i) * -vec4<i32>(u_input.b, (-10504i >> (u_input.c.x % 32u)) << (u_input.c.x % 32u), 3401i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-233i, 0i), vec2<i32>(u_input.b, 26848i)));
    var var_1 = -2211f;
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 42463u, ~u_input.c.x << ((u_input.c.x ^ _wgslsmith_add_u32(4488u, u_input.c.x)) % 32u)), ~(~(~vec3<u32>(u_input.c.x, 25169u, u_input.c.x) >> (u_input.c % vec3<u32>(32u)))));
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1214f) - _wgslsmith_f_op_f32(step(-732f, 371f))), _wgslsmith_f_op_f32(-634f + -557f), true)), 2906f))));
    let var_3 = !(!(!(!func_1(u_input.c.x))));
    let var_4 = firstLeadingBit(abs(u_input.c)) & ~vec3<u32>(select(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), var_2.x, var_3.x), var_2.x, max(u_input.c.x, 0u));
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1083f - 1000f)))) + 871f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1079f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(226f * -313f), 1f, select(var_3.x, true, var_3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(875f + -463f) + _wgslsmith_f_op_f32(sign(-237f)))) * _wgslsmith_f_op_f32(func_3())));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, var_4.x, var_2.x) << (u_input.c % vec3<u32>(32u)), vec3<u32>(10877u, var_4.x, var_2.x) | var_4), 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(104730u, 4294967295u, u_input.c.x, var_4.x), vec4<u32>(var_4.x, var_4.x, 4294967295u, u_input.c.x)) >> (~50331u % 32u)), var_5.x, 1u, abs(u_input.c));
}

