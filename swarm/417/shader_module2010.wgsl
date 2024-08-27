struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_mult_u32(u_input.a.x, ~(firstTrailingBit(max(u_input.a.x, 43729u)) | 1u));
    var var_1 = max(-countOneBits(vec3<i32>(-1i, 1i, -1i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(1i, -1i, 0i), vec3<i32>(44220i, 1i, 0i), vec3<bool>(false, true, false)), vec3<i32>(1i, 1i, 1i)), reverseBits(~vec3<i32>(-7764i, -1i, -295i)), vec3<i32>(1i, 1i, 1i) & select(vec3<i32>(2147483647i, 0i, 15001i), vec3<i32>(2147483647i, -37544i, -10720i), vec3<bool>(true, true, true)))) & vec3<i32>(-(~select(15274i, -1578i, true)), max(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-2147483647i, 41358i, 15328i, 2147483647i)), abs(i32(-1i) * -16542i)), 1i);
    var var_2 = vec3<u32>(u_input.a.x, abs(reverseBits(_wgslsmith_sub_u32(~var_0, firstTrailingBit(u_input.a.x)))), _wgslsmith_mult_u32(28591u, u_input.a.x));
    var var_3 = ~19529u;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(899f, -1498f, _wgslsmith_f_op_f32(round(582f)), 124f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(120f, 407f, -460f, -2414f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(510f, -1174f, 706f, -1472f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(742f, 284f, -1151f, -793f)))))));
    return vec2<bool>(!(!(!all(vec2<bool>(true, true)))), select(true, true, any(vec2<bool>(false, true)) | true) | (var_1.x <= ~(~(-1i))));
}

fn func_2(arg_0: vec3<i32>) -> vec3<i32> {
    let var_0 = Struct_1(func_3(), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-367f * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(906f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(889f, -771f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -435f, -1546f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 256f, 356f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(680f, -200f, 1662f)))))), false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -157f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(111f * 1535f), _wgslsmith_f_op_f32(-1572f + 653f), true))), _wgslsmith_f_op_f32(ceil(-923f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(444f))))));
    var var_1 = true;
    global1 = arg_0.x;
    return _wgslsmith_div_vec3_i32(vec3<i32>(~arg_0.x, arg_0.x, arg_0.x), -_wgslsmith_clamp_vec3_i32(max(vec3<i32>(arg_0.x, arg_0.x, 2147483647i), arg_0), vec3<i32>(arg_0.x, -1i, arg_0.x), firstTrailingBit(vec3<i32>(7666i, -21118i, arg_0.x))) & countOneBits((vec3<i32>(arg_0.x, 1i, arg_0.x) << (vec3<u32>(u_input.a.x, u_input.a.x, 21979u) % vec3<u32>(32u))) | firstTrailingBit(arg_0)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(min(-13240i, -1i), max(~0i, -16806i), -7882i), func_2(vec3<i32>(1i, 1i, 1i))) << (vec3<u32>(_wgslsmith_mod_u32(~u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x) % vec3<u32>(32u));
    var var_1 = ~u_input.a.x;
    let var_2 = u_input.a;
    global0 = var_0.x;
    var var_3 = arg_0;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1i;
    global1 = func_1(Struct_1(vec2<bool>(false, any(vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2085f, -1352f, 1484f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(635f - -982f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1389f) * _wgslsmith_f_op_f32(-412f - 669f))), any(vec4<bool>(true, true, any(vec4<bool>(false, false, false, false)), true)), vec4<f32>(-607f, _wgslsmith_f_op_f32(f32(-1f) * -989f), _wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -378f), _wgslsmith_f_op_f32(f32(-1f) * -127f))))) << (countOneBits(u_input.a.x) % 32u);
    var var_0 = true;
    let var_1 = ~abs(vec3<i32>(select(51515i, func_1(Struct_1(vec2<bool>(true, true), vec3<f32>(168f, -658f, 400f), -583f, 402f), false, vec4<f32>(-1966f, 100f, -641f, 1170f)), true), -1i, firstTrailingBit(~(-2147483647i))));
    var_0 = true;
    global1 = ~func_1(Struct_1(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec3<f32>(_wgslsmith_f_op_f32(max(-344f, -464f)), -528f, _wgslsmith_f_op_f32(ceil(-1597f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(320f, 1040f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2804f)))), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(129f, 1530f)), -350f, 1066f, _wgslsmith_f_op_f32(f32(-1f) * -404f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-153f, 800f, -271f, -809f)))));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-185f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -892f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-277f + 1461f))), false)), -748f, _wgslsmith_div_f32(-537f, 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(369f * -269f), _wgslsmith_f_op_f32(311f - 498f), _wgslsmith_f_op_f32(abs(-358f)), _wgslsmith_f_op_f32(min(-540f, -929f))))));
    global0 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(var_1.xy, vec2<i32>(i32(-1i) * -2487i, _wgslsmith_mult_i32(1i, var_1.x))), ~vec4<u32>(select(min(u_input.a.x, u_input.a.x), ~0u, true), ~4294967295u, 54372u, 9270u), var_2.x);
}

