struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_1 = Struct_1(892f, vec3<i32>(i32(-2147483648), -1i, -5650i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    global1 = arg_1;
    var var_0 = ~(~vec2<u32>(1u, ~22454u));
    var var_1 = Struct_1(arg_1.a, global1.b);
    let var_2 = any(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))));
    var var_3 = vec3<bool>(true, true, true);
    return 676f;
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_2(~(~2147483647i), Struct_1(_wgslsmith_f_op_f32(901f + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1241f, arg_0)), Struct_1(-162f, global0.www)))), vec3<i32>(u_input.a, global1.b.x, u_input.a & global1.b.x)), vec2<u32>(~(~4294967295u), arg_1));
    global1 = var_0.b;
    global0 = firstTrailingBit(~vec4<i32>(~(-27433i), min(abs(global1.b.x), global0.x), 2147483647i, -1i));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-771f * var_0.b.a), _wgslsmith_f_op_f32(f32(-1f) * -119f))), -1649f, 1901f, _wgslsmith_f_op_f32(var_0.b.a - _wgslsmith_f_op_f32(select(537f, -1186f, false)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a, -637f, -601f, arg_0))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, -438f, arg_0, arg_0)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1617f, global1.a, -123f) - vec4<f32>(-968f, arg_0, -1403f, global1.a)) + vec4<f32>(global1.a, var_0.b.a, -412f, 571f)))));
    var var_2 = Struct_2(-global0.x, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) + _wgslsmith_div_f32(-369f, arg_0)))), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, var_0.a), abs(vec3<i32>(0i, var_0.a, u_input.a))), var_0.b.b)), vec2<u32>(abs(1u) | _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_1, 0u, 72882u), vec3<u32>(1u, arg_1, 34864u), vec3<bool>(true, false, false)), vec3<u32>(45792u, arg_1, var_0.c.x)), arg_1));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-501f, global1.a)), var_2.b.a, false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(266f, global1.a))), global0.yzx);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global1 = func_2(-413f, 14282u);
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-182f)))))));
    let var_1 = Struct_2(-6554i, arg_0, countOneBits(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(0u, 4294967295u)), countOneBits(vec2<u32>(0u, 1u)))));
    global0 = vec4<i32>(1i, var_1.a, 30094i, global1.b.x) << (~vec4<u32>(_wgslsmith_mult_u32(var_1.c.x, 88761u), ~firstTrailingBit(var_1.c.x), _wgslsmith_div_u32(var_1.c.x, 71521u), firstLeadingBit(~27121u)) % vec4<u32>(32u));
    var var_2 = func_2(_wgslsmith_f_op_f32(-var_1.b.a), 52953u);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-751f + 294f) - _wgslsmith_f_op_f32(global1.a + -1420f))), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(global0.x, 1i, u_input.a)), global0.yww), vec3<i32>(75665i, 1i, -1i ^ global1.b.x))));
    let var_1 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(func_3(vec2<f32>(_wgslsmith_div_f32(-1054f, -1166f), _wgslsmith_f_op_f32(f32(-1f) * -253f)), func_1(func_1(var_0.b).b).b)), ~firstLeadingBit(var_0.c.x)).a + _wgslsmith_div_f32(-687f, global1.a));
    let var_2 = var_0.c.x;
    var var_3 = select(!vec3<bool>(false, 1i == var_0.a, true), vec3<bool>(false, false, all(vec4<bool>(true, false, true, true))), !all(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(false, true, true, true))));
    global1 = func_1(func_1(Struct_1(2137f, var_0.b.b)).b).b;
    var_3 = select(!select(vec3<bool>(any(vec4<bool>(var_3.x, var_3.x, false, var_3.x)), true, false), !(!vec3<bool>(var_3.x, false, var_3.x)), (var_3.x != false) || (var_1 < -1064f)), !vec3<bool>(true || all(vec3<bool>(true, true, true)), !var_3.x | var_3.x, true), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(func_1(Struct_1(_wgslsmith_f_op_f32(step(-604f, var_0.b.a)), vec3<i32>(var_0.b.b.x, 32352i, global0.x))).b).b.a, 56488u, _wgslsmith_f_op_f32(global1.a * -1219f), vec4<u32>(firstTrailingBit(var_2), ~var_2, var_0.c.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(reverseBits(7863u), var_2), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u) ^ var_0.c, ~vec2<u32>(30326u, 18807u)), var_0.c.x)));
}

