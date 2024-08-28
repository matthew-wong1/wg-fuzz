struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1>;

var<private> global1: array<vec3<f32>, 22>;

var<private> global2: array<vec3<f32>, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: i32) -> vec2<u32> {
    var var_0 = 1000f < _wgslsmith_f_op_f32(sign(611f));
    let var_1 = Struct_2(-449f);
    let var_2 = _wgslsmith_mod_u32(41673u ^ firstTrailingBit(~4294967295u), 4294967295u);
    let var_3 = var_2 & 49467u;
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a))));
    return ~(~_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2, 1u), vec2<u32>(11893u, var_3)) ^ vec2<u32>(0u, var_2), ~vec2<u32>(32592u, var_2)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> f32 {
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(3493u, u_input.c)), u_input.c), _wgslsmith_sub_u32(38400u, abs(1u) >> (0u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), -959f))));
    return _wgslsmith_f_op_f32(round(446f));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(func_2(-2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1349f + _wgslsmith_div_f32(1319f, -1010f)), _wgslsmith_f_op_f32(round(487f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_2(153f), true)))) - _wgslsmith_f_op_f32(floor(-146f)))));
    return Struct_3(_wgslsmith_add_u32(4294967295u, max(u_input.a.x, u_input.a.x)), var_0, _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-815f * var_0.b), 1082f)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_0.b)))), Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b - -732f), 1304f)))));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    global2 = array<vec3<f32>, 5>();
    global2 = array<vec3<f32>, 5>();
    let var_0 = abs(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, u_input.d, -6552i), max(vec3<i32>(-1i, u_input.d, -2147483647i), vec3<i32>(1i, -2147483647i, -29171i)) ^ reverseBits(vec3<i32>(-2147483647i, -2147483647i, u_input.b.x)))));
    global1 = array<vec3<f32>, 22>();
    global1 = array<vec3<f32>, 22>();
    return func_1().e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(func_1()));
    var var_1 = u_input.d | 0i;
    global2 = array<vec3<f32>, 5>();
    global1 = array<vec3<f32>, 22>();
    global0 = array<vec4<bool>, 1>();
    var_1 = u_input.d;
    global1 = array<vec3<f32>, 22>();
    global0 = array<vec4<bool>, 1>();
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

