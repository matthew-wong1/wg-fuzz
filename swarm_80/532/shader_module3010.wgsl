struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = !(!arg_3.a.c.b.x);
    var_0 = arg_3.a.a.a < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-408f, _wgslsmith_f_op_f32(arg_3.a.c.a * -1292f))));
    var_0 = all(vec2<bool>(true, true));
    let var_1 = arg_3;
    var_0 = var_1.a.b.c.x;
    return vec2<u32>(77876u, 4599u);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1266f), 121f);
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1, var_1), u_input.a.zz), var_1 << (1u % 32u)), vec2<u32>(var_1, 4294967295u) & vec2<u32>(var_1 << (var_1 % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(17242u, u_input.a.x), func_3(u_input.c, u_input.e, -283f, Struct_3(Struct_2(Struct_1(-381f, vec3<bool>(true, false, false), vec4<bool>(true, true, false, false)), Struct_1(-1495f, vec3<bool>(false, true, false), vec4<bool>(true, false, true, false)), Struct_1(555f, vec3<bool>(true, false, true), vec4<bool>(false, true, true, false)), vec4<u32>(u_input.a.x, 0u, 4294967295u, 4294967295u)), u_input.c)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(398f, -701f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(609f * 1000f)))))) + _wgslsmith_f_op_f32(614f + 2259f));
    var var_3 = 1f;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -436f)), !(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false))), select(select(vec4<bool>(true, true, true, all(vec3<bool>(false, false, true))), vec4<bool>(true, true, true, true), true), vec4<bool>(!any(vec2<bool>(false, true)), select(true, true, true), all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true))), true), vec4<bool>(true, true, false, all(vec2<bool>(true, true)))));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(676f, _wgslsmith_f_op_f32(f32(-1f) * -124f))) - _wgslsmith_f_op_f32(select(arg_0.a.a.a, _wgslsmith_f_op_f32(-1277f + arg_0.a.c.a), arg_0.a.b.b.x || false))), _wgslsmith_f_op_f32(select(-1347f, 1000f, 1i < arg_0.b.x)), -2099f));
    return arg_0.a;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2709f)) + -235f), -1113f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_1 = func_4(Struct_3(Struct_2(Struct_1(370f, vec3<bool>(true, true, false), vec4<bool>(false, false, true, false)), func_2(), func_2(), vec4<u32>(26505u, func_3(vec4<i32>(-51430i, 2147483647i, u_input.c.x, 9397i), u_input.c.xx, 1043f, Struct_3(Struct_2(Struct_1(var_0, vec3<bool>(false, true, false), vec4<bool>(false, true, false, true)), Struct_1(var_0, vec3<bool>(false, false, true), vec4<bool>(true, false, true, true)), Struct_1(790f, vec3<bool>(true, false, true), vec4<bool>(true, false, false, false)), vec4<u32>(9368u, 53869u, 0u, u_input.a.x)), vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, 6840i))).x, ~u_input.a.x, max(27393u, u_input.a.x))), u_input.c), 16743u);
    var var_2 = vec2<bool>(!any(select(!vec3<bool>(false, var_1.a.c.x, var_1.a.b.x), !vec3<bool>(false, var_1.c.c.x, true), select(var_1.b.b, vec3<bool>(var_1.c.c.x, var_1.b.b.x, var_1.c.c.x), vec3<bool>(true, var_1.c.b.x, var_1.c.c.x)))), var_1.b.c.x);
    let var_3 = var_1.b.c;
    var_2 = var_3.wy;
    return _wgslsmith_f_op_f32(-var_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -1i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-777f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f) * _wgslsmith_f_op_f32(sign(1010f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-637f * 1000f), -604f)))));
    var var_2 = func_4(Struct_3(Struct_2(func_2(), Struct_1(_wgslsmith_f_op_f32(var_1.x - var_1.x), vec3<bool>(true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true))), func_2(), vec4<u32>(1u, _wgslsmith_div_u32(u_input.a.x, 933u), 4319u, 0u)), _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(20732i | u_input.d, -u_input.d, -97822i, 1i))), 0u).c;
    var var_3 = select(vec3<bool>(var_2.c.x, false, any(func_2().c.zy)), func_2().c.zyz, true);
    let var_4 = abs(~_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_sub_i32(-43275i & u_input.b.x, _wgslsmith_clamp_i32(-41297i, u_input.b.x, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(vec4<u32>(44081u, 4294967295u, 6403u, u_input.a.x) >> (vec4<u32>(u_input.a.x, 3072u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) ^ reverseBits(abs(vec4<u32>(1u, 102705u, 4294967295u, 0u)))), 14085u, _wgslsmith_f_op_f32(round(var_1.x)));
}

