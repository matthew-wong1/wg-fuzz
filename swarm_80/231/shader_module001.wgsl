struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> f32 {
    let var_0 = Struct_1(min(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), ~(~vec2<u32>(4294967295u, 50676u))), vec4<i32>(~(~_wgslsmith_div_i32(arg_1, arg_1)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-45194i, u_input.a.x), u_input.a.zx), max(-1i, arg_1)), _wgslsmith_sub_i32(-arg_1, _wgslsmith_div_i32(arg_1, 2147483647i)), arg_1), min(u_input.b << (~4294967295u % 32u), abs(firstTrailingBit(2147483647i))), i32(-1i) * -arg_1));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-808f, 578f) + vec2<f32>(-795f, 180f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -594f), vec2<f32>(-216f, 810f)))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(644f, 825f)))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(414f, 485f) + vec2<f32>(1128f, -470f)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(280f, -752f))), min(var_0.b.x, -2147483647i) >= firstTrailingBit(var_0.b.x)))));
    let var_2 = ~vec2<u32>(~(_wgslsmith_mod_u32(5106u, var_0.a.x) | ~8848u), ~select(~0u, var_0.a.x, arg_0.x && false));
    var var_3 = 734f;
    let var_4 = -(-vec2<i32>(min(u_input.b, arg_1), ~u_input.a.x) >> (~(~(~var_2)) % vec2<u32>(32u)));
    return var_1.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> vec2<u32> {
    var var_0 = vec4<f32>(961f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -246f), -1209f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-646f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1182f, -603f))), _wgslsmith_f_op_f32(sign(-191f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-737f, 1867f))), _wgslsmith_f_op_f32(max(-933f, 503f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true), -26959i)), _wgslsmith_f_op_f32(-1052f * -778f), -1326f)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1083f), var_0.x, -1000f, var_0.x);
    return arg_0;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: bool) -> Struct_1 {
    return Struct_1(func_2(~abs(vec2<u32>(4294967295u, 18981u)), 4294967295u) & vec2<u32>(1u, 1u), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(3808i, u_input.a.x, -12321i, -19010i), vec4<i32>(7676i, u_input.a.x, -22458i, -19400i) << (vec4<u32>(4294967295u, 2144u, 18815u, 32198u) % vec4<u32>(32u))), min(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -1i, -2147483647i, u_input.a.x), vec4<i32>(27672i, 15587i, u_input.a.x, -1i)), firstLeadingBit(vec4<i32>(2147483647i, -21624i, u_input.a.x, -29282i))), -(~vec4<i32>(u_input.b, -11695i, -2147483647i, -1i))), vec4<i32>(u_input.a.x & -1i, u_input.a.x, ~u_input.b, u_input.b) | -(vec4<i32>(-14404i, u_input.b, 1i, u_input.b) >> (vec4<u32>(4242u, 1u, 0u, 1u) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1287f * 291f);
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-691f, var_0, var_0, var_0), vec4<f32>(var_0, -1337f, var_0, 725f)))))))), 2125f, var_0 > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, var_0))) * var_0));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(304f, 1771f), vec2<f32>(-1000f, var_0))) * vec2<f32>(var_0, var_0))))));
    let var_3 = Struct_1(var_1.a, vec4<i32>(-_wgslsmith_div_i32(u_input.b, _wgslsmith_div_i32(u_input.b, var_1.b.x)), select(-1278i, countOneBits(u_input.b), _wgslsmith_div_f32(var_2.x, var_0) <= _wgslsmith_f_op_f32(f32(-1f) * -547f)), 0i, max(~u_input.a.x, var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(7841u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -1736f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(847f, 522f, var_2.x), vec3<f32>(var_2.x, 894f, -997f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_0, var_0)))))));
}

