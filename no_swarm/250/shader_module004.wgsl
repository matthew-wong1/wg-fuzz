struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    global0 = u_input.e;
    global0 = u_input.b.x << (u_input.e % 32u);
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -124f);
    let var_1 = abs(u_input.b.x);
    var var_2 = Struct_1(4294967295u);
    return _wgslsmith_div_i32(_wgslsmith_sub_i32(1i, u_input.d), 1i);
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_3 {
    let var_0 = ~vec4<u32>(~min(arg_0, 0u), u_input.e, ~_wgslsmith_add_u32(0u, u_input.b.x), u_input.b.x) & firstLeadingBit(~u_input.b);
    var var_1 = Struct_4(Struct_3(true, true, -324f, func_3(Struct_3(false, false, _wgslsmith_f_op_f32(431f * 1567f), -16644i))));
    let var_2 = -_wgslsmith_mod_i32(var_1.a.d, 5943i);
    var_1 = Struct_4(var_1.a);
    var var_3 = _wgslsmith_f_op_f32(var_1.a.c * 1074f);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.c))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c) * _wgslsmith_f_op_f32(trunc(603f))))), select(!(arg_1 > ~33477i), all(select(select(vec4<bool>(var_1.a.a, false, false, var_1.a.b), vec4<bool>(var_1.a.a, var_1.a.a, var_1.a.b, var_1.a.a), true), !vec4<bool>(false, true, var_1.a.a, var_1.a.a), vec4<bool>(true, true, true, true))), all(select(!vec2<bool>(var_1.a.b, var_1.a.b), select(vec2<bool>(true, var_1.a.b), vec2<bool>(false, false), vec2<bool>(true, var_1.a.b)), 617f < var_1.a.c))), 1110f, -max(-_wgslsmith_mult_i32(-17761i, -1i), var_2));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> u32 {
    global0 = 0u;
    global0 = 1u;
    var var_0 = 36618u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(705f)), func_2(arg_3.a.a, -27601i).c, _wgslsmith_div_f32(133f, arg_1.c), _wgslsmith_div_f32(arg_0.x, -209f)))));
    var var_2 = arg_3.a;
    return firstTrailingBit(46583u);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: bool, arg_3: f32) -> Struct_3 {
    global0 = u_input.e;
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, _wgslsmith_f_op_f32(-949f + _wgslsmith_f_op_f32(arg_3 - arg_3))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1499f, arg_3) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_3, arg_3), vec2<f32>(arg_3, -966f))))), func_2(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), -8290i), arg_2, Struct_2(Struct_1(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.b.x))), Struct_1(u_input.e)));
    global0 = ~u_input.e;
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(max(0u, u_input.a), 8849u), ~u_input.b.yy), ~66236u), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), ~u_input.b.x, 25469u, _wgslsmith_mod_u32(u_input.b.x, 1u)), vec4<u32>(~u_input.b.x, u_input.b.x, _wgslsmith_mod_u32(u_input.a, 4294967295u), u_input.e << (u_input.e % 32u))), reverseBits(_wgslsmith_mult_u32(max(u_input.a, u_input.a), u_input.e))));
    return func_2(18585u, -_wgslsmith_dot_vec4_i32(min(~vec4<i32>(-25571i, -15236i, arg_0, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.d, arg_0, u_input.d), vec4<i32>(u_input.c, -1i, -2147483647i, -1i))), ~(-vec4<i32>(0i, u_input.c, 1i, 1i))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = vec3<bool>(arg_1.b, false, !all(vec3<bool>(func_2(u_input.b.x, u_input.c).b, all(vec4<bool>(arg_1.b, arg_1.b, true, false)), any(vec4<bool>(true, true, arg_1.b, true)))));
    let var_1 = Struct_1(abs(select(abs(~2748u), (u_input.a & 124080u) & ~0u, !any(var_0))));
    let var_2 = Struct_1(48925u);
    let var_3 = var_2;
    let var_4 = Struct_2(Struct_1(~_wgslsmith_div_u32(arg_0.x, ~arg_0.x)), var_3);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~u_input.a;
    let var_0 = vec2<bool>(true, true);
    let var_1 = ~(~1u);
    global0 = var_1;
    global0 = ~(var_1 ^ _wgslsmith_mod_u32(~var_1, u_input.b.x));
    var var_2 = Struct_4(func_5(~(vec2<u32>(0u, 51004u) & ~u_input.b.zx), func_1(u_input.c, select(select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(true, var_0.x, false, false), var_0.x), !vec4<bool>(false, var_0.x, var_0.x, var_0.x), true), var_0.x, _wgslsmith_f_op_f32(min(-696f, -1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_add_i32(_wgslsmith_sub_i32(var_2.a.d, func_1(var_2.a.d, vec4<bool>(var_2.a.b, false, true, var_0.x), true, var_2.a.c).d), 54849i) & -(~u_input.d));
}

