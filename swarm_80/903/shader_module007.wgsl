struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<f32>) -> u32 {
    global0 = abs(u_input.b.x);
    var var_0 = Struct_3(Struct_1(!arg_0.a), _wgslsmith_mult_vec3_u32(~(firstLeadingBit(vec3<u32>(arg_1.x, arg_1.x, arg_1.x)) >> ((vec3<u32>(0u, 71696u, 1u) >> (vec3<u32>(4294967295u, 4294967295u, arg_1.x) % vec3<u32>(32u))) % vec3<u32>(32u))), countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(35300u, 12065u, arg_1.x), vec3<u32>(17951u, arg_1.x, arg_1.x)))), ~max(firstTrailingBit(arg_1.x), 79197u) | 11860u);
    let var_1 = vec3<f32>(_wgslsmith_div_f32(1890f, 167f), -1124f, 510f);
    var var_2 = Struct_2(arg_2.x);
    let var_3 = firstTrailingBit(44355u);
    return _wgslsmith_dot_vec2_u32(~arg_1, select(abs(vec2<u32>(var_3, _wgslsmith_add_u32(1u, arg_1.x))), vec2<u32>(arg_1.x, var_3 | var_0.c) ^ vec2<u32>(~arg_1.x, select(var_3, arg_1.x, var_0.a.a)), select(vec2<bool>(all(vec4<bool>(var_0.a.a, true, true, false)), all(vec4<bool>(true, arg_0.a, arg_0.a, false))), select(vec2<bool>(true, true), select(vec2<bool>(var_0.a.a, arg_0.a), vec2<bool>(false, arg_0.a), arg_0.a), vec2<bool>(true, true)), vec2<bool>(true, false || var_0.a.a))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec2<bool>) -> i32 {
    let var_0 = ~(arg_2.yxw & select(_wgslsmith_mod_vec3_u32(arg_2.xzx, vec3<u32>(arg_2.x, 0u, arg_2.x)) << (arg_2.xww % vec3<u32>(32u)), vec3<u32>(func_3(Struct_1(false), vec2<u32>(arg_2.x, 10111u), vec2<f32>(-1531f, -292f)), arg_2.x << (4294967295u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 0u), vec2<u32>(arg_2.x, arg_2.x))), arg_3.x));
    let var_1 = -(i32(-1i) * -1i) < _wgslsmith_dot_vec3_i32(max(u_input.c, arg_1), u_input.c);
    return -1i;
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    global1 = 0u;
    let var_0 = -firstTrailingBit(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, u_input.a), vec3<i32>(func_2(vec2<bool>(arg_0.a.a, false), u_input.c, vec4<u32>(arg_0.b.x, 7395u, arg_0.b.x, 0u), vec2<bool>(arg_0.a.a, false)), u_input.a >> (arg_0.c % 32u), -7253i)));
    var var_1 = select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1494f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1330f + -471f) - _wgslsmith_f_op_f32(f32(-1f) * -691f))), !arg_0.a.a, true);
    return arg_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> u32 {
    let var_0 = 1051f <= _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1137f), -1064f)) * _wgslsmith_f_op_f32(-arg_1.a)));
    global0 = ~(-(~u_input.a));
    let var_1 = -2147483647i;
    var var_2 = select(vec2<u32>(abs(_wgslsmith_add_u32(1u, arg_2)), arg_2), _wgslsmith_div_vec2_u32(select(~vec2<u32>(arg_2, arg_2), select(vec2<u32>(arg_2, 4294967295u), vec2<u32>(28037u, arg_2), vec2<bool>(arg_0.a, true)), 1i > var_1), vec2<u32>(1u, arg_2)), !(_wgslsmith_add_u32(19840u, arg_2) < _wgslsmith_mod_u32(arg_2, arg_2))) >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(~arg_2, ~29560u), max(~abs(vec2<u32>(1u, 12703u)), ~(~vec2<u32>(arg_2, arg_2))), ~firstLeadingBit(~vec2<u32>(arg_2, 1u))) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.a, arg_1.a), vec2<f32>(-688f, 127f)))) * vec2<f32>(_wgslsmith_f_op_f32(step(1434f, 1000f)), _wgslsmith_f_op_f32(arg_1.a + arg_1.a))) + vec2<f32>(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-886f)), _wgslsmith_f_op_f32(ceil(-959f)))))));
    return min(_wgslsmith_div_u32(_wgslsmith_sub_u32(~var_2.x, var_2.x) | ~1u, arg_2), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(true), select(vec3<u32>(~1u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(95263u, 0u), vec2<u32>(19997u, 0u)), 1u), ~1u), vec3<u32>(61896u, _wgslsmith_clamp_u32(27835u, 1u, reverseBits(1u)), 1u), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), ~(~(~40000u)));
    global1 = var_0.b.x;
    global1 = firstLeadingBit(max(countOneBits(var_0.b.x), ~31260u));
    let var_1 = all(vec4<bool>(!var_0.a.a & (441f == _wgslsmith_f_op_f32(floor(-2259f))), var_0.a.a, var_0.a.a, 0u != (~76420u ^ (var_0.b.x << (0u % 32u)))));
    var_0 = Struct_3(var_0.a, vec3<u32>(var_0.b.x, 8014u & var_0.b.x, _wgslsmith_div_u32(func_4(func_1(Struct_3(Struct_1(true), var_0.b, var_0.b.x)), Struct_2(486f), ~29067u), func_3(Struct_1(true), abs(var_0.b.zx), vec2<f32>(228f, -493f)))), var_0.b.x);
    global0 = 9521i;
    global1 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.yx << (~(countOneBits(var_0.b.zz) ^ var_0.b.xy) % vec2<u32>(32u)), ~u_input.c.zz, -1000f, _wgslsmith_clamp_i32(u_input.b.x, reverseBits(min(countOneBits(u_input.a), 0i)), _wgslsmith_mult_i32(2147483647i, u_input.b.x)));
}

