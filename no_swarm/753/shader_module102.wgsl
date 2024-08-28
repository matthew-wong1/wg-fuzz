struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(14373u, 19007u, 26623u, 62595u, 11946u, 41842u, 4294967295u, 1u, 57148u, 26908u, 67861u, 27629u, 36249u, 0u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec2<bool> {
    var var_0 = true;
    var var_1 = -firstTrailingBit(-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 31227i), vec3<i32>(240i, 2147483647i, 2147483647i)), 1i));
    var var_2 = reverseBits(reverseBits(_wgslsmith_mod_i32(var_1.x, -4867i)) | _wgslsmith_sub_i32(-20462i, var_1.x));
    let var_3 = vec4<bool>(true, true, true, !any(vec3<bool>(true, true, true)));
    var var_4 = 1247f;
    return !vec2<bool>(all(select(var_3, var_3, !var_3.x)), ((u_input.a.x != global0[_wgslsmith_index_u32(u_input.a.x, 14u)]) && select(var_3.x, true, true)) | (var_3.x && (var_3.x & true)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(vec3<u32>(arg_0, 24601u, ~40630u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1923f - 1219f), _wgslsmith_div_f32(241f, -1345f), _wgslsmith_f_op_f32(-1486f + 2025f))) + vec3<f32>(-1201f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-951f - 135f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(step(1659f, -112f))))), abs(-(reverseBits(-37017i) << (arg_0 % 32u))), !func_3(-238f), select(vec3<i32>(0i, firstTrailingBit(min(0i, -1i)), 0i), ~abs(-vec3<i32>(-34486i, 778i, -2147483647i)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), u_input.a.x != 4294967295u), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), true)));
    global0 = array<u32, 14>();
    let var_1 = var_0;
    var var_2 = _wgslsmith_sub_i32(-2147483647i, abs(-(~var_1.c)));
    let var_3 = var_1;
    return var_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_mult_u32(0u, reverseBits(33576u)));
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    let var_1 = ~(arg_1.e >> ((~vec3<u32>(4294967295u, arg_0.x, global0[_wgslsmith_index_u32(69363u, 14u)]) >> (vec3<u32>(0u, _wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(44067u, 14u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.x, arg_0.x, 4294967295u), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_2 = func_2(0u);
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(592f, 149f, 1582f))), vec3<f32>(-1618f, 176f, var_2.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.b.x * -1000f))), _wgslsmith_f_op_f32(select(arg_1.b.x, var_2.b.x, all(vec3<bool>(false, false, arg_1.d.x)))), _wgslsmith_f_op_f32(f32(-1f) * -213f)), any(vec3<bool>(true, select(false, false, false), !arg_1.d.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 14>();
    var var_0 = Struct_1(vec3<u32>(1u, u_input.a.x, firstTrailingBit(~_wgslsmith_sub_u32(1u, 0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(575f, -1037f, 1468f), vec3<f32>(424f, 1264f, -427f), true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(u_input.a.yy, Struct_1(u_input.a, vec3<f32>(-152f, 1000f, 224f), -1i, vec2<bool>(true, true), vec3<i32>(-2147483647i, 1i, 2147483647i)))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2(global0[_wgslsmith_index_u32(u_input.a.x, 14u)]).b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1360f, 112f, 1120f)))))), ~(-19666i), !vec2<bool>(true, select(true, true, all(vec4<bool>(true, false, true, false)))), firstTrailingBit(vec3<i32>(-1i, ~(-2307i), 1i)));
    var var_1 = !var_0.d.x;
    var_1 = all(!select(vec3<bool>(false, select(false, true, false), var_0.d.x), select(select(vec3<bool>(var_0.d.x, true, var_0.d.x), vec3<bool>(false, var_0.d.x, var_0.d.x), var_0.d.x), !vec3<bool>(true, var_0.d.x, var_0.d.x), true), vec3<bool>(all(vec4<bool>(true, true, false, true)), !var_0.d.x, var_0.d.x)));
    var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(1000f - 224f)))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.x)))) - -703f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1825f, -1414f) * var_0.b.x))));
    var_1 = true;
    var var_3 = 9381u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(var_0.c, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(2774i, var_0.c, var_0.c, -22580i)), vec4<i32>(~2147483647i, reverseBits(var_0.c), var_0.c ^ 6480i, firstTrailingBit(2147483647i))), _wgslsmith_dot_vec2_i32(vec2<i32>(-2604i, abs(12276i)), var_0.e.xy)), firstTrailingBit(~1u) & u_input.a.x, u_input.a.yz, vec3<i32>(abs(i32(-1i) * -38892i), 1i, _wgslsmith_mult_i32(1i, -1i)) ^ firstTrailingBit(vec3<i32>(-67842i, _wgslsmith_mod_i32(var_0.e.x, 51910i), countOneBits(35606i))));
}

