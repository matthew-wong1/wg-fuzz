struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(500f, 526f, 143f), vec3<f32>(2344f, 523f, 1089f), vec3<f32>(-389f, -101f, 1170f), vec3<f32>(-1522f, 1142f, 935f), vec3<f32>(1006f, 1152f, 470f), vec3<f32>(-1489f, -188f, 748f), vec3<f32>(-279f, 764f, 721f), vec3<f32>(1702f, -1729f, -1369f), vec3<f32>(2300f, 1902f, 160f), vec3<f32>(-788f, -1052f, 180f), vec3<f32>(1357f, -390f, -1949f), vec3<f32>(-2066f, -1193f, -3480f), vec3<f32>(-1775f, 1000f, 390f));

var<private> global1: Struct_1 = Struct_1(true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~u_input.b >= u_input.b);
    var var_1 = arg_1.b;
    global1 = var_0;
    global0 = array<vec3<f32>, 13>();
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(444f, _wgslsmith_f_op_f32(abs(-1782f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1176f, -403f) + vec2<f32>(-1040f, 552f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1539f, -459f))))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-868f, -454f) + vec2<f32>(226f, 676f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-528f, 957f) - vec2<f32>(-434f, 314f))), vec2<f32>(-1038f, -804f)))));
    return arg_3;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec3<f32>, 13>();
    var var_0 = ~(~(~u_input.c));
    let var_1 = Struct_1(!(!global1.a));
    global1 = Struct_1(arg_0.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(926f)));
    return Struct_1(false);
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-466f, -1256f), _wgslsmith_f_op_f32(sign(752f))))), 1521f));
    var var_1 = ~34186u;
    var var_2 = vec2<bool>(true, true);
    let var_3 = 26559u != u_input.c;
    var var_4 = arg_0.b;
    return !(!any(vec4<bool>(any(vec2<bool>(global1.a, true)), true, true, any(vec3<bool>(true, var_2.x, var_2.x)))));
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<bool>(global1.a, func_4(Struct_2(~(-vec3<i32>(-2147483647i, u_input.b, 0i)), func_3(func_2(Struct_2(vec3<i32>(-2147483647i, 26153i, u_input.d), Struct_1(false)), Struct_2(vec3<i32>(u_input.d, -34053i, u_input.d), Struct_1(global1.a)), Struct_1(global1.a), Struct_1(false)), Struct_1(false)))), _wgslsmith_f_op_f32(f32(-1f) * -776f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1117f)), _wgslsmith_f_op_f32(max(186f, -132f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(560f, 504f)) - 1274f)));
    var var_1 = -max(-2147483647i, -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(53268i, 2147483647i, -48605i, -1i), vec4<i32>(19799i, u_input.b, u_input.d, u_input.d)), -22607i));
    global0 = array<vec3<f32>, 13>();
    global0 = array<vec3<f32>, 13>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -798f));
    return Struct_2(vec3<i32>(1i, firstTrailingBit(-u_input.b), 1i), func_3(func_3(Struct_1(any(var_0.xy)), func_3(func_3(Struct_1(global1.a), Struct_1(false)), func_2(Struct_2(vec3<i32>(-53348i, 205i, 1i), Struct_1(global1.a)), Struct_2(vec3<i32>(-17298i, -74232i, u_input.b), Struct_1(global1.a)), Struct_1(true), Struct_1(true)))), Struct_1(global1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(all(vec2<bool>(global1.a, u_input.d <= 5308i)) & !(true == !global1.a));
    var var_1 = func_1();
    let var_2 = var_1.b;
    var var_3 = ~(u_input.e >> (u_input.e % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.xzx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2234f))), select(~u_input.c, _wgslsmith_dot_vec3_u32(u_input.e.zzx, reverseBits(~u_input.e.wzy)), global1.a), ~(_wgslsmith_div_vec2_u32(~vec2<u32>(116400u, var_3.x), var_3.yw) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, var_3.x), u_input.e.zx), _wgslsmith_clamp_u32(u_input.a, var_3.x, var_3.x)) % vec2<u32>(32u))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-815f, -456f) + vec2<f32>(-213f, 2224f)), _wgslsmith_div_vec2_f32(vec2<f32>(1467f, 408f), vec2<f32>(-224f, -1055f)), true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-849f, 1003f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1120f, 117f))))))));
}

