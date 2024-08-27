struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    return Struct_1(u_input.a.x, vec4<bool>(!(2147483647i <= arg_1), true, true, true), !vec3<bool>(!select(true, false, true), any(vec2<bool>(false, true)), any(vec2<bool>(true, true))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: i32) -> vec2<i32> {
    let var_0 = 59656i;
    let var_1 = func_2(_wgslsmith_f_op_f32(select(arg_1, -537f, ~_wgslsmith_clamp_i32(2147483647i, -54924i, 457i) >= ~(-2147483647i))), arg_2);
    var var_2 = Struct_1(~var_1.a, !var_1.b, vec3<bool>(!(select(true, var_1.c.x, var_1.b.x) == false), false, (~var_1.a | func_2(-1000f, 0i).a) > 4294967295u));
    var_2 = Struct_1(u_input.a.x, vec4<bool>(all(func_2(_wgslsmith_f_op_f32(-arg_1), -19466i).b.wwz), false, !(!var_2.b.x), var_1.b.x), var_2.b.zwz);
    var_2 = var_1;
    return u_input.c;
}

fn func_3() -> u32 {
    var var_0 = ~(min(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(38043u, u_input.a.x, 9006u, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 16416u, 1u), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))), abs(min(vec4<u32>(29005u, 1u, u_input.a.x, 4294967295u), vec4<u32>(17050u, 4294967295u, 19996u, 4294967295u)))) & vec4<u32>(~(u_input.a.x | 1u), ~44199u, ~37521u, u_input.a.x | _wgslsmith_div_u32(19536u, u_input.a.x)));
    var_0 = vec4<u32>(45915u, 36725u, max((~var_0.x ^ _wgslsmith_clamp_u32(var_0.x, 55231u, 0u)) << (~82726u % 32u), 1u), max(27229u, ~(~u_input.a.x)));
    var var_1 = Struct_1(~4294967295u, vec4<bool>(true, true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)) || any(vec4<bool>(true, true, true, true)), true), !(!vec3<bool>(false, all(vec3<bool>(false, false, false)), -38416i != u_input.c.x)));
    var_1 = Struct_1(7052u, select(vec4<bool>(true, var_1.b.x, true, var_1.b.x), select(!select(vec4<bool>(false, true, false, var_1.c.x), vec4<bool>(true, var_1.b.x, false, false), vec4<bool>(var_1.c.x, true, true, true)), var_1.b, var_1.c.x && (var_0.x > 85870u)), -190f != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1457f)))), select(var_1.c, func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-148f, -764f))), _wgslsmith_dot_vec4_i32(vec4<i32>(-9079i, u_input.b, u_input.c.x, 33503i), ~vec4<i32>(u_input.b, 0i, 42348i, u_input.b))).c, vec3<bool>(true, 250f < _wgslsmith_f_op_f32(select(-1055f, 1000f, true)), true)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-602f * _wgslsmith_f_op_f32(-528f - 293f)), _wgslsmith_f_op_f32(min(-1173f, _wgslsmith_f_op_f32(trunc(-626f)))), !var_1.c.x && true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-462f)) * _wgslsmith_f_op_f32(step(364f, 2128f))))), -315f);
    return ~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 13449u, 19839u, 36345u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 25627u, var_0.x, 4294967295u), vec4<u32>(17092u, var_1.a, u_input.a.x, 38456u)), ~vec4<u32>(var_0.x, var_0.x, 40692u, 16361u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a.xx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1188f - _wgslsmith_f_op_f32(f32(-1f) * -684f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -153f) - -518f)), ~(-u_input.c.x) ^ _wgslsmith_mod_i32((u_input.b << (5032u % 32u)) << (_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.xy) % 32u), u_input.b));
    var var_1 = Struct_1(_wgslsmith_mult_u32(func_3(), ~u_input.a.x), select(func_2(_wgslsmith_f_op_f32(min(-1030f, _wgslsmith_f_op_f32(step(-1588f, -810f)))), u_input.b).b, select(vec4<bool>(true, false, any(vec2<bool>(true, false)), var_0.x != u_input.c.x), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, any(vec2<bool>(true, true)))), vec4<bool>(true, true, select(true, true, true), any(vec3<bool>(true, false, false)))), vec3<bool>(all(func_2(-710f, -53569i).b.wxx), true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))));
    let var_2 = vec3<i32>(-var_0.x, 51490i, reverseBits(1i));
    var var_3 = vec2<u32>(0u, 15867u);
    let var_4 = func_2(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(1057f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-2175f)), _wgslsmith_div_f32(-857f, -167f))))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -3159i, var_0.x), firstLeadingBit(var_2.x), u_input.c.x), _wgslsmith_clamp_vec3_i32(-_wgslsmith_sub_vec3_i32(var_2, vec3<i32>(var_2.x, -2147483647i, 0i)), var_2, _wgslsmith_sub_vec3_i32(min(vec3<i32>(u_input.c.x, u_input.b, -1i), var_2), abs(vec3<i32>(22619i, var_0.x, 21303i))))));
    var_1 = var_4;
    let var_5 = func_2(-1464f, -countOneBits(var_0.x));
    let var_6 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, firstLeadingBit(1659u), 1u), firstTrailingBit(var_1.a)), select(!vec4<bool>(true, all(var_5.c), !var_4.b.x, true), vec4<bool>(!(false || var_1.c.x), !(var_5.c.x || true), var_1.c.x, func_2(_wgslsmith_f_op_f32(-1000f * 1830f), var_0.x).c.x), var_4.c.x), vec3<bool>(false && ((var_5.a & 4294967295u) >= ~var_4.a), var_1.b.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2072f, 509f, 1120f) * vec3<f32>(1487f, -135f, 151f)))))), reverseBits(select(~var_6.a << (var_6.a % 32u), var_4.a, var_1.c.x)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_1.a, u_input.a.x), 47314u), 4294967295u), firstLeadingBit(var_2.xz) >> (u_input.a.xx % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-276f, -537f, 535f) - vec3<f32>(774f, 304f, 1260f)) - vec3<f32>(-2746f, 2186f, -513f))))));
}

