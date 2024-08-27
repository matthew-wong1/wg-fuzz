struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<f32>(1057f, 2017f), vec4<f32>(167f, 742f, 636f, 1842f)), Struct_1(vec2<f32>(-1045f, -1874f), vec4<f32>(-1000f, -2040f, -1149f, 921f)), Struct_1(vec2<f32>(159f, -1227f), vec4<f32>(-1270f, -235f, -2043f, -520f)), Struct_1(vec2<f32>(-1094f, 502f), vec4<f32>(773f, -433f, -723f, 779f)), Struct_1(vec2<f32>(-572f, 1273f), vec4<f32>(-279f, 1780f, 734f, -431f)), Struct_1(vec2<f32>(1018f, 1794f), vec4<f32>(-1628f, -1919f, -768f, -337f)), Struct_1(vec2<f32>(-1263f, -423f), vec4<f32>(-1000f, -1219f, -657f, -526f)), Struct_1(vec2<f32>(-677f, -408f), vec4<f32>(337f, 256f, 743f, 103f)), Struct_1(vec2<f32>(-233f, 203f), vec4<f32>(-1000f, -396f, 685f, 1482f)), Struct_1(vec2<f32>(425f, -1000f), vec4<f32>(2123f, -1000f, -1221f, 538f)), Struct_1(vec2<f32>(1000f, 1190f), vec4<f32>(-693f, -133f, 277f, -1030f)), Struct_1(vec2<f32>(-555f, -1000f), vec4<f32>(300f, 898f, -1720f, 1436f)), Struct_1(vec2<f32>(-1054f, -711f), vec4<f32>(-305f, 393f, 625f, 1452f)));

var<private> global1: bool = false;

var<private> global2: array<vec4<f32>, 30>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<f32> {
    let var_0 = !select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), arg_1.x < 1i), select(vec2<bool>(true, true), vec2<bool>(true, true), !any(vec4<bool>(true, false, false, true))), !vec2<bool>(any(vec3<bool>(false, true, false)), false));
    let var_1 = false;
    var var_2 = global0[_wgslsmith_index_u32(~(~4294967295u), 13u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_2.b.zxw - vec3<f32>(arg_0.a.x, var_2.b.x, var_2.b.x))))))));
    var var_4 = 2147483647i;
    return var_2.b.zzy;
}

fn func_3() -> f32 {
    global1 = any(vec2<bool>(true, all(vec2<bool>(false, true))));
    let var_0 = global0[_wgslsmith_index_u32(0u, 13u)];
    var var_1 = global0[_wgslsmith_index_u32(~(~(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(4294967295u, u_input.d.x)) << (_wgslsmith_mult_u32(1u, 61540u << (u_input.c.x % 32u)) % 32u))), 13u)];
    var var_2 = !all(vec3<bool>(true, true, true));
    let var_3 = -(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a.x), u_input.a.zx) & 56409i, 1i, ~(-55362i), _wgslsmith_add_i32(-u_input.b, u_input.a.x)));
    return var_0.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = -8772i;
    var var_1 = vec2<bool>((abs(u_input.b) >= min(-31004i, ~u_input.a.x)) | !any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -528f) <= arg_0.a.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.b.x, -224f)))));
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 13u)];
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(func_1(global0[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_mult_vec4_i32(~vec4<i32>(-50846i, u_input.b, -17178i, 91129i), vec4<i32>(u_input.a.x, -18418i, 43673i, 0i)) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 22159u, 4294967295u, u_input.c.x), vec4<u32>(u_input.d.x, 21322u, 12416u, u_input.c.x)) % vec4<u32>(32u)))).yy, vec4<f32>(-1256f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(290f + 757f), arg_0.a.x)) * _wgslsmith_f_op_f32(abs(-518f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) - -1064f) + 1f), 1129f));
    return vec4<bool>(true, true == var_1.x, any(vec2<bool>(any(vec3<bool>(var_1.x, true, var_1.x)), select(var_1.x, var_1.x, var_1.x))) & any(select(!vec3<bool>(false, var_1.x, false), !vec3<bool>(var_1.x, true, var_1.x), false)), true);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec3<f32> {
    var var_0 = false;
    let var_1 = func_4(global0[_wgslsmith_index_u32(arg_2.x, 13u)], Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(trunc(-350f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1037f, -1262f, 140f, 768f))))));
    global2 = array<vec4<f32>, 30>();
    global0 = array<Struct_1, 13>();
    let var_2 = var_1;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-174f, _wgslsmith_div_f32(-223f, -2058f), _wgslsmith_f_op_f32(-1395f * -794f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(any(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), u_input.c.x >= countOneBits(114047u))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec2<f32>(-639f, -432f), vec4<f32>(-1198f, -166f, 195f, -1080f)), vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, u_input.b))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-264f, 838f, -137f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-2353f, 1830f, 1767f), vec3<f32>(1760f, -648f, 877f))) + _wgslsmith_f_op_vec3_f32(func_2(u_input.a.zz, !vec2<bool>(true, var_0.x), vec3<u32>(0u, u_input.d.x, 25839u))))), -52367i, _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.c.x) << (u_input.c.x % 32u), 30u)] + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(global2[_wgslsmith_index_u32(12814u, 30u)])))), global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 0u), 30u)]))));
}

