struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32>;

var<private> global1: array<vec2<u32>, 10>;

var<private> global2: f32 = 1350f;

var<private> global3: array<Struct_1, 7>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>) -> vec4<u32> {
    let var_0 = vec2<i32>(arg_0.x, arg_0.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-2321f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(706f + 1286f) + -2402f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), 1055f))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), _wgslsmith_f_op_f32(-var_1.x)))));
    var var_3 = Struct_1(select(!vec4<bool>(arg_0.x != arg_0.x, true, arg_0.x < 346i, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false)), vec4<bool>(!(321f <= var_2.x), all(vec4<bool>(true, true, true, true)), false, true)), all(!vec2<bool>(false, arg_0.x != var_0.x)), true);
    let var_4 = global3[_wgslsmith_index_u32(0u, 7u)];
    return countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(33881u, _wgslsmith_mult_u32(0u, arg_1.x)), _wgslsmith_mult_u32(arg_1.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), arg_1.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, u_input.a.x, 38653u), u_input.a.wwx), u_input.a.x)), _wgslsmith_clamp_vec4_u32(select(u_input.a, u_input.a, var_4.a), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 6627u, arg_1.x, 4294967295u), u_input.a, u_input.a), vec4<u32>(40326u, 14672u, arg_1.x, u_input.a.x) & u_input.a, !vec4<bool>(var_4.b, var_3.a.x, false, false)), vec4<u32>(abs(arg_1.x), 1u, 1u, ~31808u))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~(u_input.a.x & u_input.b.x) >> (u_input.b.x % 32u), ~1u, abs(~(~u_input.a.x))), global0[_wgslsmith_index_u32(u_input.b.x, 32u)]);
    let var_1 = _wgslsmith_div_vec4_u32(min(u_input.a, max(~vec4<u32>(u_input.b.x, 0u, var_0.x, 5108u), func_3(vec4<i32>(-1i, -2147483647i, 33832i, 73i), u_input.b))), u_input.a) >> ((~(~(~vec4<u32>(u_input.b.x, 120276u, var_0.x, u_input.b.x))) << (_wgslsmith_sub_vec4_u32(u_input.a, ~vec4<u32>(1u, 45730u, 28163u, u_input.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u));
    global1 = array<vec2<u32>, 10>();
    var var_2 = ~(-51863i);
    var_2 = _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_mult_i32(1i, i32(-1i) * -6858i), max(max(1i, 1i), 1i)), vec2<i32>(1i, 1i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1034f, _wgslsmith_f_op_f32(min(1315f, 1190f)), true))) + _wgslsmith_f_op_f32(-1000f - -1134f)));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(373f * -985f))) + _wgslsmith_f_op_f32(select(1364f, -848f, any(vec2<bool>(true, arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-1029f * -987f)))));
    global1 = array<vec2<u32>, 10>();
    var var_1 = _wgslsmith_mult_vec3_i32(~(~abs(vec3<i32>(2147483647i, 19996i, 8298i) >> (global0[_wgslsmith_index_u32(u_input.a.x, 32u)] % vec3<u32>(32u)))), vec3<i32>(1i, 1i, 1i));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) | (~(~(u_input.b.x >> (u_input.b.x % 32u))) & reverseBits(~(32423u << (u_input.b.x % 32u)))), 7u)];
    global1 = array<vec2<u32>, 10>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))) + 1394f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -446f;
    global1 = array<vec2<u32>, 10>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true)))));
    let var_0 = vec3<i32>(1i, 1i, 1i);
    global1 = array<vec2<u32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

