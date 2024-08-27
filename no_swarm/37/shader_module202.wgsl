struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 31>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(~min(8463u, 0u), 31u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.a, 31u)])), _wgslsmith_f_op_f32(floor(-798f)))), 301f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(65093u, 31u)] - -792f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(601f, global1[_wgslsmith_index_u32(u_input.a, 31u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 31u)] * -1028f), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 31u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1312f)) * _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 31u)])))) + vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(reverseBits(1u), 31u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e.x, 31u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(102511u, 31u)] * global1[_wgslsmith_index_u32(u_input.a, 31u)]))), -150f)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global1 = array<f32, 31>();
    let var_0 = 1u;
    global0 = !(!all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), false)));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -516f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(var_0, 31u)])), -959f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(false, false), vec4<bool>(true, true, false, false)))))));
    global1 = array<f32, 31>();
    return Struct_1(vec3<bool>(true, true, true), ~30047u, u_input.e.ww);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(9577u, 31u)]) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(24140u, 31u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(355f + global1[_wgslsmith_index_u32(arg_0.b, 31u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(480f, global1[_wgslsmith_index_u32(reverseBits(u_input.a), 31u)]) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 31u)], 1103f))) + _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(var_0.b, 31u)], -334f), vec2<f32>(487f, -553f))))))));
    var var_2 = Struct_1(func_2(vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.b ^ var_0.c.x, 31u)] * _wgslsmith_f_op_f32(var_1.x - global1[_wgslsmith_index_u32(var_0.c.x, 31u)])), -261f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(24478u, 31u)]))).a, ~var_0.b, vec2<u32>(arg_0.b, abs(_wgslsmith_clamp_u32(var_0.b | arg_0.b, _wgslsmith_mult_u32(u_input.b, 0u), 77965u))));
    var_2 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(~var_0.c.x, 31u)], _wgslsmith_f_op_f32(var_1.x - 702f), _wgslsmith_f_op_f32(max(var_1.x, var_1.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-477f, var_1.x, global1[_wgslsmith_index_u32(1u, 31u)]))), _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(arg_0.c.x, 31u)], -274f, -379f), vec3<f32>(1132f, 333f, global1[_wgslsmith_index_u32(4294967295u, 31u)]))))));
    global0 = u_input.d.x != 2147483647i;
    return Struct_1(select(var_0.a, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-311f, global1[_wgslsmith_index_u32(arg_0.b, 31u)], var_1.x))).a, select(vec3<bool>(var_0.c.x >= 1u, true, all(var_0.a.yx)), vec3<bool>(var_2.a.x || true, any(vec2<bool>(false, var_2.a.x)), 23276i >= u_input.d.x), var_2.a.x)), u_input.e.x & ~select(~arg_0.b, arg_0.c.x << (42674u % 32u), var_2.a.x), ~vec2<u32>(32926u, reverseBits(~1u)));
}

fn func_1() -> vec2<i32> {
    var var_0 = func_4(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(866f, global1[_wgslsmith_index_u32(u_input.b, 31u)])), global1[_wgslsmith_index_u32(~u_input.b, 31u)], global1[_wgslsmith_index_u32(abs(80599u), 31u)]))));
    global0 = var_0.a.x;
    global0 = func_4(Struct_1(vec3<bool>(!var_0.a.x, true, all(vec4<bool>(var_0.a.x, false, false, true)) != (-2147483647i >= u_input.d.x)), 0u, u_input.e.yy)).a.x;
    global1 = array<f32, 31>();
    var var_1 = ~u_input.e.zyz & ~(~_wgslsmith_mod_vec3_u32(~u_input.e.yzy, vec3<u32>(1u, var_0.b, 45767u)));
    return vec2<i32>(_wgslsmith_sub_i32(u_input.d.x, -12841i), ~27560i);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<f32>) -> bool {
    return all(select(vec2<bool>(!all(vec3<bool>(true, false, false)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), vec2<bool>(false, any(vec4<bool>(false, true, true, false)) && true), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, -19298i) ^ u_input.d, u_input.d << (u_input.e.zw % vec2<u32>(32u))), func_1()), Struct_2(min(abs(vec3<u32>(26301u, u_input.e.x, u_input.c)), vec3<u32>(1u, u_input.c, 49265u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(0u, 31u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1139f, global1[_wgslsmith_index_u32(53725u, 31u)])))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 31u)] - global1[_wgslsmith_index_u32(u_input.c, 31u)]), _wgslsmith_f_op_f32(552f + global1[_wgslsmith_index_u32(4294967295u, 31u)])), global1[_wgslsmith_index_u32(u_input.e.x, 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2043f - 1082f)))) && true;
    var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(636f, _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(0u, 31u)])), 462f, global1[_wgslsmith_index_u32(68570u, 31u)]));
    let var_2 = all(vec4<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)) | true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2301f * global1[_wgslsmith_index_u32(0u, 31u)])) >= _wgslsmith_f_op_f32(-var_1.x), func_5(max(vec2<i32>(0i, u_input.d.x), ~u_input.d), Struct_2(u_input.e.yxx >> (vec3<u32>(4294967295u, u_input.b, 17248u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(floor(var_1.yw))), _wgslsmith_f_op_vec3_f32(select(var_1.xxy, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(26961u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]))), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false))))));
    var_0 = var_2;
    let var_3 = vec4<i32>(-u_input.d.x, u_input.d.x, u_input.d.x, -(~u_input.d.x));
    global0 = var_2;
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-136f * -1510f), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -770f))), global1[_wgslsmith_index_u32(4294967295u, 31u)], -1000f);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(295f * -471f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(var_1.x)), global1[_wgslsmith_index_u32(1u, 31u)]) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(0u, 31u)], -726f, var_1.x, 477f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-575f, -2517f, 164f, var_1.x)), true))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 31u)] - var_1.x), _wgslsmith_f_op_f32(sign(119f)), _wgslsmith_f_op_f32(sign(996f))), vec4<f32>(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.c, 31u)])), _wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(var_2, true), vec4<bool>(var_2, var_2, var_2, var_2))).x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.e.x, 31u)] - -223f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 31u)] * global1[_wgslsmith_index_u32(u_input.a, 31u)])))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(533f, var_1.x, 1097f, var_1.x) * vec4<f32>(var_1.x, var_1.x, var_1.x, -783f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec4_i32(abs(firstTrailingBit(var_3)), var_3), vec3<i32>(0i, 2147483647i, _wgslsmith_add_i32(-2147483647i, min(1i << (u_input.e.x % 32u), ~var_3.x))), -283f);
}

