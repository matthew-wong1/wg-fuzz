struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

var<private> global1: f32;

var<private> global2: u32 = 39652u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> u32 {
    let var_0 = Struct_3(~_wgslsmith_sub_i32(-2147483647i, _wgslsmith_div_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-52265i, u_input.b.x, 21086i), u_input.b))), u_input.b.x);
    global2 = firstLeadingBit(1u);
    let var_1 = 0u;
    let var_2 = var_0;
    var var_3 = true;
    return ~var_1;
}

fn func_1() -> f32 {
    global2 = min(~(~1u), 49169u);
    let var_0 = 1i;
    var var_1 = Struct_1(true);
    var var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, abs(4294967295u), func_2()), vec3<u32>(_wgslsmith_sub_u32(~1u, ~28980u), 10358u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(16804u, 0u, 936u)))), vec3<u32>((firstLeadingBit(4294967295u) | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(1u, 0u, 4294967295u))) >> (0u % 32u), ~(~1u), 1u));
    var var_3 = -1000f;
    return 1225f;
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global0 = array<vec2<bool>, 4>();
    global1 = -356f;
    let var_0 = arg_0;
    global2 = firstLeadingBit(~(~1u)) << (abs(1u) % 32u);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1260f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(635f)), -636f))));
    return vec3<bool>(arg_0.a && (_wgslsmith_f_op_f32(f32(-1f) * -900f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-690f)))), var_0.a, ~(~abs(0u)) != ~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 77047u), countOneBits(vec2<u32>(79802u, 24510u))));
}

fn func_4(arg_0: vec3<bool>) -> f32 {
    global1 = _wgslsmith_f_op_f32(func_1());
    global0 = array<vec2<bool>, 4>();
    global1 = _wgslsmith_f_op_f32(min(-118f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1930f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(121f)))))));
    global2 = _wgslsmith_sub_u32(~1u, 1u);
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-236f, 1654f)) - _wgslsmith_f_op_f32(2191f + 169f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1560f - 1000f), _wgslsmith_f_op_f32(min(1000f, -253f)))))), ((!arg_0.x || arg_0.x) | false) && true);
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 183f;
    let var_0 = Struct_1(true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1()), 478f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2958f))))));
    var var_2 = var_1;
    global2 = 4294967295u;
    var var_3 = _wgslsmith_f_op_f32(func_4(func_3(var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, -683f);
}

