struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, 23255i);

var<private> global1: array<u32, 26> = array<u32, 26>(51792u, 151621u, 46437u, 0u, 85066u, 59975u, 45388u, 1u, 69514u, 31391u, 8927u, 1u, 50978u, 1u, 0u, 23838u, 0u, 24341u, 69024u, 0u, 49905u, 1205u, 0u, 19208u, 16983u, 0u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = all(vec3<bool>(true, true, all(vec3<bool>(true, true, true)) & true));
    var var_1 = Struct_1(vec3<i32>(-(-1i ^ global0.x) | global0.x, (global0.x >> (~38065u % 32u)) | -28610i, countOneBits(global0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(48986u, 21768u, 0u, _wgslsmith_dot_vec4_u32(countOneBits(u_input.a), u_input.a)), vec4<u32>(106493u, u_input.a.x | abs(17773u), _wgslsmith_dot_vec3_u32(vec3<u32>(60443u, 3745u, 8058u), u_input.a.xxw), 841u)), reverseBits(~u_input.b), vec3<i32>(_wgslsmith_sub_i32(-global0.x, global0.x), -14859i, _wgslsmith_sub_i32(-1i | global0.x, -(i32(-1i) * -2147483647i))));
    global1 = array<u32, 26>();
    var_1 = Struct_1(reverseBits(_wgslsmith_div_vec3_i32(abs(firstLeadingBit(var_1.a)), vec3<i32>(abs(-1i), -35158i, i32(-1i) * -1i))), ~4294967295u, _wgslsmith_sub_vec3_u32(var_1.c, var_1.c), (vec3<i32>(-27541i, _wgslsmith_sub_i32(global0.x, -13415i), firstTrailingBit(var_1.d.x)) << (vec3<u32>(global1[_wgslsmith_index_u32(13024u, 26u)] << (var_1.b % 32u), 1u, ~25017u) % vec3<u32>(32u))) << (~vec3<u32>(var_1.c.x, var_1.c.x, ~24423u) % vec3<u32>(32u)));
    var_1 = Struct_1(var_1.a, var_1.c.x >> (countOneBits(_wgslsmith_add_u32(~0u, firstTrailingBit(0u))) % 32u), var_1.c, vec3<i32>(var_1.a.x, global0.x, ~(-min(global0.x, 0i))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2298f, -1885f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-592f, -510f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -634f) * _wgslsmith_f_op_f32(551f - 1314f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(729f + 2832f))))));
}

fn func_2(arg_0: vec4<f32>) -> vec4<i32> {
    global0 = vec2<i32>(-1i, global0.x);
    let var_0 = Struct_4(arg_0.yxx);
    var var_1 = -458f;
    let var_2 = vec2<bool>(true, true);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_div_f32(-120f, -763f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(func_3()), -319f);
    return -(~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-37974i, 2147483647i, 27855i, 22160i), vec4<i32>(global0.x, 41038i, global0.x, -2147483647i)), select(vec4<i32>(73724i, global0.x, -1i, 0i), vec4<i32>(global0.x, -33221i, global0.x, global0.x), true)), -(~vec4<i32>(global0.x, -1i, -6982i, 30441i))));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> Struct_2 {
    global1 = array<u32, 26>();
    var var_0 = -513f;
    let var_1 = func_2(vec4<f32>(274f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-979f, _wgslsmith_f_op_f32(sign(191f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -180f))))), _wgslsmith_f_op_f32(round(-296f))));
    let var_2 = Struct_2(~abs(u_input.e & _wgslsmith_mult_u32(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(abs(-354f)), var_1 | vec4<i32>(reverseBits(~(-1i)), 17164i, -(-50321i << (arg_0.x % 32u)), -_wgslsmith_mult_i32(25693i, arg_1)), Struct_1(~(~(~vec3<i32>(global0.x, arg_1, -2147483647i))), arg_0.x, ~vec3<u32>(~11269u, global1[_wgslsmith_index_u32(4294967295u, 26u)] & arg_0.x, firstTrailingBit(global1[_wgslsmith_index_u32(arg_0.x, 26u)])), -(~(-vec3<i32>(arg_1, 2147483647i, 0i)))));
    let var_3 = false;
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32, arg_3: vec3<i32>) -> vec3<f32> {
    global0 = arg_1 | select(arg_1, ~_wgslsmith_mod_vec2_i32(arg_3.yy, ~vec2<i32>(arg_1.x, arg_1.x)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), !all(vec2<bool>(true, true))));
    global0 = func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2 * -742f), _wgslsmith_div_f32(arg_0.b, 536f), 813f, _wgslsmith_f_op_f32(f32(-1f) * -1108f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b, arg_0.b, arg_0.b, 339f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 661f, -784f, arg_0.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1296f, arg_0.b, arg_0.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-186f, arg_0.b, -396f, 2817f))))))).xy;
    global1 = array<u32, 26>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, -350f), vec2<f32>(948f, arg_0.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.b)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(func_1(vec3<u32>(1u, u_input.e, u_input.e), arg_3.x).b, arg_2), vec2<f32>(_wgslsmith_f_op_f32(round(arg_2)), -214f), vec2<bool>(true, true))))));
    let var_1 = Struct_2(min(23080u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(firstLeadingBit(u_input.d.x), ~66365u), ~4294967295u)), -1000f, -(~vec4<i32>(_wgslsmith_sub_i32(arg_1.x, arg_1.x), -global0.x, min(-2147483647i, 2147483647i), global0.x | 7146i)), Struct_1(select(_wgslsmith_mod_vec3_i32(func_2(vec4<f32>(1026f, -1312f, var_0.x, 679f)).zxx, select(arg_0.c.yzx, arg_3, vec3<bool>(false, false, true))), vec3<i32>(4082i, -20307i, global0.x), select(any(vec2<bool>(false, true)), all(vec2<bool>(true, false)), false)), ~1u, vec3<u32>(_wgslsmith_sub_u32(arg_0.a, ~1u), arg_0.a, 47699u), arg_3));
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(max(-1000f, var_1.b)))), _wgslsmith_f_op_f32(f32(-1f) * -779f), _wgslsmith_f_op_f32(-var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(233f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1169f + -424f)), _wgslsmith_f_op_f32(var_0 + _wgslsmith_div_f32(var_0, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))) * _wgslsmith_f_op_vec3_f32(func_4(func_1(vec3<u32>(73820u, global1[_wgslsmith_index_u32(u_input.b.x, 26u)], 0u), _wgslsmith_add_i32(global0.x, 8611i)), -(vec2<i32>(global0.x, global0.x) | vec2<i32>(24709i, 65003i)), var_0, vec3<i32>(29299i, _wgslsmith_clamp_i32(global0.x, global0.x, global0.x), -global0.x)))));
    let var_2 = select(vec4<bool>(!all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), true, false, !(global0.x > 2147483647i)), vec4<bool>(false, any(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), 492f <= var_0)), false, true), false == any(vec4<bool>(any(vec4<bool>(false, true, true, false)), false, false, any(vec4<bool>(true, false, true, true)))));
    var var_3 = 2147483647i;
    let var_4 = -1042i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(817f, -1744f, var_1.x, var_1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-139f, var_0, var_0, 1115f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, -465f, -1086f, 710f)))))), firstLeadingBit(3807i));
}

