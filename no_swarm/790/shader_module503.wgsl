struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec3<f32>) -> f32 {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.yyx & vec3<i32>(1i, -23212i, 79121i), vec3<i32>(_wgslsmith_mult_i32(1i, 0i), _wgslsmith_sub_i32(u_input.b, 2147483647i), u_input.b)) & ~_wgslsmith_dot_vec3_i32(u_input.c.yxw, u_input.c.xzz), u_input.c.x);
    let var_1 = -_wgslsmith_add_vec4_i32(u_input.c, ~vec4<i32>(33505i, max(-2147483647i, -30473i), ~var_0.x, _wgslsmith_mod_i32(2147483647i, u_input.b)));
    let var_2 = arg_0.c.a.x;
    var var_3 = ~countOneBits(u_input.c.x);
    let var_4 = ~select(select(~vec3<i32>(u_input.c.x, var_0.x, var_0.x), select(-vec3<i32>(var_1.x, var_1.x, var_0.x), vec3<i32>(u_input.b, -1i, var_0.x), select(vec3<bool>(var_2, arg_0.b.a.x, var_2), vec3<bool>(var_2, arg_0.c.a.x, var_2), vec3<bool>(var_2, false, true))), vec3<bool>(true, true, !arg_0.e)), firstTrailingBit(~vec3<i32>(var_0.x, 37242i, 1i)), arg_0.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -873f), -596f)) - 544f)));
}

fn func_2() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(abs(-568f)), _wgslsmith_f_op_f32(func_3(Struct_4(vec3<u32>(1u, 49532u, u_input.a.x), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(false, true, true, true)), u_input.a.x, true), 46513u, vec3<f32>(-536f, -1037f, 707f))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-396f - _wgslsmith_f_op_f32(min(329f, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -1481f))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), -1000f));
    let var_1 = ~u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -418f) * vec4<f32>(490f, var_0.x, var_0.x, -987f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(531f + _wgslsmith_f_op_f32(-996f - var_0.x)), var_0.x) * vec4<f32>(-166f, _wgslsmith_f_op_f32(trunc(-649f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * -539f), 795f))));
    let var_3 = Struct_2(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), true)));
    return ~_wgslsmith_sub_vec4_u32(min(vec4<u32>(var_1, u_input.a.x, ~30094u, u_input.a.x), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(49015u, u_input.a.x, var_1, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)))), abs(firstTrailingBit(select(vec4<u32>(var_1, var_1, 1u, var_1), vec4<u32>(58677u, 4294967295u, u_input.a.x, u_input.a.x), vec4<bool>(true, var_3.a.x, var_3.a.x, var_3.a.x)))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = -2147483647i << (0u % 32u);
    var var_1 = true;
    var var_2 = arg_0;
    var var_3 = true;
    let var_4 = _wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(u_input.a.x, 0u, 39864u), ~0u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), 1u), 33074u), _wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.a.x, 0u, 1u, 4294967295u), ~vec4<u32>(0u, u_input.a.x, 20552u, u_input.a.x), u_input.a.x < 12601u), (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u) ^ vec4<u32>(46458u, u_input.a.x, u_input.a.x, u_input.a.x)) & ~vec4<u32>(0u, u_input.a.x, 23482u, u_input.a.x))) >> ((countOneBits(_wgslsmith_add_vec4_u32(func_2(), ~vec4<u32>(1u, 47074u, u_input.a.x, u_input.a.x))) << ((vec4<u32>(u_input.a.x >> (u_input.a.x % 32u), 4294967295u, u_input.a.x, 0u) >> ((~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x) | (vec4<u32>(41301u, 1u, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, 63083u, u_input.a.x, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f) + -259f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1887f + _wgslsmith_f_op_f32(-2366f + -1338f)))) - -547f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(522f, _wgslsmith_f_op_f32(125f * 440f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -999f) * _wgslsmith_div_f32(575f, 231f)), _wgslsmith_div_f32(-1586f, _wgslsmith_f_op_f32(2686f - 292f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(213f, 1f, _wgslsmith_f_op_f32(func_1(Struct_1(vec4<bool>(true, true, false, true)))))))));
    let var_2 = var_1.x;
    let var_3 = select(vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), -351f < var_1.x, false & (-14553i != max(var_0, 2147483647i))), !vec3<bool>(any(vec2<bool>(true, true)), true, select(false, true, true) | any(vec4<bool>(true, false, true, false))), vec3<bool>(true, true | ((u_input.a.x == u_input.a.x) & (u_input.a.x <= u_input.a.x)), true));
    var var_4 = var_1.xx;
    var_4 = _wgslsmith_f_op_vec2_f32(-var_1.zx);
    var_4 = vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2)), var_4.x);
    var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.xz)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_2, var_1.x), var_1.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_4.x)), -261f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.xy, var_1.zz))), max(~firstTrailingBit(4294967295u) ^ ~1u, ~u_input.a.x >> ((countOneBits(59582u) >> (1u % 32u)) % 32u)));
}

