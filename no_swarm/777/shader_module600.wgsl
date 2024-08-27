struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(484f)), 434f, any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(151f, 738f) * _wgslsmith_f_op_f32(trunc(-1582f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -678f) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-705f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -900f) * _wgslsmith_f_op_f32(max(1125f, -1054f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-578f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-781f * 2097f), _wgslsmith_f_op_f32(-2136f - -1200f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-953f, -982f) * _wgslsmith_div_f32(623f, 1397f)), -615f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1156f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(606f, -195f, -696f, -2008f) + vec4<f32>(126f, -467f, 163f, 3494f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(321f, 1193f, -621f, -384f) - vec4<f32>(674f, -1340f, -309f, 1655f))))));
    let var_1 = var_0;
    let var_2 = var_1.b;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(638f, var_2.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-452f * var_0.b.x), 666f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + 854f))))));
    var_3 = var_1.b.x;
    return _wgslsmith_f_op_vec4_f32(var_1.c + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(664f + var_0.a.x) + _wgslsmith_f_op_f32(ceil(983f))), _wgslsmith_f_op_f32(f32(-1f) * -327f), var_1.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-474f - -257f), _wgslsmith_f_op_f32(-var_1.c.x)))))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = arg_0.yz;
    return Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -614f, _wgslsmith_f_op_f32(sign(100f)), _wgslsmith_div_f32(var_0.x, var_0.x)), vec4<f32>(1217f, _wgslsmith_f_op_f32(max(arg_0.x, 971f)), _wgslsmith_f_op_f32(sign(712f)), _wgslsmith_f_op_f32(round(arg_0.x)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-742f, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_0.x, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(ceil(var_0.x))) * _wgslsmith_f_op_vec4_f32(func_3())));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(647f * _wgslsmith_div_f32(-866f, -1045f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(568f * 2062f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-244f - -268f), 1f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(255f, 488f, -1000f) * vec3<f32>(-311f, -1739f, -2171f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1751f, 1148f, -182f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-104f, 266f, 1959f), vec3<f32>(664f, -1000f, 856f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-223f, -483f, 618f) + vec3<f32>(673f, -197f, 1232f)))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1125f, -2332f, var_0.b.x, var_0.c.x)) * vec4<f32>(_wgslsmith_f_op_f32(-744f - var_0.b.x), -410f, 530f, _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x))), vec4<f32>(-652f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-614f)) * var_0.a.x), _wgslsmith_div_f32(-937f, _wgslsmith_f_op_f32(round(var_0.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-269f * var_0.b.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1043f, -275f, _wgslsmith_f_op_f32(-var_0.a.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(592f, _wgslsmith_f_op_vec4_f32(func_3()).x, var_0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, -144f, var_0.b.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(915f, 292f, var_0.b.x, var_0.a.x), vec4<f32>(711f, -598f, 863f, var_0.c.x))))));
    var var_1 = false;
    var var_2 = 521f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-366f)), _wgslsmith_f_op_f32(f32(-1f) * -1623f)))) + _wgslsmith_f_op_f32(-var_0.b.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1832f, var_0.a.x) - _wgslsmith_f_op_vec2_f32(trunc(var_0.c.xy))))));
    return func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.wzx) + _wgslsmith_f_op_vec3_f32(-var_0.b)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1108f, -1174f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1100f, var_0.a.x, 465f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 40437i;
    let var_1 = all(!select(vec3<bool>(select(true, false, false), all(vec4<bool>(true, false, false, true)), all(vec4<bool>(false, true, false, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), true), any(vec4<bool>(true, true, true, true))));
    var_0 = _wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.d.x, u_input.d.x), 23349i));
    let var_2 = func_1();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(func_1().a.x, 1f)));
    var var_4 = 4294967295u == firstTrailingBit(64838u);
    let var_5 = Struct_1(vec4<f32>(var_3, func_2(_wgslsmith_f_op_vec3_f32(-var_2.b)).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + -2552f), var_2.a.x), vec3<f32>(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_3) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1009f, 307f))), _wgslsmith_f_op_f32(305f * var_2.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_3 * 1084f), _wgslsmith_f_op_f32(var_3 - 181f), _wgslsmith_f_op_f32(var_2.b.x - var_2.a.x), var_2.c.x) * var_2.a), !(!(!vec4<bool>(var_1, var_1, var_1, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(u_input.d.ywx, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-26269i, -12355i, u_input.c.x, u_input.d.x), _wgslsmith_sub_vec4_i32(u_input.c, u_input.d)), _wgslsmith_dot_vec4_i32(reverseBits(u_input.d), _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 4043i))), min(8079i, -1i)), u_input.d.wxx));
}

