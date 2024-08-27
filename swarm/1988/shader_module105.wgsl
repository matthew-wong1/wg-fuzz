struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
    c: vec2<f32>,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(vec2<i32>(0i, 1i), Struct_1(vec2<u32>(4294967295u, 31969u), 124f)), vec4<bool>(false, true, true, false));

var<private> global1: array<i32, 17>;

var<private> global2: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    var var_0 = ~(~0u) != _wgslsmith_mult_u32(arg_0.x, ~1u);
    let var_1 = false;
    var var_2 = _wgslsmith_div_u32(global0.a.b.a.x, ~(~(~(~global0.a.b.a.x))));
    global0 = Struct_4(global0.a, vec4<bool>(global0.b.x, any(!(!global0.b.zy)), true, !all(global0.b)));
    return 19265i;
}

fn func_2() -> i32 {
    global0 = Struct_4(global0.a, global0.b);
    let var_0 = u_input.a;
    global1 = array<i32, 17>();
    var var_1 = -25562i;
    let var_2 = ~(~vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, countOneBits(global0.a.a.x)), global0.a.a.x));
    return func_3(vec2<u32>(51505u, global0.a.b.a.x));
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    global1 = array<i32, 17>();
    var var_0 = global0.b.x;
    let var_1 = _wgslsmith_add_i32(-2147483647i, func_2());
    global2 = array<vec3<bool>, 5>();
    global1 = array<i32, 17>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.b, 124f), -736f, -1318f, -1248f), vec4<f32>(global0.a.b.b, global0.a.b.b, _wgslsmith_f_op_f32(-231f * arg_0.b), _wgslsmith_f_op_f32(sign(arg_0.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 17>();
    let var_0 = true || global0.b.x;
    let var_1 = var_0;
    let var_2 = Struct_1(~global0.a.b.a, -2122f);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(var_2.a, var_2.b))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.b, -138f, -2116f, 696f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(114f, global0.a.b.b, global0.a.b.b, global0.a.b.b)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(121f, -289f, 271f, -255f), vec4<f32>(global0.a.b.b, -1266f, 311f, global0.a.b.b)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -181f)), 768f, global0.a.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -241f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.b, -599f)), global0.a.b.b))));
    var var_4 = Struct_3(vec2<i32>(25694i << (var_2.a.x % 32u), firstTrailingBit(u_input.b)) ^ reverseBits(~global0.a.a), global0.a.b);
    var_4 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~var_2.a.x)), abs(_wgslsmith_add_vec3_i32(-vec3<i32>(var_4.a.x, 4314i, u_input.a.x) & ~vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(var_2.a.x, 17u)], global1[_wgslsmith_index_u32(3958u, 17u)]), ~vec3<i32>(-2147483647i, -20588i, 41851i))), -1i, max(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 15655u, 0u), vec3<u32>(global0.a.b.a.x, global0.a.b.a.x, global0.a.b.a.x)) & vec3<u32>(0u, var_2.a.x, ~46200u), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(18349u, 1u, 4294967295u), global0.a.b.a.x ^ 64967u, var_2.a.x), ~abs(vec3<u32>(var_4.b.a.x, 1u, 63907u)))), ~vec4<u32>(global0.a.b.a.x, firstTrailingBit(var_2.a.x), global0.a.b.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.b.a.x, global0.a.b.a.x, 0u), vec3<u32>(62726u, 21006u, 4294967295u)) ^ global0.a.b.a.x));
}

