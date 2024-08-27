struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: bool;

var<private> global2: vec2<f32> = vec2<f32>(-217f, -1000f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = !(!vec3<bool>(!any(vec2<bool>(arg_3.a.a, true)), !arg_3.a.a, true));
    global0 = arg_1;
    global1 = any(select(select(vec2<bool>(!arg_2, false), !var_0.yz, vec2<bool>(all(vec3<bool>(var_0.x, arg_3.a.a, var_0.x)), select(true, var_0.x, false))), select(select(vec2<bool>(true, true), var_0.zx, var_0.zz), vec2<bool>(all(vec2<bool>(arg_2, var_0.x)), arg_2), all(!vec4<bool>(var_0.x, arg_2, arg_3.a.a, true))), var_0.x && true));
    global2 = vec2<f32>(_wgslsmith_div_f32(-1994f, -186f), -879f);
    var var_1 = Struct_4(vec2<bool>(true, true));
    return ~u_input.a;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: vec3<u32>) -> vec3<u32> {
    global1 = select(!(!arg_0), true, global2.x > -408f);
    var var_0 = arg_0;
    var var_1 = select(select(arg_2, !arg_2, !(~u_input.a < func_3(vec3<u32>(1u, 22870u, 21527u), Struct_5(arg_1.x), arg_0, Struct_2(Struct_1(arg_2.x, vec2<f32>(global2.x, global2.x), arg_3.x), Struct_1(arg_2.x, vec2<f32>(global2.x, 1468f), u_input.a))))), !select(select(vec4<bool>(false, true, arg_2.x, arg_2.x), arg_2, any(vec2<bool>(arg_0, arg_2.x))), !vec4<bool>(arg_2.x, arg_2.x, arg_0, arg_0), select(!arg_2, vec4<bool>(true, true, true, true), arg_2)), true);
    var var_2 = ~arg_3.x;
    var var_3 = arg_3.zz;
    return arg_3 & vec3<u32>(1u, arg_3.x, arg_3.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_4) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1486f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, arg_1) - vec2<f32>(arg_1, arg_1))))));
    var var_0 = Struct_2(Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -553f), arg_1), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.a, 1u), arg_0.xy, false), arg_0.yy)), Struct_1(true, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global2.x, -186f)), -263f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 1009f))), ~(arg_0.x << (arg_0.x % 32u))));
    global1 = var_0.a.a && all(vec4<bool>(arg_2.a.x, all(vec2<bool>(false, false)), var_0.b.a, _wgslsmith_add_i32(2147483647i, global0.a) < -u_input.b.x));
    global1 = !(~(~(u_input.a >> (arg_0.x % 32u))) <= 1u);
    var var_1 = _wgslsmith_sub_i32(global0.a, _wgslsmith_mult_i32((i32(-1i) * -2147483647i) & -u_input.b.x, u_input.b.x | firstTrailingBit(14606i)) | ((-9066i << (0u % 32u)) >> (func_3(~vec3<u32>(14993u, u_input.a, arg_0.x), Struct_5(-1i), !var_0.a.a, Struct_2(var_0.b, var_0.a)) % 32u)));
    return Struct_2(var_0.b, var_0.b);
}

fn func_1(arg_0: vec2<u32>) -> vec3<u32> {
    let var_0 = func_4(func_2(true, ~reverseBits(vec2<i32>(-5741i, 1i)), vec4<bool>(true, true, true, true), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, 67042u, u_input.a), vec3<u32>(55389u, 4511u, 43780u) | vec3<u32>(4294967295u, arg_0.x, 18036u))), global2.x, Struct_4(vec2<bool>(~u_input.a < _wgslsmith_clamp_u32(0u, 43281u, 47094u), _wgslsmith_mult_i32(u_input.b.x, -2147483647i) > _wgslsmith_sub_i32(-10951i, u_input.b.x))));
    global0 = Struct_5(-19253i);
    let var_1 = true;
    global0 = Struct_5(u_input.b.x);
    let var_2 = Struct_2(Struct_1(var_1, vec2<f32>(_wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(-var_0.b.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b.x) - 210f)), ~(~arg_0.x)), Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) - _wgslsmith_f_op_f32(ceil(global2.x))), -974f), u_input.a));
    return vec3<u32>(var_0.a.c, abs(max(_wgslsmith_add_u32(var_2.a.c, ~1u), ~(~var_2.b.c))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(_wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.a, firstTrailingBit(38666u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 100559u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 22994u), vec2<u32>(u_input.a, u_input.a)))));
    global0 = Struct_5(1i);
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) * vec2<f32>(458f, -429f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-677f, -391f), vec2<f32>(2004f, 1771f))))) + vec2<f32>(_wgslsmith_f_op_f32(-1459f * _wgslsmith_f_op_f32(-global2.x)), global2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_4(vec3<u32>(var_0.x, var_0.x, 1u), global2.x, Struct_4(vec2<bool>(false, false))).b.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2081f, -317f)))))));
    var var_1 = ~(1u ^ (var_0.x ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a, u_input.a, var_0.x), max(vec4<u32>(var_0.x, u_input.a, 0u, 19272u), vec4<u32>(72977u, 4294967295u, u_input.a, u_input.a)))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1219f * global2.x), _wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(global2.x + -778f), 2074f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(f32(-1f) * -1285f)) + vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(-279f)), _wgslsmith_f_op_f32(global2.x - -505f), -1027f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, global2.x, 576f, -1000f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.x + -901f), _wgslsmith_f_op_f32(min(global2.x, 794f)), _wgslsmith_div_f32(global2.x, global2.x), global2.x))));
    let var_3 = Struct_4(select(vec2<bool>(!(597f > var_2.x), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, true), -61486i <= u_input.b.x), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), false), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), !any(vec4<bool>(false, false, false, false)))));
    var var_4 = var_3;
    let var_5 = ~func_3(func_1(var_0.zx), Struct_5(2147483647i), var_2.x < _wgslsmith_f_op_f32(1843f - _wgslsmith_f_op_f32(-global2.x)), func_4(_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.x, var_0.x) << (var_0 % vec3<u32>(32u)), var_0 | var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - -2495f), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1944f, global2.x, global2.x, var_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-822f, var_2.x, -1233f, -120f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(543f, _wgslsmith_f_op_f32(floor(-557f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(832f)) + -288f))) - 1596f), var_0);
}

