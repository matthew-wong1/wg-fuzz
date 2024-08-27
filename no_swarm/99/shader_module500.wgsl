struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(-31736i, true, -181f), Struct_1(43892i, true, -132f), Struct_1(-10450i, false, -243f), Struct_1(i32(-2147483648), true, 474f), Struct_1(-1i, true, -2083f), Struct_1(-1i, false, 1184f), Struct_1(38061i, false, 304f), Struct_1(-6740i, true, 1000f), Struct_1(0i, false, -102f), Struct_1(9282i, true, 197f), Struct_1(1i, true, 1185f), Struct_1(-7588i, true, 293f), Struct_1(-31005i, false, -530f), Struct_1(1i, false, 1028f), Struct_1(1i, true, 1148f), Struct_1(1i, false, -1416f));

var<private> global3: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> vec3<f32> {
    global1 = Struct_1(_wgslsmith_div_i32(2721i, _wgslsmith_mult_i32(global1.a, min(min(-35998i, global1.a), ~global1.a))), any(select(select(!vec2<bool>(global1.b, global1.b), select(vec2<bool>(false, global1.b), vec2<bool>(false, global1.b), vec2<bool>(global1.b, global1.b)), select(vec2<bool>(global1.b, global1.b), vec2<bool>(true, global1.b), false)), vec2<bool>(global1.b, false), select(!vec2<bool>(global1.b, false), select(vec2<bool>(true, global1.b), vec2<bool>(global1.b, false), global1.b), all(vec2<bool>(global1.b, true))))), global1.c);
    let var_0 = global1.b;
    var var_1 = Struct_1(~global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - 1814f) < _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(abs(395f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1668f))), _wgslsmith_f_op_f32(-global1.c)))));
    let var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(min(~(~arg_0.x), ~u_input.b), ~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b, arg_0.x), vec3<u32>(u_input.a, u_input.b, arg_0.x)))), 5u)];
    var var_3 = global2[_wgslsmith_index_u32(countOneBits(reverseBits(14925u)), 16u)];
    return _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(arg_0.x, 24u)] - _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 24u)]));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3(select(firstTrailingBit(max(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(arg_0.x, arg_0.x)), ~arg_0.yy)), ~(~arg_0.zy), global1.b)));
    var var_1 = vec4<i32>(global1.a, -(~_wgslsmith_mult_i32(-759i, firstLeadingBit(arg_3))), 25590i, abs(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.a, arg_3, global1.a, -13873i), vec4<i32>(-25362i, -2147483647i, arg_3, -1i) ^ vec4<i32>(arg_3, arg_3, arg_3, global1.a)), _wgslsmith_mod_i32(-4953i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -8364i, global1.a, arg_3), vec4<i32>(-42414i, -2147483647i, global1.a, -56993i))))));
    global3 = array<vec4<bool>, 5>();
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x * arg_2.x)))), _wgslsmith_f_op_f32(trunc(global1.c))), _wgslsmith_f_op_f32(round(global1.c)));
    global3 = array<vec4<bool>, 5>();
    return !(!select(select(!vec3<bool>(global1.b, true, true), vec3<bool>(global1.b, global1.b, false), !global1.b), !vec3<bool>(global1.b, global1.b, true), select(!vec3<bool>(false, global1.b, true), select(vec3<bool>(global1.b, global1.b, false), vec3<bool>(false, global1.b, false), vec3<bool>(false, global1.b, global1.b)), vec3<bool>(true, true, true))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !(!func_2(abs(vec3<u32>(0u, 40391u, u_input.a)) ^ vec3<u32>(43963u, u_input.a, 20947u), ~(~vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.b)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(122f, 235f))), ~26455i));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 16>();
    var var_0 = vec3<u32>(24273u, u_input.b >> (~_wgslsmith_mult_u32(4294967295u, u_input.b) % 32u), u_input.a);
    global1 = func_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, u_input.a), u_input.a), 16u)]);
    let var_1 = !vec3<bool>(!(true || !global1.b), all(!vec3<bool>(true, global1.b, global1.b)), false);
    global2 = array<Struct_1, 16>();
    var_0 = max(_wgslsmith_add_vec3_u32(reverseBits(~(~vec3<u32>(4294967295u, 45261u, 1u))), vec3<u32>(49265u, _wgslsmith_mod_u32(~1u, var_0.x), 4249u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x >> (67083u % 32u), var_0.x, ~var_0.x) | (vec3<u32>(var_0.x, var_0.x, var_0.x) | abs(vec3<u32>(35124u, var_0.x, u_input.b))), ~vec3<u32>(firstLeadingBit(41118u), countOneBits(32789u), ~var_0.x), ~vec3<u32>(_wgslsmith_div_u32(17794u, 4294967295u), ~39542u, 90277u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, var_0.x)))) + vec3<f32>(_wgslsmith_f_op_f32(max(-330f, -761f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, global1.c)) + _wgslsmith_f_op_f32(f32(-1f) * -1442f)), -1130f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.c)), global1.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.c, 695f), vec2<f32>(1000f, 421f))), any(select(vec4<bool>(global1.b, false, true, global1.b), vec4<bool>(global1.b, global1.b, global1.b, var_1.x), vec4<bool>(var_1.x, true, false, global1.b))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, 1103f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(894f, global1.c)))))), global1.a, _wgslsmith_dot_vec3_i32((_wgslsmith_add_vec3_i32(vec3<i32>(global1.a, global1.a, 2147483647i), vec3<i32>(global1.a, global1.a, -57576i)) << (firstTrailingBit(vec3<u32>(4709u, 34653u, 27284u)) % vec3<u32>(32u))) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global1.a, global1.a, -1i), vec3<i32>(35395i, global1.a, global1.a)), vec3<i32>(76029i, global1.a, 68545i) ^ vec3<i32>(global1.a, global1.a, global1.a), ~vec3<i32>(-2147483647i, 48499i, 2147483647i)), -max(~vec3<i32>(0i, global1.a, global1.a), vec3<i32>(global1.a, 11262i, global1.a))));
}

