struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: bool;

var<private> global2: u32;

var<private> global3: f32 = 1000f;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> bool {
    var var_0 = ~(~(vec4<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(78560u, 133813u, u_input.a.x, 1u), vec4<u32>(u_input.d, 15784u, 1u, u_input.a.x)), 1u) & vec4<u32>(u_input.a.x, u_input.d, 26209u, u_input.a.x | u_input.a.x)));
    var var_1 = true;
    let var_2 = Struct_2(Struct_1(select(true, true, true) || (~u_input.b.x >= ~u_input.b.x)), Struct_1(false));
    global3 = _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x)))) + global0.x));
    global2 = u_input.c.x;
    return ~u_input.a.x < 28564u;
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: f32) -> vec4<u32> {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), 435f)) * 226f)), _wgslsmith_f_op_f32(1000f * arg_3));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(arg_1, vec2<f32>(_wgslsmith_div_f32(2215f, -1141f), _wgslsmith_f_op_f32(-arg_3))))) + _wgslsmith_f_op_vec2_f32(arg_1 + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -332f)))))));
    var var_0 = u_input.b.wy;
    var var_1 = Struct_2(Struct_1(any(vec2<bool>(true, true))), Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.c.x, u_input.a.x), vec4<u32>(u_input.d, 4294967295u, 75453u, u_input.d)) <= ~0u));
    var var_2 = Struct_2(var_1.a, Struct_1(!all(select(vec4<bool>(var_1.a.a, arg_0, arg_0, false), vec4<bool>(false, true, var_1.b.a, false), arg_0))));
    return _wgslsmith_mult_vec4_u32(~vec4<u32>(28788u, ~u_input.c.x, _wgslsmith_mod_u32(4294967295u, u_input.a.x), u_input.a.x) ^ vec4<u32>(u_input.d, 1u, _wgslsmith_mult_u32(1u | u_input.d, 0u), u_input.d), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, ~(~0u)), firstTrailingBit(68302u), ~_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.c.zy), u_input.a), countOneBits(u_input.c.x)));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: f32) -> f32 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(u_input.c, min(vec3<u32>(arg_1, 0u, 28056u), vec3<u32>(1u, 87668u, 0u))), arg_1), abs(vec3<u32>(arg_1, 1u, u_input.c.x))), ~select(43830u, u_input.c.x, !all(vec4<bool>(true, false, arg_0.x, arg_0.x))));
    var var_1 = u_input.b.x;
    var var_2 = Struct_1(arg_0.x);
    global2 = abs(var_0.x);
    let var_3 = _wgslsmith_div_vec4_u32(func_3(func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -106f) * vec2<f32>(-942f, arg_2))), vec4<i32>(-2147483647i, firstTrailingBit(u_input.b.x), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), _wgslsmith_mult_i32(2147483647i, 1i)), _wgslsmith_f_op_f32(-global0.x)) | countOneBits(~(~vec4<u32>(4294967295u, 55153u, arg_1, var_0.x))), ~(~(~countOneBits(vec4<u32>(1521u, 15442u, 12144u, u_input.d)))));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(1842f, arg_2), _wgslsmith_f_op_f32(trunc(global0.x)));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    return Struct_2(arg_2, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-170f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), true)));
    var var_1 = Struct_2(Struct_1(true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2349f, -360f, true)) - global0.x) < -1055f));
    var_0 = _wgslsmith_div_f32(global0.x, 1248f);
    let var_2 = ~vec2<u32>(u_input.a.x, u_input.d);
    var_1 = func_4(13979u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(vec3<bool>(var_1.b.a, false, var_1.a.a), u_input.a.x, global0.x)))), global0.x)), var_1.a);
    var var_3 = vec3<f32>(-572f, global0.x, -645f);
    let var_4 = Struct_3(reverseBits(0i), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(-21564i, abs(_wgslsmith_clamp_u32(~u_input.d, min(u_input.a.x >> (52387u % 32u), 0u >> (var_2.x % 32u)), var_2.x)), countOneBits((firstTrailingBit(vec4<u32>(1u, 4294967295u, 66662u, u_input.c.x)) | vec4<u32>(u_input.a.x, u_input.c.x, u_input.d, 4294967295u)) & _wgslsmith_div_vec4_u32(~vec4<u32>(10215u, u_input.a.x, 1u, var_2.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, u_input.d, 72062u, u_input.c.x), vec4<u32>(var_2.x, var_2.x, 4294967295u, 52941u)))));
}

