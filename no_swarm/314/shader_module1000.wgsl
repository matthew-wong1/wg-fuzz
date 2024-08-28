struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 26132i;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(false, 52045u), Struct_1(true, 74493u), Struct_1(true, 28472u), Struct_1(true, 1u), Struct_1(true, 4294967295u), Struct_1(false, 47366u), Struct_1(true, 0u), Struct_1(false, 1u), Struct_1(true, 37960u), Struct_1(true, 17192u), Struct_1(false, 44044u), Struct_1(false, 0u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> bool {
    global2 = array<Struct_1, 12>();
    let var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e, u_input.e), vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(9851i, -2147483647i))), u_input.a.zy, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.e), vec2<i32>(u_input.e, u_input.a.x))) | u_input.a.xy, u_input.a.yx);
    let var_1 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(173f, -1000f) - vec2<f32>(426f, -172f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-187f, -1324f)))), vec2<f32>(-653f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), false, Struct_1(global1.x, u_input.d));
    var var_2 = var_1;
    global2 = array<Struct_1, 12>();
    return any(!vec2<bool>(false, var_2.b));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: f32, arg_3: i32) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-584f + arg_1)), 567f)), _wgslsmith_f_op_f32(min(-1141f, _wgslsmith_f_op_f32(f32(-1f) * -703f))), 359f);
    let var_1 = Struct_1(false, ~(~0u) >> ((_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.zy, vec2<u32>(22786u, 43810u), u_input.b.wz), vec2<u32>(u_input.c, 35925u) >> (vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u))) & 4294967295u) % 32u));
    var var_2 = vec2<bool>(true, arg_0.x <= _wgslsmith_mult_i32(-abs(38862i), firstTrailingBit(-u_input.a.x)));
    var var_3 = 495f <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1488f)), _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(146f))))))));
    global0 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(abs(arg_0.x), ~arg_3), ~u_input.a.x, firstTrailingBit(_wgslsmith_div_i32(arg_0.x, arg_3)));
    return u_input.a.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    let var_0 = arg_3;
    global1 = select(select(!select(arg_3, var_0, all(vec4<bool>(arg_0.x, false, global1.x, true))), vec3<bool>(func_2(), func_3(vec4<i32>(arg_1, arg_1, u_input.e, arg_1), 541f, 2380f, arg_1) < 1i, true), select(vec3<bool>(true, true, true), !select(arg_3, arg_3, arg_3), !(u_input.a.x == arg_1))), select(!vec3<bool>(arg_0.x, arg_3.x, true), !(!arg_0.wyx), false), !(!vec3<bool>(all(global1.zz), arg_0.x, any(vec2<bool>(global1.x, var_0.x)))));
    global1 = !(!vec3<bool>(arg_2.a, !(u_input.a.x >= arg_1), true));
    var var_1 = Struct_1(false, ~select(_wgslsmith_div_u32(~0u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), ~max(41184u, 0u), arg_2.a));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-364f, -1134f, -1642f, -160f))), vec4<f32>(155f, -213f, 1184f, 238f), !arg_0)))), vec4<f32>(529f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-576f))), 1f, 1f)));
    return reverseBits(select(1u & ~(~var_1.b), _wgslsmith_mult_u32(12830u, ~(~arg_2.b)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -468f;
    global1 = vec3<bool>(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-990f - -249f), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-207f + 1053f))) >= -481f, global1.x);
    var var_1 = Struct_1(!global1.x, func_1(!vec4<bool>(global1.x, global1.x, all(vec4<bool>(true, true, global1.x, true)), true), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(53142i, 0i), vec2<i32>(4601i, -46984i)), vec2<i32>(u_input.e, 2147483647i)), Struct_1(var_0 <= 1f, ~abs(u_input.c)), vec3<bool>(true, !global1.x || global1.x, any(select(vec4<bool>(false, false, true, global1.x), vec4<bool>(global1.x, false, false, global1.x), global1.x)))));
    global0 = _wgslsmith_div_i32(1i, _wgslsmith_sub_i32(32991i, ~(_wgslsmith_sub_i32(u_input.a.x, u_input.e) << ((u_input.c ^ 16103u) % 32u))));
    let var_2 = Struct_1(true, var_1.b);
    let var_3 = Struct_1(false, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(22476u, var_1.b, firstLeadingBit(var_2.b)));
}

