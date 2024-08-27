struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: vec3<i32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 11u)];
    var var_1 = global0[_wgslsmith_index_u32(~1u, 11u)];
    global0 = array<Struct_1, 11>();
    let var_2 = ~firstLeadingBit(~1u);
    var_1 = global0[_wgslsmith_index_u32(var_2, 11u)];
    return 42567u;
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_sub_vec2_i32(select(u_input.a.zz, u_input.a.xy, true), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.a.x, u_input.a.x)), -u_input.a.xz), -u_input.a.xx));
    let var_1 = 1u;
    let var_2 = all(!vec2<bool>(true | all(vec4<bool>(true, false, true, false)), false));
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1602f, arg_0, 459f, arg_0) + vec4<f32>(arg_0, 635f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1064f, -906f, arg_0, arg_0) * vec4<f32>(-115f, arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(277f, 500f, arg_0, arg_0) - vec4<f32>(639f, -818f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, arg_0, -1709f, arg_0)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-749f, arg_0, arg_0, -1417f) - vec4<f32>(-1000f, -292f, arg_0, -1000f)), vec4<f32>(1147f, arg_0, 1000f, 602f)))))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(18546u, 56494u, var_1), vec3<u32>(var_1, 34888u, var_1)) ^ (~vec3<u32>(var_1, var_1, var_1) << ((vec3<u32>(var_1, var_1, var_1) & vec3<u32>(1u, 67641u, 15580u)) % vec3<u32>(32u))), vec3<u32>(~68155u, func_3(global0[_wgslsmith_index_u32(var_1, 11u)], var_0, -1355f, vec3<i32>(1i, u_input.a.x, u_input.a.x)), ~(~18698u))), ~(~max(~vec3<u32>(12211u, var_1, var_1), vec3<u32>(0u, 1u, var_1) ^ vec3<u32>(var_1, 1u, 4294967295u))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1087f, 887f)))), _wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f - 109f)) * _wgslsmith_f_op_f32(-1241f + _wgslsmith_f_op_f32(1171f + 682f))), -268f) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1551f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1788f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-654f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))) * _wgslsmith_f_op_f32(1455f + -330f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(865f, 846f)))));
    let var_1 = !(!vec4<bool>(any(vec2<bool>(true, true)), any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true, true));
    global0 = array<Struct_1, 11>();
    var var_2 = _wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(53629u, 1u, 62539u, 32870u)), ~vec4<u32>(0u, 24961u, 4294967295u, 1u))), vec4<u32>(1u, 1u, 1u, 1u) << (vec4<u32>(23913u, firstLeadingBit(42822u), func_2(1733f), 1u >> (0u % 32u)) % vec4<u32>(32u))) & ~vec4<u32>(~1u, 13824u, 25367u, 4294967295u);
    let var_3 = Struct_1(!(var_2.x >= _wgslsmith_mult_u32(var_2.x, var_2.x)), _wgslsmith_f_op_f32(-var_0.x), -u_input.a.x | _wgslsmith_mod_i32(_wgslsmith_mult_i32(-u_input.a.x, ~u_input.a.x), ~u_input.a.x), !vec4<bool>(any(select(var_1.xyx, vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x))), any(var_1.zxw), true, 2072f == var_0.x), var_1.ywx);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1550f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(536f, -217f)), _wgslsmith_f_op_f32(max(-1765f, 593f)), _wgslsmith_f_op_f32(func_1())))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(354f - -1289f), _wgslsmith_f_op_f32(trunc(-1927f)), 1195f))) - vec3<f32>(_wgslsmith_f_op_f32(max(1196f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f)))), 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-550f, _wgslsmith_f_op_f32(-804f - -1292f), any(vec2<bool>(true, false))))))));
    var var_1 = vec2<i32>(-2147483647i, -18439i);
    var_1 = vec2<i32>(var_1.x, abs(var_1.x));
    let var_2 = u_input.a.x < ~min(2147483647i, u_input.a.x);
    var_1 = -abs(u_input.a.xz);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-313f)) + _wgslsmith_f_op_f32(trunc(var_0.x)))));
    let var_4 = min(_wgslsmith_div_i32(-(60161i << (min(51678u, 1u) % 32u)), var_1.x), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, u_input.a.x, min(vec2<u32>(~(~36215u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 20266u, 4294967295u)), ~vec3<u32>(6610u, 1u, 0u))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 124173u), vec2<u32>(0u, 0u)), firstTrailingBit(vec2<u32>(0u, 28417u)) << (vec2<u32>(4294967295u, 26607u) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(1u, 1u)))), _wgslsmith_sub_i32(countOneBits(_wgslsmith_sub_i32(~(-1i), u_input.a.x & var_1.x)), -2147483647i));
}

