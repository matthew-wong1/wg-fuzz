struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-925f, -1661f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-236f, 244f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1132f, 580f, 1247f, -1545f)))))));
    var_0 = Struct_1(vec2<f32>(-1457f, _wgslsmith_f_op_f32(step(-1539f, _wgslsmith_f_op_f32(-392f * 1327f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x * -1900f), _wgslsmith_f_op_f32(f32(-1f) * -948f), _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), _wgslsmith_div_f32(-410f, var_0.a.x)) + var_0.b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * 197f) * _wgslsmith_div_f32(var_0.a.x, 678f)), var_0.a.x, 832f, var_0.a.x))));
    let var_1 = -(~(~41248i >> (countOneBits(1u) % 32u)));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1255f, var_0.a.x, -1969f, -621f), vec4<f32>(var_0.b.x, var_0.a.x, var_0.a.x, -793f)))) * _wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(-541f, var_0.b.x, -124f, var_0.b.x))))));
    var var_2 = Struct_2(true, abs(u_input.b), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.d, 18623u, u_input.d)), ~(~vec3<u32>(u_input.d, u_input.d, u_input.d))), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1189f) - var_0.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -690f)), -365f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-128f + _wgslsmith_div_f32(var_0.b.x, -831f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(288f, 761f)) + var_0.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.b.x, var_0.b.x, var_0.a.x)))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -2472f);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.b.e.zz, vec2<f32>(-299f, 254f))) + vec2<f32>(arg_0.b.e.x, _wgslsmith_f_op_f32(func_3(arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1015f, _wgslsmith_div_f32(arg_0.b.d.x, 495f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(-909f, arg_0.b.e.x)) - vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-517f + -105f))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_0.b.e.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-683f, var_0.x) - arg_0.b.d.wx)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-861f, 532f), arg_0.b.d.yw)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.d.x, -598f) - arg_0.b.e.wx), vec2<bool>(true, arg_0.b.a)))))) - arg_0.b.e.xy);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.b.e.xx + vec2<f32>(694f, _wgslsmith_f_op_f32(303f - _wgslsmith_div_f32(arg_0.b.d.x, arg_0.b.e.x)))));
    let var_1 = !(!arg_0.a);
    var_0 = _wgslsmith_f_op_vec2_f32(arg_0.b.e.yy + vec2<f32>(var_0.x, _wgslsmith_f_op_f32(arg_0.b.e.x - 1000f)));
    return arg_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>, arg_3: vec3<f32>) -> f32 {
    let var_0 = Struct_3(!(!(!select(vec3<bool>(arg_0.a, false, true), vec3<bool>(false, arg_1, true), arg_1))), arg_0);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1402f, 790f, arg_0.d.x, arg_3.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(200f, arg_0.d.x, var_0.b.e.x, -1951f), var_0.b.d)), var_0.a.x)))) + vec4<f32>(-1006f, 724f, 1151f, arg_3.x));
    let var_2 = var_0.b.b.xzw;
    let var_3 = _wgslsmith_f_op_f32(trunc(var_0.b.d.x));
    var_1 = vec4<f32>(915f, _wgslsmith_f_op_f32(-244f * _wgslsmith_f_op_f32(floor(var_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3, var_1.x)) - arg_3.x) + -1000f) - _wgslsmith_f_op_f32(var_1.x + var_0.b.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.d.x - 1373f) * var_3));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b.d.x, var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -424f)))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1641f, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(ceil(822f)), -947f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(651f, 1013f), _wgslsmith_f_op_f32(-501f - -452f), true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-132f, 166f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_2(Struct_3(vec3<bool>(false, false, false), Struct_2(false, arg_0, 61028u, vec4<f32>(-225f, -2330f, 2110f, 386f), vec4<f32>(-285f, 246f, -1106f, -735f))), arg_0.zwy), true, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1, arg_1, u_input.b.x), vec3<i32>(-1i, 1i, -29215i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-438f, -1403f, -1932f) - vec3<f32>(1411f, 623f, 163f)))), func_2(Struct_3(vec3<bool>(true, true, true), Struct_2(false, vec4<i32>(u_input.c, -1i, 0i, -2147483647i), u_input.d, vec4<f32>(-222f, 749f, -1000f, -366f), vec4<f32>(1000f, -560f, 244f, -155f))), u_input.b.zzw & u_input.b.xwx).e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(444f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-370f))))));
    var var_1 = ~(-(~_wgslsmith_mod_i32(arg_0.x, arg_1))) <= u_input.a;
    var_1 = true;
    var_1 = select(max(1u, u_input.d), u_input.d, !func_2(Struct_3(vec3<bool>(true, true, true), Struct_2(true, arg_0, u_input.d, vec4<f32>(-461f, -228f, var_0.x, var_0.x), var_0)), select(arg_0.wxw, u_input.b.zzw, false)).a) < 1u;
    let var_2 = u_input.d;
    return 291f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(284f)), _wgslsmith_f_op_f32(func_1(u_input.b, u_input.c)), _wgslsmith_f_op_f32(select(-402f, -862f, false))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1017f, 1558f, 365f)))))));
    var var_1 = u_input.d;
    let var_2 = Struct_3(vec3<bool>(all(vec4<bool>(-629f <= var_0.x, false, false, all(vec2<bool>(false, false)))), min(1u, reverseBits(u_input.d)) > _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.d, u_input.d), u_input.d), true), Struct_2(false, u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, u_input.d), _wgslsmith_add_vec2_u32(~vec2<u32>(1u, 26670u), vec2<u32>(34327u, u_input.d) & vec2<u32>(35348u, u_input.d))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(951f * -134f), _wgslsmith_div_f32(-2059f, var_0.x), -1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 665f, var_0.x, 731f) * vec4<f32>(var_0.x, -594f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1086f, -462f, var_0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 243f, var_0.x, -486f) + vec4<f32>(var_0.x, -961f, var_0.x, 402f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))))));
    var_1 = _wgslsmith_sub_u32(max(~(9472u & _wgslsmith_div_u32(4294967295u, var_2.b.c)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(65195u, var_2.b.c, 53223u, u_input.d), abs(vec4<u32>(u_input.d, var_2.b.c, 4294967295u, 1u)))), (~var_2.b.c >> (_wgslsmith_add_u32(0u, 25747u) % 32u)) >> ((_wgslsmith_mod_u32(~var_2.b.c, select(477u, 16011u, true)) | 0u) % 32u));
    var var_3 = var_2;
    var_1 = 0u;
    let var_4 = func_2(Struct_3(select(vec3<bool>(-1i != var_2.b.b.x, select(true, true, var_2.a.x), all(vec3<bool>(var_3.a.x, false, false))), vec3<bool>(all(vec4<bool>(false, var_3.a.x, true, false)), true, !var_3.b.a), func_2(var_2, _wgslsmith_mult_vec3_i32(u_input.b.yyz, vec3<i32>(2147483647i, 0i, var_2.b.b.x))).a), Struct_2(!var_3.b.a, u_input.b, var_2.b.c >> (var_2.b.c % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_2.b.d, vec4<f32>(var_2.b.e.x, -217f, 1519f, var_2.b.e.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-197f, var_0.x, var_2.b.e.x, 752f) - vec4<f32>(var_0.x, var_2.b.e.x, -318f, var_3.b.e.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.d.x, 276f, var_2.b.d.x, var_3.b.d.x))))), vec3<i32>(reverseBits(func_2(Struct_3(var_2.a, Struct_2(false, vec4<i32>(var_3.b.b.x, -33231i, u_input.b.x, var_3.b.b.x), var_2.b.c, var_2.b.e, vec4<f32>(848f, var_2.b.e.x, var_0.x, var_3.b.d.x))), var_3.b.b.wyy).b.x), var_3.b.b.x >> (u_input.d % 32u), -1i >> (0u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), firstLeadingBit(max(1u, 17980u)));
}

