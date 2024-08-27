struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_2 {
    global0 = array<u32, 10>();
    var var_0 = arg_3.a;
    var_0 = arg_1;
    var_0 = arg_3.a;
    var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(arg_1.a)), reverseBits(~4294967295u), var_0.c);
    return arg_3.a;
}

fn func_3(arg_0: Struct_5, arg_1: f32) -> i32 {
    global0 = array<u32, 10>();
    let var_0 = Struct_1(reverseBits(4294967295u), 0i, _wgslsmith_f_op_f32(sign(1029f)));
    var var_1 = vec3<bool>(!arg_0.d.c, arg_0.d.c, true);
    global0 = array<u32, 10>();
    var var_2 = arg_1;
    return _wgslsmith_mod_i32(54380i, -1i);
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: bool) -> i32 {
    var var_0 = arg_1.b.b.xzw;
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    var var_1 = Struct_5(arg_1.b.a.a, vec2<i32>(~(-1i), 24597i) << (~u_input.a % vec2<u32>(32u)), 0u, arg_1.b.a);
    return -func_3(Struct_5(_wgslsmith_f_op_f32(272f * _wgslsmith_f_op_f32(trunc(var_1.d.a))), select(vec2<i32>(arg_1.c.x, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.c.x, 47934i), vec2<i32>(var_1.b.x, var_1.b.x)), vec2<bool>(true, false)), ~_wgslsmith_div_u32(arg_1.b.a.b, 1u), func_2(2231u, var_1.d, vec4<i32>(arg_1.c.x, arg_1.c.x, 0i, 2147483647i), arg_1.b)), _wgslsmith_f_op_f32(-arg_1.b.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(1i ^ -func_1(true, Struct_4(false, Struct_3(Struct_2(1000f, u_input.a.x, false), vec4<bool>(true, false, true, false), vec2<f32>(514f, -906f)), vec4<i32>(3101i, -2147483647i, 17414i, 0i)), true));
    let var_1 = vec3<i32>(2147483647i, select(var_0, -11462i, all(vec3<bool>(true, true, true)) | false), var_0);
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    let var_2 = Struct_1(abs(abs(abs(1u))), 29107i, _wgslsmith_div_f32(-950f, -615f));
    let var_3 = reverseBits(~firstLeadingBit(vec2<i32>(_wgslsmith_add_i32(var_2.b, 2147483647i), min(-1i, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-103f, _wgslsmith_f_op_f32(select(-644f, -1019f, false)), _wgslsmith_f_op_f32(var_2.c * 557f), _wgslsmith_f_op_f32(sign(var_2.c))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, var_2.c, 401f, 1362f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(508f, var_2.c, var_2.c, 1431f), vec4<f32>(-1247f, var_2.c, var_2.c, var_2.c), vec4<bool>(false, false, true, false))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(807f)), _wgslsmith_f_op_f32(285f + -477f)), var_2.c, _wgslsmith_f_op_f32(floor(var_2.c))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.c + 2152f), -248f, _wgslsmith_f_op_f32(-var_2.c)))), select(~vec2<u32>(u_input.a.x, u_input.a.x), u_input.a, true) | vec2<u32>(4294967295u, ~_wgslsmith_div_u32(1u, u_input.a.x)), _wgslsmith_clamp_i32(~var_1.x, 1i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.zz << (u_input.a % vec2<u32>(32u)), abs(var_1.yz)), var_1.yy)), ~_wgslsmith_mult_i32(-func_1(true, Struct_4(false, Struct_3(Struct_2(-2158f, global0[_wgslsmith_index_u32(48946u, 10u)], true), vec4<bool>(true, false, false, true), vec2<f32>(789f, var_2.c)), vec4<i32>(var_3.x, 0i, var_2.b, 22075i)), true), _wgslsmith_dot_vec2_i32(vec2<i32>(24475i, 0i), var_1.zz)));
}

