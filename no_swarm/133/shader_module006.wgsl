struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    var var_0 = -arg_0.zzy;
    let var_1 = vec4<bool>(all(vec4<bool>(false, !all(vec3<bool>(false, true, true)), min(u_input.c, u_input.b) != ~u_input.b, all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true))))), false, true, false);
    var var_2 = ~vec2<i32>(~(-var_0.x), ~(-u_input.d));
    var var_3 = true;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-597f))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1149f, 129f) + vec2<f32>(-1000f, 1793f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-259f, -1614f))))), vec2<f32>(-161f, _wgslsmith_f_op_f32(372f * -474f)), !(0u < u_input.b)))), vec2<bool>(all(vec3<bool>(true, true, true)), false), -609f, vec3<f32>(_wgslsmith_f_op_f32(-487f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(978f - -754f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-447f)), 169f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(682f * 1009f) + -533f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.d, -2147483647i, 3447i, u_input.d))) + _wgslsmith_f_op_f32(f32(-1f) * -642f)))));
    var var_1 = vec3<bool>(false, u_input.a > u_input.b, var_0.b.x);
    var_1 = !(!vec3<bool>(1018f != _wgslsmith_f_op_f32(-var_0.c), !var_1.x, _wgslsmith_f_op_f32(-var_0.d.x) > var_0.a.x));
    var var_2 = 38562u;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, 921f)) - _wgslsmith_f_op_vec2_f32(-var_0.d.yz))))), select(select(select(vec2<bool>(var_1.x, false), vec2<bool>(false, false), select(var_1.x, true, var_1.x)), vec2<bool>(var_1.x, false), select(select(var_1.zz, vec2<bool>(true, true), vec2<bool>(var_0.b.x, true)), vec2<bool>(var_0.b.x, true), select(var_0.b, var_0.b, var_0.b))), var_1.xz, vec2<bool>(var_1.x, all(select(var_1.yy, var_1.yy, false)))), var_0.c, vec3<f32>(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(f32(-1f) * -1773f))), -1408f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-898f, 732f, all(vec4<bool>(true, var_0.b.x, true, var_1.x)))))));
    return Struct_1(var_0.d.zx, select(var_0.b, var_0.b, !vec2<bool>(var_3.b.x, false)), var_3.c, var_0.d);
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_div_i32(-28891i, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d, u_input.d, max(u_input.d, u_input.d), u_input.d), vec4<i32>(31532i, i32(-1i) * -u_input.d, -39264i, ~firstLeadingBit(1i))));
    var var_1 = Struct_4(vec3<bool>(true, arg_0.b.x, 1252f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(-945f + 878f))), ~u_input.c, vec3<u32>(2850u, 4294967295u, abs(~firstLeadingBit(u_input.c))), -361f);
    let var_2 = Struct_2(arg_0.b.x, 571f);
    var var_3 = firstTrailingBit(countOneBits(2147483647i)) & var_0;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(120f - var_1.d), arg_0.c) - -648f)), 174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -593f)));
    return true == !(min(3360u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.c), vec4<u32>(7144u, 7154u, u_input.b, u_input.a))) <= abs(1u));
}

fn func_1() -> vec3<bool> {
    var var_0 = u_input.d;
    var var_1 = 1u;
    let var_2 = -2548f;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2 - var_2), _wgslsmith_f_op_f32(-var_2), var_2) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2664f), _wgslsmith_f_op_f32(f32(-1f) * -273f), -996f))));
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-144f, 151f)) * _wgslsmith_f_op_vec2_f32(sign(var_3.zz))))))), var_3.xy);
    return vec3<bool>(all(select(vec4<bool>(true, false, true, all(vec2<bool>(true, true))), vec4<bool>(u_input.c != u_input.a, true, select(false, true, false), all(vec3<bool>(false, true, true))), func_4(func_2()))), any(vec2<bool>(false, u_input.a != ~u_input.c)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(_wgslsmith_clamp_i32((u_input.d | u_input.d) << (~_wgslsmith_sub_u32(u_input.c, u_input.b) % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, u_input.d, 0i), vec3<i32>(62666i, 2404i, u_input.d)) << (firstLeadingBit(69626u) % 32u), u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), firstLeadingBit(~min(vec2<i32>(7190i, 6800i), vec2<i32>(10699i, 2147483647i)))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2041f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-741f * 1549f) - 336f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-118f, _wgslsmith_f_op_f32(567f - _wgslsmith_div_f32(391f, -2233f)))) + _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1000f)))))));
    let var_2 = ~vec4<u32>(_wgslsmith_sub_u32(13447u | u_input.a, reverseBits(~1u)), 43601u, abs(abs(_wgslsmith_mult_u32(44170u, 94115u))), u_input.a);
    var_1 = _wgslsmith_f_op_f32(-1000f * 1000f);
    let var_3 = Struct_4(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_1(), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true)), var_2.x >> (var_2.x % 32u), _wgslsmith_add_vec3_u32(min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 48371u, var_2.x), vec3<u32>(u_input.b, var_2.x, var_2.x)) << (var_2.yxx % vec3<u32>(32u)), ~reverseBits(var_2.xzw)), firstTrailingBit(max(~vec3<u32>(79828u, var_2.x, u_input.a), vec3<u32>(var_2.x, 0u, u_input.a)))), 516f);
    var_0 = -6807i;
    let var_4 = ~var_2 ^ ~vec4<u32>(~(~var_3.c.x), ~(var_3.b >> (37390u % 32u)), firstLeadingBit(~0u), var_2.x);
    var_1 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(min(_wgslsmith_div_i32(u_input.d, _wgslsmith_clamp_i32(u_input.d, u_input.d, u_input.d)), max(i32(-1i) * -2147483647i, ~(-37390i))), ~reverseBits(1i), -2147483647i), func_2().d.x, var_2.x);
}

