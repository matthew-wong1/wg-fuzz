struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, 1406f, -759f, -254f);

var<private> global1: Struct_4 = Struct_4(Struct_3(4294967295u, true, Struct_1(true, -1i, i32(-2147483648)), -2212f), vec2<u32>(3482u, 1u), -892f, Struct_1(false, 72669i, 2147483647i));

var<private> global2: array<vec4<bool>, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<bool>) -> vec2<u32> {
    return firstLeadingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(global1.b.x | arg_0.a.x, arg_0.a.x), ~vec2<u32>(_wgslsmith_mod_u32(global1.a.a, 0u), 0u)));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global2 = array<vec4<bool>, 6>();
    var var_0 = global1.a.c.c;
    let var_1 = !(-u_input.a.x <= 2147483647i);
    global2 = array<vec4<bool>, 6>();
    let var_2 = arg_0.b;
    return Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.a.a, global1.a.a), _wgslsmith_sub_vec2_u32(~func_3(Struct_2(global1.b), Struct_4(Struct_3(29996u, false, arg_0, 2404f), global1.b, -848f, Struct_1(false, -2147483647i, var_2)), vec3<bool>(false, global1.a.c.a, var_1)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.b.x, global1.a.a), vec2<u32>(global1.b.x, global1.b.x), global1.b) ^ _wgslsmith_mult_vec2_u32(global1.b, vec2<u32>(0u, global1.b.x)))));
}

fn func_1() -> Struct_2 {
    let var_0 = global1.b.x;
    var var_1 = true;
    var var_2 = Struct_4(global1.a, global1.b, _wgslsmith_div_f32(global0.x, 936f), global1.a.c);
    let var_3 = _wgslsmith_sub_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.a.a, 18897u, 51029u, var_2.b.x), vec4<u32>(global1.a.a, global1.b.x, 0u, 1u)), _wgslsmith_mult_u32(76388u & global1.a.a, ~global1.a.a)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(41741u, var_2.a.a, global1.a.a, var_2.b.x) << (vec4<u32>(global1.b.x, 83595u, 40752u, 52640u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(var_2.a.a, var_2.b.x, 0u, 11938u))) & 0u, 13762u));
    var var_4 = any(vec2<bool>(any(vec2<bool>(true, true)), false));
    return func_2(var_2.d);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_3 {
    global1 = Struct_4(global1.a, vec2<u32>(59489u, ~40407u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(260f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x)))) + _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(step(-1182f, _wgslsmith_f_op_f32(global1.a.d * arg_1.x))))), Struct_1(global1.d.a, 19777i, countOneBits(1i)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, -515f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1564f, -608f))), vec2<f32>(331f, arg_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_1.x))))));
    var var_1 = -2147483647i;
    var_1 = global1.d.c;
    var var_2 = arg_3;
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_4(Struct_2(firstTrailingBit(global1.b) ^ (global1.b ^ global1.b)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))), vec4<bool>(false, false, global1.a.d <= _wgslsmith_f_op_f32(-global0.x), true), func_1()), vec2<u32>(1u, global1.b.x), _wgslsmith_f_op_f32(ceil(global0.x)), global1.d);
    global2 = array<vec4<bool>, 6>();
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(global0.yw)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-var_0.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(499f, global1.a.d))))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.d - global1.a.d) - _wgslsmith_div_f32(global1.a.d, 235f))))), !vec2<bool>(true, _wgslsmith_f_op_f32(-var_0.a.d) < _wgslsmith_f_op_f32(step(1332f, global1.a.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec4<i32>(-u_input.a.x, 10689i, 1i, 34041i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(var_1.x * global0.x)), -955f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.d, var_1.x, var_0.a.b))))));
}

