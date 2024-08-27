struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = ~u_input.a.x;
    let var_1 = 11564i;
    let var_2 = abs(~min(firstLeadingBit(~var_1), (i32(-1i) * -2147483647i) | _wgslsmith_sub_i32(-69857i, var_1)));
    let var_3 = select(vec3<bool>(true, select(true, false, true) || true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !any(vec2<bool>(true, true)));
    let var_4 = reverseBits(reverseBits(vec3<u32>(_wgslsmith_div_u32(u_input.a.x, abs(4294967295u)), 16587u, countOneBits(1u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(815f, -1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -918f))) - -253f);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_add_vec3_i32(-firstTrailingBit(-vec3<i32>(0i, -2147483647i, 0i)), ~min(reverseBits(vec3<i32>(-51124i, 0i, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(0i, 1272i, 10202i), vec3<i32>(-8491i, 1i, 149i)))) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(abs(22090u), ~(4294967295u >> (var_0.b.x % 32u)), 30413u), vec3<u32>(~var_0.b.x, ~_wgslsmith_div_u32(var_0.b.x, 0u), 0u)) % vec3<u32>(32u));
    var var_2 = arg_1;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(func_3(abs(var_0.b.ywy))), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, var_0.b.x), vec4<u32>(4294967295u, 11700u, var_2.b.x, arg_1.b.x)), vec4<u32>(abs(var_2.b.x), ~arg_1.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 7691u, u_input.a.x), vec3<u32>(36569u, u_input.a.x, var_0.b.x)), firstLeadingBit(17199u)), arg_1.b), vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(4294967295u), _wgslsmith_mod_u32(var_2.b.x, 1u)), 25664u, ~select(3902u, 35561u, arg_1.c.x), ~15007u)), select(vec3<bool>(false, any(select(vec4<bool>(true, arg_1.c.x, var_0.c.x, false), vec4<bool>(var_0.c.x, var_0.c.x, var_2.c.x, false), vec4<bool>(true, var_2.c.x, var_0.c.x, true))), !var_0.c.x), vec3<bool>(select(true, false, var_1.x == var_1.x), true | all(vec4<bool>(false, arg_1.c.x, true, var_2.c.x)), arg_1.c.x), var_0.c), var_2.d);
    let var_4 = _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec3_u32(firstLeadingBit(~u_input.a), abs(vec3<u32>(1u, 13815u, abs(0u))), var_3.b.xzz)));
    return !select(!arg_1.c, vec3<bool>(var_2.c.x, true, var_3.c.x), vec3<bool>(arg_1.c.x, true, 0u < ~var_3.b.x));
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(1f + -966f);
    var var_1 = vec3<bool>(true, true, all(vec3<bool>(_wgslsmith_f_op_f32(step(251f, var_0)) < var_0, false, all(vec3<bool>(true, true, true)))));
    var var_2 = vec2<bool>(!all(func_2(613f, Struct_1(var_0, vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec4<f32>(-103f, 519f, var_0, -2030f)))), select(any(select(vec2<bool>(var_1.x, false), select(vec2<bool>(var_1.x, var_1.x), var_1.yz, var_1.x), vec2<bool>(var_1.x, var_1.x))), var_1.x, var_1.x));
    var var_3 = ~u_input.a.x < ~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 0u, 1u), vec4<u32>(u_input.a.x, 0u, 16087u, 22202u)) << (u_input.a.x % 32u)));
    let var_4 = Struct_1(681f, vec4<u32>(4294967295u, u_input.a.x, ~(~(~0u)), abs(~(u_input.a.x << (u_input.a.x % 32u)))), select(select(vec3<bool>(false, false, false), !(!vec3<bool>(false, var_1.x, var_2.x)), var_1.x), select(vec3<bool>(func_2(-286f, Struct_1(var_0, vec4<u32>(4294967295u, 100794u, u_input.a.x, u_input.a.x), vec3<bool>(var_2.x, true, true), vec4<f32>(1000f, -187f, var_0, -176f))).x, true, !var_2.x), vec3<bool>(false && var_1.x, !var_2.x, all(vec4<bool>(false, var_2.x, var_1.x, false))), true), !any(!vec4<bool>(false, var_1.x, true, var_1.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-109f - var_0), -943f, var_0, -1998f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(497f, var_0), _wgslsmith_f_op_f32(-var_0), var_0, var_0))))));
    return vec2<bool>(true, (-_wgslsmith_clamp_i32(-1i, 7004i, -2147483647i) >> (~(~37499u) % 32u)) > _wgslsmith_mult_i32(~_wgslsmith_clamp_i32(1i, 20679i, 2147483647i), select(2147483647i, -2147483647i, true) & ~0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !func_1(), false));
    let var_1 = _wgslsmith_div_vec4_i32(-(~reverseBits(vec4<i32>(1i, 1i, 1i, 1i))), select(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 27049i, 11257i, -19996i), vec4<i32>(54635i, 2291i, -27692i, 2147483647i)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-26945i, 2147483647i, 2147483647i, 17548i), vec4<i32>(15151i, -4760i, -19855i, 0i), vec4<i32>(4330i, 2147483647i, 2147483647i, -35245i)), vec4<i32>(45013i, 1i, _wgslsmith_mod_i32(13298i, 2147483647i), firstTrailingBit(2147483647i)), ~(-vec4<i32>(54906i, -34245i, 0i, 2147483647i))), vec4<i32>(2147483647i, -(~(-1i)), 1i, 8913i), func_1().x || !all(vec2<bool>(false, false))));
    var var_2 = firstTrailingBit(~4968u ^ ~u_input.a.x);
    let var_3 = abs(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(55965u, 0u, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 46382u, u_input.a.x, u_input.a.x), vec4<u32>(31892u, u_input.a.x, 68202u, u_input.a.x))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(36716u, 4294967295u, 4294967295u, u_input.a.x), vec4<u32>(96556u, 4294967295u, 11938u, u_input.a.x))) << (~vec4<u32>(u_input.a.x, 9454u, abs(4294967295u), 4294967295u) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(round(-407f)))), firstLeadingBit(var_3), 4294967295u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-907f, -1961f), _wgslsmith_f_op_f32(step(1556f, 1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-199f, -836f) * 2542f)))), _wgslsmith_mod_u32(~(~u_input.a.x), 1u) & ~4294967295u);
}

