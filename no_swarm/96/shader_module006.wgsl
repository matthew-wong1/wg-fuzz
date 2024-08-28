struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1313f, _wgslsmith_f_op_f32(select(412f, -1024f, false)), -850f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(862f, -1431f, 1000f))) + _wgslsmith_div_vec3_f32(vec3<f32>(1889f, 1000f, 1064f), vec3<f32>(-773f, -521f, 2277f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1234f, _wgslsmith_f_op_f32(-283f * -1347f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(289f, -1000f, 948f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1656f, -618f, -808f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1136f, -716f, -1000f)))))));
    var var_1 = Struct_1(select(vec3<i32>(reverseBits(u_input.c), firstTrailingBit(u_input.c), _wgslsmith_add_i32(u_input.c, u_input.c)), ~vec3<i32>(-64149i, u_input.c, 0i), true), vec3<f32>(_wgslsmith_f_op_f32(step(-2527f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.x, -2259f)))))), var_0.x, var_0.x), u_input.e, true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 214f, -1002f))))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, -1295f)), var_0.x, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)))))));
    var var_2 = vec3<f32>(var_1.e.x, _wgslsmith_f_op_f32(746f - var_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(abs(987f))))));
    let var_3 = (_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a.x, -16651i), firstTrailingBit(var_1.a.zz)) ^ -vec2<i32>(2272i << (var_1.c.x % 32u), 41593i)) & var_1.a.xx;
    let var_4 = countOneBits(vec3<i32>(firstLeadingBit(abs(-var_3.x)), _wgslsmith_mult_i32(~(-4085i), _wgslsmith_div_i32(~var_1.a.x, _wgslsmith_div_i32(var_1.a.x, var_3.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_3.x), reverseBits(var_3)) & 50368i));
    return -608f;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(1000f * -1291f);
    var_0 = 1115f;
    var_0 = -714f;
    var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = ~_wgslsmith_sub_vec3_i32(-vec3<i32>(firstLeadingBit(-2147483647i), -2641i, ~u_input.c), vec3<i32>(u_input.c, u_input.c, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, u_input.c)), u_input.c, -25119i)));
    return Struct_1(reverseBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(-21471i, u_input.c, var_1.x), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.c, 24471i), vec3<i32>(-33259i, u_input.c, u_input.c)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(390f, -883f, 363f), vec3<f32>(-558f, 248f, 1345f))))) + vec3<f32>(_wgslsmith_f_op_f32(-1427f + -539f), _wgslsmith_f_op_f32(f32(-1f) * -236f), _wgslsmith_div_f32(1342f, -262f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1289f, -1086f, -745f), vec3<f32>(1166f, -1439f, 769f))))))), ~(-2147483647i) >= _wgslsmith_div_i32(17157i, _wgslsmith_add_i32(65424i, var_1.x)))), u_input.e, true, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1f), -122f, _wgslsmith_f_op_f32(sign(1759f))))));
}

fn func_1(arg_0: vec3<f32>) -> vec2<f32> {
    var var_0 = Struct_2(func_2(), ((~vec3<i32>(u_input.c, 1i, 1i) << (~u_input.e % vec3<u32>(32u))) >> ((_wgslsmith_div_vec3_u32(u_input.e, vec3<u32>(50164u, 14419u, u_input.a)) ^ func_2().c) % vec3<u32>(32u))) << ((u_input.e ^ (u_input.e ^ u_input.e)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1160f, arg_0.x, -209f, 1368f), vec4<f32>(arg_0.x, -1881f, arg_0.x, -462f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1805f, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(-700f, 571f, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.x, arg_0.x, -611f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1086f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(144f))))), 0u);
    return arg_0.yx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(vec3<f32>(_wgslsmith_f_op_f32(step(-715f, 666f)), _wgslsmith_f_op_f32(f32(-1f) * -1060f), 1f))))));
    var_0 = func_2().b.xy;
    var var_1 = 1089f;
    let var_2 = -2147483647i;
    var_1 = var_0.x;
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec3<f32>(-960f, 1968f, var_0.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(1699f, 1000f))))))), vec2<f32>(_wgslsmith_f_op_f32(sign(751f)), _wgslsmith_f_op_f32(ceil(var_0.x)))));
    let var_3 = func_2();
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1170f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x * var_3.b.x)) - 1f)));
    let var_4 = _wgslsmith_f_op_f32(-var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(-253f, select(select(vec2<u32>(32315u, 0u), vec2<u32>(32501u, 53933u), vec2<bool>(false, true)), max(~var_3.c.yy, vec2<u32>(38375u, u_input.a)), vec2<bool>(!var_3.d, false)) ^ _wgslsmith_add_vec2_u32(~u_input.e.zx, _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.e.yz, vec2<u32>(64631u, u_input.a)), vec2<u32>(u_input.b, u_input.b))), u_input.e.x);
}

