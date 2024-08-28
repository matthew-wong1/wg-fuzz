struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x - -257f) + _wgslsmith_f_op_f32(arg_2.a.x * arg_2.a.x));
    return ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(~10861u, select(1u, arg_0, true)) ^ ~(~104684u), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(1u, arg_0), ~(~arg_0), 1u));
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(~firstTrailingBit(vec3<u32>(0u, 1u, 0u))), vec3<u32>(1u, 1u, 1u)), ~select(1u, 1u, true));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(775f, -425f, -208f), vec3<f32>(-1000f, 122f, -417f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-362f, -1394f, -1000f) - vec3<f32>(-1000f, 1233f, -1114f)), vec3<bool>(true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1096f), _wgslsmith_f_op_f32(-1630f + -1208f), _wgslsmith_f_op_f32(trunc(249f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1384f, 1000f)), vec2<bool>(true, true))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1474f, -1634f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1913f, 1647f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(647f, 1567f)))));
    let var_2 = ~(~func_3(1u, abs(u_input.b), var_1, -u_input.c.x)) <= firstTrailingBit(~max(reverseBits(7396u), 1u));
    let var_3 = vec3<bool>(var_2, !var_2, any(!(!vec3<bool>(var_2, false, false))));
    var_0 = ~_wgslsmith_sub_u32(~84249u, select(firstLeadingBit(32894u), 1u, select(var_2, var_2, var_2)) | func_3(67461u, u_input.a.x & -2147483647i, Struct_1(var_1.a, var_1.b), i32(-1i) * -2147483647i));
    return max(~vec4<i32>(~abs(u_input.d), -u_input.a.x | 38504i, max(i32(-1i) * -2147483647i, firstTrailingBit(u_input.d)), ~u_input.a.x), min(vec4<i32>(1i, abs(-7186i), _wgslsmith_mult_i32(u_input.a.x, u_input.b), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c, u_input.a.xx), max(u_input.a.zx, vec2<i32>(-2147483647i, u_input.a.x)))), _wgslsmith_add_vec4_i32(vec4<i32>(max(-38553i, 5015i), min(u_input.b, u_input.d), ~(-8082i), select(-2147483647i, 0i, false)), vec4<i32>(~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-41864i, u_input.d), u_input.a.yy), abs(-2147483647i), i32(-1i) * -1i))));
}

fn func_1() -> Struct_1 {
    var var_0 = select(func_2(), -_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.d, u_input.c.x, -20229i, u_input.b), vec4<i32>(u_input.d, 2147483647i, u_input.d, -8028i) >> (~vec4<u32>(79862u, 48272u, 4294967295u, 44245u) % vec4<u32>(32u))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false)));
    var var_1 = vec3<u32>(0u, 66255u, ~(~7850u));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1f)))), 1f, 1774f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-481f, -1045f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(331f, 359f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1391f * 814f), _wgslsmith_f_op_f32(abs(256f))))));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-141f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-2253f)), var_2.a.x)))), 836f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x * -542f)), _wgslsmith_f_op_f32(min(-192f, 1f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -837f)));
    var var_4 = ~vec2<u32>(74069u, var_1.x);
    return Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(var_3.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.b.x, var_3.a.x, -425f), vec3<f32>(var_3.b.x, var_2.b.x, -517f)))), vec3<bool>(true, any(vec3<bool>(false, true, true)), 12307i >= u_input.d))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(step(-1006f, var_2.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = abs(u_input.a.yx);
    let var_2 = true;
    var_0 = Struct_1(_wgslsmith_div_vec3_f32(var_0.a, var_0.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x * -1358f)))), -1286f));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

