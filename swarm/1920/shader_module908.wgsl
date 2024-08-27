struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<f32>(1309f, -1846f, -1187f), vec3<bool>(false, false, true), 1i), Struct_1(vec3<f32>(2521f, -1000f, -948f), vec3<bool>(false, true, true), 12973i), Struct_1(vec3<f32>(-1068f, 477f, -1817f), vec3<bool>(false, true, false), 27442i), Struct_1(vec3<f32>(-1533f, 1126f, 1377f), vec3<bool>(true, false, false), 0i), Struct_1(vec3<f32>(446f, 349f, 1989f), vec3<bool>(true, true, true), -32604i), Struct_1(vec3<f32>(1457f, -1494f, -297f), vec3<bool>(false, true, false), 20086i));

var<private> global1: f32 = 1633f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = select(~countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, arg_1, arg_1, arg_1), vec4<i32>(arg_1, 0i, 2147483647i, arg_1))), max(~_wgslsmith_mult_vec4_i32(vec4<i32>(33692i, -54063i, -19527i, arg_1), vec4<i32>(arg_1, -10701i, 6907i, arg_1)), vec4<i32>(arg_1, 0i, 2147483647i, 31346i) ^ (vec4<i32>(62589i, arg_1, 18601i, 0i) << (vec4<u32>(u_input.a, 58946u, 13416u, u_input.d) % vec4<u32>(32u)))), vec4<bool>(!any(vec3<bool>(true, true, true)), false, -arg_1 <= -2147483647i, true)) & select(~_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, -2147483647i, -17274i, 71508i), vec4<i32>(-2147483647i, -1i, -2147483647i, arg_1)), vec4<i32>(arg_1, arg_1, 0i, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, arg_1, arg_1, arg_1), vec4<i32>(15284i, 4586i, arg_1, 1i), vec4<i32>(-1i, arg_1, 31306i, arg_1))), _wgslsmith_sub_vec4_i32(max(countOneBits(vec4<i32>(arg_1, 1i, -1i, 14143i)), vec4<i32>(arg_1, 11654i, arg_1, arg_1) | vec4<i32>(-2147483647i, arg_1, 50104i, -26393i)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(arg_1, arg_1, arg_1, -2147483647i)), vec4<i32>(arg_1, 2147483647i, 26394i, arg_1))), vec4<bool>(all(vec2<bool>(true, false)), true, true, all(vec3<bool>(true, false, true))));
    let var_1 = global0[_wgslsmith_index_u32(~(~(~6708u)), 6u)];
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1140f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x) - -683f), _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-323f, -674f, var_1.a.x)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.a * var_1.a), vec3<f32>(var_1.a.x, 260f, var_1.a.x), true))), !(_wgslsmith_f_op_f32(step(-118f, -777f)) == var_1.a.x))), select(var_1.b, var_1.b, var_1.b.x), var_1.c);
    global0 = array<Struct_1, 6>();
    var_0 = _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(0i, 37155i), arg_1, max(~(-1i), var_0.x), 0i)), -(abs(vec4<i32>(-22878i, var_0.x, var_2.c, arg_1) & vec4<i32>(var_2.c, var_0.x, var_2.c, var_0.x)) & _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.c, 0i, 31352i, var_2.c), countOneBits(vec4<i32>(var_1.c, -1i, -22494i, arg_1)))));
    return var_1.a.x;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<i32>) -> f32 {
    let var_0 = arg_2;
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.b, firstLeadingBit(arg_2.x))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-1101f + _wgslsmith_f_op_f32(trunc(1447f)))))));
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var var_1 = vec4<bool>(all(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_0), arg_1), arg_0)), 4294967295u > u_input.d, arg_1, !(_wgslsmith_div_u32(u_input.c.x, ~8665u) <= firstTrailingBit(~1u)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -220f)))), -1149f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -410f), _wgslsmith_f_op_f32(abs(1052f))))));
}

fn func_1() -> bool {
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f - 1039f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1274f))) * 508f)));
    global1 = -258f;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1376f, -1000f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(397f, 567f) - vec2<f32>(-262f, 1183f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1214f, -1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-103f, -418f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -640f), -736f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1063f)), _wgslsmith_f_op_f32(func_2(false, false, vec3<i32>(-3509i, 1i, -43539i)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(423f, -404f, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x))), vec3<f32>(546f, var_0.x, -1096f), vec3<bool>(false, true, true)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1058f)))), _wgslsmith_f_op_f32(f32(-1f) * -1360f), _wgslsmith_f_op_f32(round(var_0.x)))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, any(vec2<bool>(true, true))), vec3<bool>(true, true, true)), max(0i, ~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(31092i, 30577i, 20466i), min(65603i, 1i))));
    var var_2 = Struct_1(vec3<f32>(305f, _wgslsmith_f_op_f32(func_2(all(var_1.b.yy) & !var_1.b.x, all(!vec4<bool>(false, false, var_1.b.x, false)), -(~vec3<i32>(var_1.c, var_1.c, -2147483647i)))), _wgslsmith_f_op_f32(f32(-1f) * -880f)), var_1.b, var_1.c);
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 6>();
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1047f)), _wgslsmith_f_op_f32(782f * _wgslsmith_div_f32(-559f, _wgslsmith_f_op_f32(1757f - 1536f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), 0i);
    var_0 = Struct_1(var_0.a, vec3<bool>(var_0.b.x, true, func_1()), -_wgslsmith_add_i32(select(71905i, -32413i, var_0.b.x) ^ reverseBits(-2147483647i), var_0.c));
    let var_1 = var_0.b.x;
    let var_2 = global0[_wgslsmith_index_u32(~57377u | u_input.c.x, 6u)];
    var var_3 = _wgslsmith_div_i32(-1i, ~0i);
    var var_4 = global0[_wgslsmith_index_u32(max(u_input.c.x, 4294967295u), 6u)];
    var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(var_2.a + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -125f), var_0.a.x, -892f)), !var_2.b, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -var_2.c, _wgslsmith_f_op_f32(-1011f + 1041f), var_0.c);
}

