struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> vec3<bool> {
    return vec3<bool>(true, true, true);
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    return -210f;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2107f - -962f) + _wgslsmith_f_op_f32(round(-2330f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(1667f, -288f)), -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-251f + _wgslsmith_div_f32(1087f, -359f)) + _wgslsmith_f_op_f32(-1f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(658f, 1350f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1184f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -735f)))));
    var var_1 = 4294967295u;
    var var_2 = Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), any(vec4<bool>(true, true, false, true)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(min(var_0, var_0)), var_0)));
    var_1 = _wgslsmith_add_u32(_wgslsmith_sub_u32(~1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u))), ~(~(~_wgslsmith_mult_u32(17167u, 0u))));
    var_1 = reverseBits(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 4294967295u, ~0u, ~4294967295u), vec4<u32>(max(40453u, 4294967295u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(18698u, 1u), vec2<u32>(13223u, 692u)), ~1u), var_2.a.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 1u, ~40584u), vec4<u32>(12316u, ~4294967295u, ~0u, 1u), vec4<u32>(32659u, 1u, _wgslsmith_div_u32(4294967295u, 38463u), _wgslsmith_div_u32(0u, 4294967295u)))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(990f, var_2.a.b.x)), _wgslsmith_div_f32(var_2.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-147f, -136f))))), var_2.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec3<bool>(false, !any(vec3<bool>(false, true, false)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-561f, -1980f, -328f)) + vec3<f32>(_wgslsmith_f_op_f32(1000f * -362f), _wgslsmith_f_op_f32(sign(-255f)), -1942f))));
    let var_1 = any(func_1());
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1154f, var_0.a.b.x, var_0.a.b.x, 254f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.b.x, var_0.a.b.x, 2544f, 217f), vec4<f32>(var_0.a.b.x, var_0.a.b.x, 1825f, -801f)))), vec4<f32>(_wgslsmith_f_op_f32(var_0.a.b.x + 193f), _wgslsmith_f_op_f32(1000f - -338f), var_0.a.b.x, -937f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(343f, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), vec4<f32>(var_0.a.b.x, var_0.a.b.x, -419f, var_0.a.b.x), vec4<bool>(false, var_0.a.a.x, var_1, var_0.a.a.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), vec4<f32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x))) * vec4<f32>(_wgslsmith_div_f32(var_0.a.b.x, -1052f), _wgslsmith_div_f32(var_0.a.b.x, var_0.a.b.x), var_0.a.b.x, _wgslsmith_div_f32(var_0.a.b.x, 388f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1123f * 1297f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x + var_0.a.b.x)), _wgslsmith_f_op_f32(floor(var_0.a.b.x))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x - 497f))))));
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(func_2()), select(var_0.a.a.x | var_0.a.a.x, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1260f * var_0.a.b.x))) * vec4<f32>(_wgslsmith_f_op_f32(min(866f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-718f, 191f) + _wgslsmith_f_op_f32(-var_0.a.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.x - -1000f) * -402f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_2.x)), -827f))));
    var var_3 = var_0.a;
    var_3 = Struct_1(var_0.a.a, vec3<f32>(var_2.x, _wgslsmith_f_op_f32(var_0.a.b.x * 1000f), _wgslsmith_f_op_f32(func_2())));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-var_3.b.x), var_3.b.x, var_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(122f, var_2.x, -690f, var_3.b.x) - vec4<f32>(var_0.a.b.x, -109f, 776f, -729f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b.x), -684f, 1f, _wgslsmith_f_op_f32(trunc(-809f))))));
    let var_4 = ~(~_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a, 34722i, -37467i), vec3<i32>(~u_input.a, -23800i, 36473i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(946f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-687f * -1305f))))), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(1u, 1u)), vec2<u32>(~_wgslsmith_add_u32(94688u, 32311u), 0u), select(select(firstTrailingBit(vec2<u32>(0u, 4294967295u)), vec2<u32>(1u, 1u), vec2<bool>(true, var_0.a.a.x)), select(min(vec2<u32>(88118u, 0u), vec2<u32>(12384u, 110886u)), select(vec2<u32>(1269u, 0u), vec2<u32>(4542u, 1u), var_3.a.yx), var_0.a.a.yz), true)), firstTrailingBit((u_input.a >> (14327u % 32u)) | ~10405i), select(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(12249u, 18785u, 0u, 7637u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(32806u, 5918u, 59196u, 1u), vec4<u32>(1u, 1u, 25599u, 0u), vec4<u32>(1u, 23223u, 0u, 4294967295u))), select(vec4<u32>(~1u, 135923u, _wgslsmith_mult_u32(28529u, 58729u), _wgslsmith_mult_u32(0u, 14654u)), ~(~vec4<u32>(0u, 41270u, 0u, 29958u)), all(vec4<bool>(var_0.a.a.x, true, var_3.a.x, true))), any(vec2<bool>(true, !var_0.a.a.x))));
}

