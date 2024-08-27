struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, arg_1.c, -1065f, arg_1.c)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(454f, arg_1.c, arg_1.c, 453f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a * vec4<f32>(233f, arg_1.a.x, arg_1.a.x, arg_1.c)))))), !all(!vec3<bool>(arg_0, arg_0, arg_1.b)), _wgslsmith_f_op_f32(-arg_1.c), vec4<i32>(23876i, arg_1.d.x, arg_1.d.x << (~(u_input.a ^ u_input.a) % 32u), select(firstTrailingBit(arg_1.d.x), arg_1.d.x, false)));
    return -(-arg_1.d.x | ~_wgslsmith_sub_i32(arg_1.d.x, -1i)) & (arg_1.d.x & arg_1.d.x);
}

fn func_3() -> i32 {
    var var_0 = select(min(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-13958i, 27537i) >> (_wgslsmith_mult_u32(0u, 4294967295u) % 32u), ~69010i), -(i32(-1i) * -10558i)), -(_wgslsmith_sub_i32(max(-2147483647i, -27371i), ~(-31690i)) << (firstTrailingBit(u_input.a) % 32u)), !((_wgslsmith_dot_vec2_i32(vec2<i32>(-5451i, -2147483647i), vec2<i32>(0i, -3090i)) | 1i) == ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 62119i, 0i, -13879i), vec4<i32>(-1i, 2147483647i, -41532i, -3340i))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2445f * _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -795f)))))));
    var_0 = -_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-10713i, abs(-1i), 7755i), reverseBits(firstTrailingBit(vec3<i32>(-11602i, -13911i, 39870i)))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(8578i, -23011i, 2147483647i), vec3<i32>(-25057i, -1i, 2147483647i)) ^ -23763i, _wgslsmith_sub_i32(1i, 0i), 34971i));
    var_0 = max(-22134i, abs(1i));
    var_0 = (_wgslsmith_add_i32(select(0i, _wgslsmith_mult_i32(-1i, -35798i), true), ~(~(-16122i))) << (~u_input.a % 32u)) & 52060i;
    return -(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(-2147483647i, 27381i, 2147483647i)), vec3<i32>(36158i, -2147483647i, 2147483647i) >> (vec3<u32>(u_input.a, u_input.a, 18014u) % vec3<u32>(32u))) >> (~(~43525u) % 32u));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, _wgslsmith_mult_i32(~arg_2.x, func_3()) << (16660u % 32u), _wgslsmith_mod_i32(-1i, ~(arg_1 | arg_2.x)), _wgslsmith_add_i32(2147483647i, -2147483647i)), _wgslsmith_add_vec4_i32(arg_2, _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -19534i, _wgslsmith_sub_i32(arg_1, arg_1), arg_1 ^ -1i, func_2(arg_0, Struct_1(vec4<f32>(-1426f, -1062f, -564f, -717f), true, 384f, arg_2))), vec4<i32>(-1i) * -vec4<i32>(0i, -2147483647i, arg_2.x, arg_1))));
    var var_1 = Struct_1(vec4<f32>(837f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-534f, -670f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1388f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-813f + _wgslsmith_f_op_f32(354f + -1000f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -987f)))), -1000f), arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1129f, _wgslsmith_f_op_f32(611f + 1502f)) - 847f))), ~arg_2);
    var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1625f)))), _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(abs(var_1.a.x)))), 637f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(151f, var_1.c) * -1166f))), var_1.b, _wgslsmith_f_op_f32(round(872f)), -vec4<i32>(i32(-1i) * -arg_1, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-2147483647i, 1i, arg_2.x), _wgslsmith_sub_i32(arg_2.x, var_0.x)), 2147483647i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 10093i, var_0.x, -27034i), var_1.d))));
    let var_2 = var_0;
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c, -267f, var_1.c, -740f))), vec4<f32>(912f, 1207f, var_1.c, var_1.c))))), true, _wgslsmith_f_op_f32(-1458f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-261f - _wgslsmith_f_op_f32(round(var_1.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2099f + 2049f))))), -_wgslsmith_mult_vec4_i32(~(var_2 & arg_2), _wgslsmith_mult_vec4_i32(arg_2 & vec4<i32>(var_0.x, var_2.x, -2830i, -2147483647i), _wgslsmith_mult_vec4_i32(var_0, var_2))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.c, 760f)))), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -780f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.x)))) * var_1.a), arg_0, _wgslsmith_div_f32(-751f, var_1.a.x), var_1.d);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-448f + -457f), -2709f))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1474f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -2756i, vec4<i32>(func_2(true, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1868f, 876f, 1546f, -1104f)), true, _wgslsmith_f_op_f32(-640f * -262f), ~vec4<i32>(0i, -18503i, -12277i, 31897i))), -(~(~2147483647i)), ~(~(~1i)), func_3()));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1919f, var_0.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c))), false));
    let var_2 = vec4<u32>(_wgslsmith_div_u32(~u_input.a >> (~_wgslsmith_div_u32(1u, u_input.a) % 32u), 37889u), _wgslsmith_mod_u32(countOneBits(countOneBits(65895u | u_input.a)), countOneBits(countOneBits(_wgslsmith_sub_u32(15627u, 0u)))), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 7709u, 64427u), ~vec4<u32>(0u, u_input.a, u_input.a, 1u)) ^ 12591u), _wgslsmith_mult_u32(u_input.a, 0u));
    let var_3 = -(_wgslsmith_mult_vec4_i32((var_0.d & vec4<i32>(3274i, 22225i, -38519i, -2147483647i)) | vec4<i32>(var_0.d.x, -1i, -1i, var_0.d.x), var_0.d) ^ var_0.d);
    var_0 = func_4(var_0.b, _wgslsmith_mult_i32(var_0.d.x, -func_4(false, var_0.d.x, var_3).d.x ^ _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.d.x, var_3.x, var_3.x), var_3.xzx), var_0.d.zxw)), vec4<i32>(2147483647i, ~(-var_0.d.x << (_wgslsmith_clamp_u32(1u, 0u, var_2.x) % 32u)), _wgslsmith_div_i32(var_3.x, _wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(-1i, var_3.x, var_0.d.x))), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-30959i, var_0.d.x, var_0.d.x), vec3<i32>(var_3.x, var_0.d.x, 2147483647i)), -2147483647i), ~(var_0.d.x ^ var_3.x))));
    return func_4(true, -1i << (firstTrailingBit(abs(~52098u)) % 32u), -(~(~(~vec4<i32>(var_0.d.x, 2147483647i, 1i, var_0.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~(vec2<u32>(u_input.a, 31368u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), ~firstTrailingBit(vec2<u32>(1u, 4294967295u))), countOneBits(vec2<u32>(u_input.a, 1u))), ~_wgslsmith_sub_vec2_u32(select(vec2<u32>(72650u, u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, u_input.a)), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<u32>(1u, 1u)), vec2<u32>(firstLeadingBit(firstTrailingBit(~u_input.a)), 1u));
    let var_1 = func_1();
    var var_2 = any(!(!(!vec4<bool>(var_1.b, var_1.b, var_1.b, true))));
    var var_3 = vec3<u32>(u_input.a, ~countOneBits(23191u), 22641u);
    var_3 = max(vec3<u32>(12170u, ~max(36846u, 12662u), var_0.x), ~(_wgslsmith_sub_vec3_u32(vec3<u32>(131826u, var_0.x, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 0u, 36574u), vec3<u32>(0u, 14235u, 49865u), vec3<u32>(4294967295u, 1907u, u_input.a))) & (~vec3<u32>(67256u, 1u, var_0.x) | vec3<u32>(73595u, var_3.x, u_input.a))));
    var_2 = false;
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.a.x));
}

